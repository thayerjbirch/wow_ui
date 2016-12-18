--[[
	ScrollSheet
	Version: 7.0.3 (<%codename%>)
	Revision: $Id: ScrollSheet.lua 406 2016-07-31 13:26:09Z brykrys $
	URL: http://auctioneeraddon.com/dl/

	License:
		This library is free software; you can redistribute it and/or
		modify it under the terms of the GNU Lesser General Public
		License as published by the Free Software Foundation; either
		version 2.1 of the License, or (at your option) any later version.

		This library is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
		Lesser General Public License for more details.

		You should have received a copy of the GNU Lesser General Public
		License along with this library; if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor,
		Boston, MA  02110-1301  USA

	Additional:
		Regardless of any other conditions, you may freely use this code
		within the World of Warcraft game client.
--]]

local LIBRARY_VERSION_MAJOR = "ScrollSheet"
local LIBRARY_VERSION_MINOR = 22
local lib = LibStub:NewLibrary(LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR)
if not lib then return end

LibStub("LibRevision"):Set("$URL: http://svn.norganna.org/libs/trunk/Configator/ScrollSheet.lua $","$Rev: 406 $","5.1.DEV.", 'auctioneer', 'libs')

local GSC_GOLD="ffd100"
local GSC_SILVER="e6e6e6"
local GSC_COPPER="c8602c"
local GSC_RED = "ff0000"

local GSC_3 = "|cff"..GSC_GOLD.."%d|cff000000.|cff"..GSC_SILVER.."%02d|cff000000.|cff"..GSC_COPPER.."%02d|r"
local GSC_2 = "|cff"..GSC_SILVER.."%d|cff000000.|cff"..GSC_COPPER.."%02d|r"
local GSC_1 = "|cff"..GSC_COPPER.."%d|r"

local GSC_3N = "|cff"..GSC_RED.."(|cff"..GSC_GOLD.."%d|cff000000.|cff"..GSC_SILVER.."%02d|cff000000.|cff"..GSC_COPPER.."%02d|cff"..GSC_RED..")|r"
local GSC_2N = "|cff"..GSC_RED.."(|cff"..GSC_SILVER.."%d|cff000000.|cff"..GSC_COPPER.."%02d|cff"..GSC_RED..")|r"
local GSC_1N = "|cff"..GSC_RED.."(|cff"..GSC_COPPER.."%d|cff"..GSC_RED..")|r"

-- local iconpath = "Interface\\MoneyFrame\\UI-"
-- local goldicon = "%d|T"..iconpath.."GoldIcon:0|t"
-- local silvericon = "%s|T"..iconpath.."SilverIcon:0|t"
-- local coppericon = "%s|T"..iconpath.."CopperIcon:0|t"

-- Table management functions:
local function replicate(source, depth, history)
	if type(source) ~= "table" then return source end
	assert(depth==nil or tonumber(depth), "Unknown depth: " .. tostring(depth))
	if not depth then depth = 0 history = {} end
	assert(history, "Have depth but without history")
	assert(depth < 100, "Structure is too deep")
	local dest = {} history[source] = dest
	for k, v in pairs(source) do
		if type(v) == "table" then
			if history[v] then dest[k] = history[v]
			else dest[k] = replicate(v, depth+1, history) end
		else dest[k] = v end
	end
	return dest
end
-- End table management functions

local function coins(money)
	local negative = false
	money = floor(tonumber(money) or 0)
	if money < 0 then
		money = - money
		negative = true
	end
	local g = floor(money / 10000)
	local s = floor(money % 10000 / 100)
	local c = money % 100

	if g > 0 then
		if negative then
			return format(GSC_3N, g, s, c)
		else
			return format(GSC_3, g, s, c)
		end
	elseif s > 0 then
		if negative then
			return format(GSC_2N, s, c)
		else
			return format(GSC_2, s, c)
		end
	else
		if negative then
			return format(GSC_1N, c)
		else
			return format(GSC_1, c)
		end
	end
	-- unused code for graphic coins, left here in case someone wants to develop it later
	-- if g > 0 then
		-- return goldicon:format(g)..silvericon:format("%02d"):format(s)..coppericon:format("%02d"):format(c)
	-- elseif s > 0  then
		-- return silvericon:format("%d"):format(s)..coppericon:format("%02d"):format(c)
	-- else
		-- return coppericon:format("%d"):format(c)
	-- end
end

local function calculateMaxScroll(self, w, height)
	-- calculate max scroll, based on current number of items in list, and current height of viewport panel (self)
	local sheet = self.sheet

	-- calculate visible rows: each row is height 14, label row is height 16
	local viewRows = floor((height - 16) / 14)
	if viewRows > sheet.maxRows then
		viewRows = sheet.maxRows
	end

	-- allow to scroll 1 beyond the last item, as a visual indicator of reaching the end
	local scroll = sheet.curRows - viewRows + 1
	if scroll < 0 then
		scroll = 0
	end
	self.vSize = scroll
end

local kit = {}


--[[
	Format: SetData(input, [inputStyle])
	Where:
		input = {
			{ cellValue, cellValue, ..., styleKey=styleData, ... },
			{ cellValue, cellValue, ..., styleKey=styleData, ... },
			...
		}
		inputStyle = {
			{ { styleKey=styleData, ... }, { styleKey=styleData, ... }, ... },
			{ { styleKey=styleData, ... }, { styleKey=styleData, ... }, ... },
			...
		}
		cellValue = value or { value, styleKey=styleData, ... }
		styleKey = (string) The style type that affects the cell in question.
		styleData = (any type) The data that is to be used by the renderer for this cell.

	Note:
		There are many ways to represent the style for a given cell.
]]

function kit:SetData(input, instyle)
	local sort = self.sort
	local n = #sort
	for i=n, 1, -1 do
		sort[i] = nil
	end

	local nRows = #input
	local nCols = self.hSize

	local data = self.data
	local style = self.style
	local n = #data

	-- Clean up existing data cells
	for i = n, 1, -1 do
		data[i] = nil
		style[i] = nil
	end

	-- Copy the data portion of the input table into the data table,
	-- and the style portion into the style table.
	local pos, content
	for i = 1, nRows do
		sort[i] = i -- Initialize sort table to natural order

		if input[i] then
			for k,v in pairs(input[i]) do
				if type(k) == "string" and type(v) == "table" and #v > 0 then
					style[pos][k] = replicate(v)
				end
			end
		end
		for j = 1, nCols do
			pos = (i-1)*nCols+j

			if input[i] and input[i][j] then
				content = input[i][j]				-- temporary, no need to replicate here
			else
				content = nil
			end
			if type(content) == "table" then
				data[pos] = replicate(content[1])		-- just in case, replicate it
				for k,v in pairs(content) do
					if type(k) == "string" then
						if not style[pos] then style[pos] = {} end
						style[pos][k] = replicate(v)
					end
				end
			else
				data[pos] = content or "NIL"		-- non-table, no need to replicate
			end

			if instyle and instyle[i] and instyle[i][j] and type(instyle[i][j]) == "table" then
				for k,v in pairs(instyle[i][j]) do
					if not style[pos] then style[pos] = {} end
					style[pos][k] = replicate(v)
				end
			end
		end
	end
	--flag for column rearrangement code to know when we have a fresh data table. Needs to be before self:PerformSort() or the flag is set to late
	self.newdata = true
	--reset to top, if requested
	if self.vScrollReset then
		self.panel.vScroll:SetValue(0)
	end
	-- set vertical scroll limits
	self.curRows = nRows
	calculateMaxScroll(self.panel, nil, self.panel:GetHeight())

	self:PerformSort()
end

--This function only enables the display of the selected row.  The row still gets selected, and kit:GetSelection() will still work
function kit:EnableSelect(enable)
	if enable then
		self.enableselect = true
	else
		self.enableselect = false
	end
end
--Generic function for getting data from any row. Will always return values in default column order
function kit:GetRowData(row)
	local selection = {}
	if not self.order then
		for i = 1, self.hSize do
			local pos = i + ((row-1)*self.hSize)
			selection[i] = self.data[pos]
		end
	else--reorginize data so the calling module gets them back in expected order
		for i = 1, self.hSize do
			local pos = i + ((row-1)*self.hSize)
			local name = self.order[i]
			local index = self.order[name][3]
			selection[index] = self.data[pos]
		end
	end
	return selection
end

--Used to get the user selected row. Use GetRowData for generic querys
function kit:GetSelection()
	local selection
	if self.selected then
		selection = self:GetRowData(self.selected)
	end
	return selection or {}
end

function kit:RowSelect(row, mouseButton)
	if mouseButton == "RightButton" then
		return
	end
	local selected
	if row then
		selected = row + math.floor(self.panel.vPos)
		if self.selected ~= self.sort[selected] then
			self.selected = self.sort[selected]
		else
			self.selected = nil
		end
	end

	for i = 1, #self.rows do
		self.rows[i]["highlight"]:SetAlpha(0)
	end
	if self.enableselect and self.selected then
		if not row then
			for i = 1, #self.sort do
				if self.sort[i] == self.selected then
					selected = i
				end
			end
			if selected then
				row = selected - math.floor(self.panel.vPos)
			end
		end
		if row and (row > 0) and (row <= #self.rows) then
			self.rows[row]["highlight"]:SetAlpha(.5)
		end
	end
end

function kit:ButtonClick(column, mouseButton)
	if mouseButton == "RightButton" then lib.moveColumn(self, column) return end

	if (self.curSort == column) then
		self.curDir = self.curDir * -1
	else
		self.curSort = column
		self.curDir = 1
		if self.labels[column]
		and self.labels[column].sort
		and self.labels[column].sort.DESCENDING
		then
			self.curDir = -1
		end
	end
	self:PerformSort()
end

local function sortDataSet(data, sort, width, column, dir)
	assert(column <= width)
	assert(dir == -1 or dir == 1)
	table.sort(sort, function(a,b)
		local aPos = (a-1)*width+column
		local bPos = (b-1)*width+column
		if dir < 0 then
			return (data[aPos] > data[bPos])
		end
		local dataA, dataB = data[aPos], data[bPos]
		return (dataA < dataB) or (dataA == dataB and a < b)
	end)
end

function kit:PerformSort()
	if not self.curSort then
		for i=1, #self.labels do
			if self.labels[i].sort and self.labels[i].sort.DEFAULT then
				self.curSort = i
				if self.labels[i].sort.DESCENDING then
					self.curDir = -1
				else
					self.curDir = 1
				end
			end
		end
	end
	if not self.curSort then
		self.curSort = 1
		self.curDir = 1
	end
	for i=1, #self.labels do -- Removes the previous Columns arrows before we create the new arrows
		self.labels[i].texture:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
		self.labels[i].sortTexture:Hide()
	end

	if self.curDir == 1 then
		self.labels[self.curSort].sortTexture:SetTexCoord(0,0.55,0.9,0.2)
		self.labels[self.curSort].sortTexture:SetVertexColor(1,0.2,0)
		self.labels[self.curSort].sortTexture:Show()
	elseif self.curDir == -1 then
		self.labels[self.curSort].sortTexture:SetTexCoord(0,0.55,0.2,0.9)
		self.labels[self.curSort].sortTexture:SetVertexColor(0.2,1,0)
		self.labels[self.curSort].sortTexture:Show()
	end

	-- Allow modules to use their own custom sorter
	-- The module can create a self.CustomSort() function that will provide any special needs. ie proper itemlink sorting
	if self.CustomSort then
		self.CustomSort(self.data, self.sort, self.hSize, self.curSort, self.curDir)
	else
		sortDataSet(self.data, self.sort, self.hSize, self.curSort, self.curDir)
	end
	lib.Processor("ColumnSort", self, nil, self.curSort, nil, nil, self.curDir )

	self.panel:Update()
end
-- if a scroll frame flags this as false we will not reset scroll position to 0,0 on new data renders
function kit:EnableVerticalScrollReset(enable)
	if enable then
		self.vScrollReset = true
	else
		self.vScrollReset = false
	end
end
--is stored order table valid
local function checkValidOrder(text, saved)
	for i,v in ipairs(saved) do
		if v == text then
			return true
		end
	end
	return false
end
--use stored order table if provided or create new order table
function kit:SetOrder(saved)
	if saved and type(saved) == "table" then
		local passed = false
		--check if # of entries match, fail immediately if they do not. Otherwise check each value
		if #saved[1] == #self.labels then
			for i,v in pairs(self.labels) do
				local text = v:GetText()
				--if unnamed column, create the null fake name
				if text == nil then text = "null "..v.button:GetID() end
				passed = checkValidOrder(text, saved[1])
				if not passed then
					break
				end
			end
		end
		--check that the stored data is valid for use and no changes to the original scrollsheet has occured due to upgrades
		if passed then
			self.order = saved[1]
			self.lastOrder = saved[2]
			for i, name in ipairs(self.order) do
				self.labels[i]:SetText(name)
				self.labels[i].button:SetWidth(self.order[name][4])
			end
			self:ChangeOrder() --apply saved order changes
		else
			self.order = nil --trash the saved table and start fresh
		end
	end
	if not self.order then
		self.order ={}
		self.lastOrder = {}
		for i,v in ipairs(self.labels) do
			local layout = self.rows[1][i].layout
			local justify = self.rows[1][i]:GetJustifyH()
			local name = v:GetText()
			if not name or name == "" then name = ("null "..i) v:SetText(name) end--Need to create a useful name for unnamed buttons used for "hidden" data
			self.order[name] = {layout, justify, v.button:GetID(), v.button:GetWidth() or 80}
			self.order[i] = name --used as a list of names to allow a column to smoothly be inserted
			self.lastOrder[name] = i  --Stores the "current" self.data changes so we know where to remap from after initial changes until a new data table is sent
		end
	end
end
--rearrange and set data based on column order
function kit:ChangeOrder()
	for i, name in ipairs(self.order) do
		self.labels[i]:SetText(name)
		self.labels[i].button:SetWidth(self.order[name][4])

		for index, cell in pairs(self.rows) do
			cell[i].layout = self.order[name][1]
			cell[i]:SetJustifyH(self.order[name][2])
			if self.order[name][1] == "TOOLTIP" then
				cell[i].button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
			elseif cell[i].button:GetHighlightTexture() then --if it had a highlight but is not tooltip type anymore nil it
				cell[i].button:SetHighlightTexture(nil)
			end
		end
	end
	self.rearrange = true
	self:Render()
end

local empty = {}
function kit:Render()
	local vPos = math.floor(self.panel.vPos)
	--local vSize = self.panel.vSize
	local hSize = self.hSize

	local rows = self.rows
	local data = self.data
	local sort = self.sort
	local style = self.style
	--if user has rearranged the columns we need to change data, style to match. Only done once per "fresh data, replaces internal stored data, style
	if (self.rearrange or self.newdata) and self.order then
		data, style = lib.dataToColumn(self, data, style)
		self.data = data
		self.style = style
		self:PerformSort()--sort our rearranged data
	end
	for i = 1, #rows do
		local rowNum = sort[vPos+i]
		local rowPos = nil
		if rowNum then rowPos = (rowNum-1)*hSize end

		local cells = rows[i]
		local direction, rowR, rowG, rowB, rowA1, rowA2 = "Horizontal", 1, 1, 1, 0, 0 --row level coloring used for gradiants
		for j = 1, hSize do
			local cell = cells[j]
			if rowPos then
				local pos = rowPos + j
				local text = data[pos] or ""
				local settings = style[pos] or empty
				local red,green,blue = 0.8,0.8,0.8

				if cell.layout == "COIN" then
					text = coins(data[pos])
				end

				if settings["textColor"] then
					red, green, blue = unpack(settings['textColor'])
				elseif settings["date"] then
					text = date(settings["date"], text)
				elseif settings["rowColor"] then
					rowR, rowG, rowB, rowA1, rowA2, direction = unpack(settings['rowColor'])
				end

				cell:SetTextColor(red,green,blue)
				cell:SetText(text)
				cell:Show()
			else
				cell:Hide()
			end
		end
		rows[i].colorTex:SetGradientAlpha(direction, rowR, rowG, rowB, rowA1, rowR, rowG, rowB, rowA2)--row color to apply
	end
	self:RowSelect()
end

local PanelScroller = LibStub:GetLibrary("PanelScroller")

function lib:Create(frame, layout, onEnter, onLeave, onClick, onResize, onSelect)
	local sheet
	local name = (frame:GetName() or "").."ScrollSheet"

	local id = 1
	while (_G[name..id]) do
		id = id + 1
	end
	name = name..id

	local parentHeight = frame:GetHeight()
	local content = CreateFrame("Frame", name.."Content", frame)
	content:SetHeight(parentHeight - 30)

	local panel = PanelScroller:Create(name.."ScrollPanel", frame)
	panel:SetPoint("TOPLEFT", frame, "TOPLEFT", 5,-5)
	panel:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -25,25)
	panel:SetScrollChild(content)
	panel:SetScrollBarVisible("VERTICAL","FAUX")
	panel.vSize = 0

	local totalWidth = 0;

	local labels = {}
	for i = 1, #layout do
		local button = CreateFrame("Button", nil, content)
		if i == 1 then
			button:SetPoint("TOPLEFT", content, "TOPLEFT", 5,0)
			totalWidth = totalWidth + 5
		else
			button:SetPoint("TOPLEFT", labels[i-1].button, "TOPRIGHT", 3,0)
			totalWidth = totalWidth + 3
		end

		local label = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
		label:SetText(layout[i][1])
		local colWidth = layout[i][3] or 30 --Never us a nil width, causes issues with overlay highlight

		totalWidth = totalWidth + colWidth
		button:SetWidth(colWidth)
		button:SetHeight(16)
		button:SetResizable(true)
		button:SetMaxResize(400, 16)
		button:SetMinResize(13, 16) --Makes the nice ... elipsies line up

		button:SetID(i)
		button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
		button:SetScript("OnMouseDown", function(self, ...) sheet:ButtonClick(self:GetID(), ...) end)

		local texture = content:CreateTexture(nil, "ARTWORK")
		texture:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
		texture:SetTexCoord(0.1, 0.8, 0, 1)
		texture:SetAllPoints(button)
		button.texture = texture

		local sortTexture = button:CreateTexture(nil, "ARTWORK")
		sortTexture:SetTexture("Interface\\Buttons\\UI-SortArrow")
		sortTexture:SetPoint("TOPRIGHT", button, "TOPRIGHT", 0,0)
		sortTexture:SetPoint("BOTTOM", button, "BOTTOM", 0,0)
		sortTexture:SetWidth(12)
		sortTexture:Hide()
		button.sortTexture = sortTexture

		local background = content:CreateTexture(nil, "ARTWORK")
		background:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
		background:SetTexCoord(0.2, 0.9, 0, 0.9)
		background:SetPoint("TOPLEFT", button, "BOTTOMLEFT", 0,0)
		background:SetPoint("TOPRIGHT", button, "BOTTOMRIGHT", 0,0)
		background:SetPoint("BOTTOM", content, "BOTTOM", 0,0)
		background:SetAlpha(0.2)

		--small button in the gap between lables allows resizing the button its anchored too
		--we use very small columns to store extra data thats not used in rendering. We dont want the player to be able to resize em
		local nub
		if colWidth > 1 then
			nub = CreateFrame("Button", nil, content)
			nub:SetPoint("TOPLEFT", button, "TOPRIGHT", 0,0)
			nub:SetHighlightTexture("Interface\\BUTTONS\\YELLOWORANGE64")
			nub:SetAlpha(0.5)
			nub:SetWidth(3)
			nub:SetHeight(content:GetHeight())
			nub:SetScript("OnEnter", function(self) self:LockHighlight() end)
			nub:SetScript("OnLeave", function(self) self:UnlockHighlight() end)
			--buttons lose the proper anchor when resized, havnt figured out why. So store and then reattach
			nub:SetScript("OnMouseDown", function() nub.point, nub.relativeTo, nub.relativePoint, nub.xOfs, nub.yOfs = button:GetPoint()  button:StartSizing() end )
			nub:SetScript("OnMouseUp", function() button:StopMovingOrSizing() button:SetPoint(nub.point, nub.relativeTo, nub.relativePoint, nub.xOfs, nub.yOfs) lib.Processor("ColumnWidthSet", sheet, button, i) end )
		end
		label:SetPoint("TOPLEFT", button, "TOPLEFT", 0,0)
		label:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0,0)
		label:SetJustifyH("CENTER")
		label:SetJustifyV("CENTER")
		label:SetTextColor(0.8,0.8,0.8)

		label.button = button
		label.texture = texture
		label.nub = nub
		label.sortTexture = sortTexture
		label.background = background
		label.sort = layout[i][4]
		labels[i] = label
	end
	totalWidth = totalWidth + 5

	local rows = {}
	local rowNum = 1
	local maxHeight = content:GetHeight()
	local totalHeight = 16
	while (totalHeight + 14 < maxHeight) do
		local row = {}
		for i = 1, #layout do
			local cell = content:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
			local button = CreateFrame("Button", nil, content)
			if rowNum == 1 then
				cell:SetPoint("TOPLEFT", labels[i], "BOTTOMLEFT", 0,0)
				cell:SetPoint("TOPRIGHT", labels[i], "BOTTOMRIGHT", 0,0)

				local row, index = rowNum, i
				button:SetHeight(totalHeight)
				button:SetAllPoints(cell)
				button:SetID(rowNum)
				button:SetScript("OnMouseDown", function(self, ...) sheet:RowSelect(self:GetID(), ...) lib.Processor("OnMouseDownCell", sheet, self, index, row, nil, ...) end)
				button:SetScript("OnClick", function(self, ...) lib.Processor("OnClickCell", sheet, self, index, row, nil, ...) end)
				button:SetScript("OnEnter", function(self, ...) lib.Processor("OnEnterCell", sheet, self, index, row, nil, ...) end)
				button:SetScript("OnLeave", function(self, ...) lib.Processor("OnLeaveCell", sheet, self, index, row, nil, ...) end)

				if (layout[i][2] == "TOOLTIP") then
					button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
				end
				cell.button = button --store in cell so we can refrence the button
			else
				cell:SetPoint("TOPLEFT", rows[rowNum-1][i], "BOTTOMLEFT", 0,0)
				cell:SetPoint("TOPRIGHT", rows[rowNum-1][i], "BOTTOMRIGHT", 0,0)

				local row, index = rowNum, i
				button:SetHeight(totalHeight)
				button:SetAllPoints(cell)
				button:SetID(rowNum)
				button:SetScript("OnMouseDown", function(self, ...) sheet:RowSelect(self:GetID(), ...) lib.Processor("OnMouseDownCell", sheet, self, index, row, nil, ...) end)
				button:SetScript("OnClick", function(self, ...) lib.Processor("OnClickCell", sheet, self, index, row, nil, ...) end)
				button:SetScript("OnEnter", function(self, ...) lib.Processor("OnEnterCell", sheet, self, index, row, nil, ...) end)
				button:SetScript("OnLeave", function(self, ...) lib.Processor("OnLeaveCell", sheet, self, index, row, nil, ...) end)

				if (layout[i][2] == "TOOLTIP") then
					button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
				end
				cell.button = button
			end

			cell:SetHeight(14)
			cell:SetJustifyV("TOP")
			if (layout[i][2] == "TEXT") then
				cell:SetJustifyH("LEFT")
			elseif (layout[i][2] == "TOOLTIP") then
				cell:SetJustifyH("LEFT")
			elseif (layout[i][2] == "INT") then
				cell:SetJustifyH("RIGHT")
			elseif (layout[i][2] == "COIN") then
				cell:SetJustifyH("RIGHT")
			end
			cell.layout = layout[i][2]
			cell:SetTextColor(0.9, 0.9, 0.9)
			row[i] = cell
		end
		--create a color texture for row color gradiants
		local colorTex = content:CreateTexture()
		colorTex:SetPoint("TOPLEFT", row[1], "TOPLEFT", 0,0)
		colorTex:SetPoint("BOTTOMRIGHT", row[#layout], "BOTTOMRIGHT", 0, 1)
		colorTex:SetColorTexture(1, 1, 1)
		row.colorTex = colorTex
		--create a highlight texture for row selection, replaces the per cell highlight system
		local highlight = content:CreateTexture()
		highlight:SetPoint("TOPLEFT", row[1], "TOPLEFT", 0,0)
		highlight:SetPoint("BOTTOMRIGHT", row[#layout], "BOTTOMRIGHT", 0, 1)
		highlight:SetAlpha(0)
		highlight:SetColorTexture(.8, .6, 0)
		row.highlight = highlight

		rows[rowNum] = row
		rowNum = rowNum + 1
		totalHeight = totalHeight + 14
	end

	content:SetWidth(totalWidth)
	panel:UpdateScrollChildRect()
	panel:Update()

	--Used for compatible with older versions that lacked the General Processor callback
	local compatibility = nil
	if onEnter or onLeave or onClick or onResize or onSelect then
		compatibility = {onEnter, onLeave, onClick, onResize, onSelect}
	end
	sheet = {
		name = name,
		content = content,
		panel = panel,
		labels = labels,
		rows = rows,
		hSize = #labels,
		maxRows = #rows,
		data = {},
		style = {},
		sort = {},
		vScrollReset = true,
		compatibility = compatibility,
		curRows = 0,
	}
	for k,v in pairs(kit) do
		sheet[k] = v
	end
	panel.callback = function() sheet:Render() end
	panel.sheet = sheet -- panel needs access to sheet values, particularly for vSize calculations
	panel:SetScript("OnSizeChanged", calculateMaxScroll)
	panel:ScrollSync()

	_G[name] = sheet

	return sheet
end

function lib.Processor(type, self, button, column, row, order, curDir, ...)
	--Use old callbacks for modules not using the general Processor
	if self.compatibility then
		if type == "OnEnterCell" and self.compatibility[1] then
				self.compatibility[1](button, row, column) --onEnter(button, row, index)
		elseif type == "OnLeaveCell" and self.compatibility[2] then
				self.compatibility[2](button, row, column) --onLeave(button, row, index)
		elseif type == "OnClickCell" and self.compatibility[3] then
				self.compatibility[3](button, row, column)--onClick(button, row, index)
		elseif type == "ColumnWidthSet" and self.compatibility[4] then
			self.compatibility[4](self, column, button:GetWidth() ) --onResize(self, column, )
		elseif type == "ColumnWidthReset" and self.compatibility[4] then
			self.compatibility[4](self, column, nil ) --onResize(self, column, )
		elseif type == "OnMouseDownCell" and self.compatibility[5] then
			self.compatibility[5]() --onSelect()
		end
		return
	end

	if not self.Processor then return end
	self.Processor( type, self, button, column, row, order, curDir, ...)
end

function  lib.moveColumn(self, column)
	if self and column then
		if IsControlKeyDown() then --reset column to default
			lib.Processor("ColumnWidthReset", self, self.labels[column].button, column)
		else
			local fakeButton = lib.fakeButton
			local width, height, text = self.labels[column]:GetWidth(), self.labels[column]:GetHeight(), self.labels[column]:GetText()
			fakeButton:SetWidth(width)
			fakeButton:SetHeight(height)
			fakeButton.Text:SetText(text)
			fakeButton:ClearAllPoints()
			fakeButton:SetPoint("BOTTOM", self.labels[column], "TOP", 0,5)
			fakeButton:Show()
			if not self.order then
				self:SetOrder()
			end
			self.moving = {["button"] = self.labels[column].button,  ["movingFrom"] = self.labels[column].button:GetID()}
			self.labels[column].button:SetScript("OnUpdate", function() lib.changeColumns(self, column, GetMouseFocus()) end)
		end
	end
end
function lib.changeColumns(self, column, button)
	local fakeButton = lib.fakeButton
	--if mouse down we store button we are moving  column too
	if IsMouseButtonDown() and self.moving then
		local ID = GetMouseFocus():GetID()
		if ID then
			fakeButton:ClearAllPoints()
			fakeButton:SetPoint("BOTTOM", self.labels[ID], "TOP", 0,5)
		end
		return
	end
	-- setup  column switch in here if these are not met then script will end
	if not IsMouseButtonDown() and self.moving and GetMouseFocus():GetID() > 0 then
		local movingTo = GetMouseFocus():GetID()
		local movingFrom = self.moving["movingFrom"]

		--switch buttons text: used to rearrange the (data, style)  tables to new column order
		local movingToText = self.labels[movingTo]:GetText()
		local movingFromText = self.labels[movingFrom]:GetText()
		table.remove(self.order, movingFrom)
		table.insert(self.order, movingTo, movingFromText)

		--Apply column specific data to rearrangement
		self:ChangeOrder()
	end
	--Only keep the order table if columns are not in default state, otherwise clear
	local default = true
	for i, name in ipairs(self.order) do
		if self.order[name][3] ~= i then
			default = false
		end
	end
	--Inform module of change
	if default then
		lib.Processor("ColumnOrder", self)
		self.order, self.lastOrder = nil, nil
	else
		lib.Processor("ColumnOrder", self, nil, nil, nil, {self.order, self.lastOrder})
	end
	--clear OnUpdate script
	self.moving["button"]:SetScript("OnUpdate", nil)
	self.moving = nil
	fakeButton:Hide()
end
--takes the data set sent by addon, rearranges it to match users changed column layout
function lib.dataToColumn(self, data, style)
	--[[take the self.data table  1, 2, 3 ....10000  serial table and break it into column segments of data. Each column's data is grouped then we simply rearrange column order and reserialize the table
	self.style is stored in a non sync  index array  where the index == the data index. Merge style into data array for rearrangement
	]]
	local temp = {}
	local step = 1
	for a, b in ipairs(data) do
		if not temp[step] then temp[step] = {} end
		table.insert(temp[step], {b, ["style"] = style[a]})
		step = step + 1
		if step == #self.labels + 1 then
			step = 1
		end
	end
	--if we have a new SetData() call we need to resync the self.lastOrder with self.order since we have self.data in teh starting layout
	if self.newdata then
		for i,v in ipairs(self.order) do
			self.lastOrder[v] = self.order[v][3]
		end
	end
	--rearrange to match current layout
	local newData = {}
	for i,v in ipairs(temp) do
		--need to find what data i should have
		local name = self.order[i]
		--this column is currenty maped to..
		local index = self.lastOrder[name]
		--insert this data into appropriate changed area
		newData[i] = temp[index]
		--store changes to self.data so we know where we maped it to
		self.lastOrder[name] = i
	end
	--Take the now rearranged data and reserialize the self.data and extract self.style to match new index positions
	data, style = {}, {}
	if #newData > 0 then --if no data to render skip it all
		for i = 1, #newData[1] do
			for index = 1, #newData do
				table.insert(data, newData[index][i][1])
				style[#data] = newData[index][i].style
			end
		end
	end
	--after we have changed the internal self.data we will not need to change unless a new  :SetData() or we change the column order again
	self.rearrange = false
	self.newdata = nil
	return data, style
end

--this is our fake button for column movements
local fakeButton = CreateFrame("Button", nil, UIParent)
fakeButton:SetMovable(true)
fakeButton:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
fakeButton:SetFrameStrata("DIALOG")
fakeButton:Show()

local texture = fakeButton:CreateTexture(nil, "ARTWORK")
texture:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
texture:SetTexCoord(0.1, 0.8, 0, 1)
texture:SetAllPoints(fakeButton)
fakeButton.texture = texture

fakeButton.Text = fakeButton:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
fakeButton.Text:SetPoint("BOTTOMRIGHT", fakeButton, "BOTTOMRIGHT", 0,0)
fakeButton.Text:SetJustifyH("CENTER")
fakeButton.Text:SetJustifyV("CENTER")
fakeButton.Text:SetTextColor(0.8,0.8,0.8)
fakeButton.Text:SetText("")

lib.fakeButton = fakeButton
