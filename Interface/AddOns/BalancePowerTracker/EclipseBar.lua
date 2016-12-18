--Eclipse Bar------------------------------------------------------------------------------
BalancePowerTracker = BalancePowerTracker or {} 
BalancePowerTracker.modules = BalancePowerTracker.modules or {}

local me = {};
me.loadedByDefault = true;
me.class = {}
me.class.DRUID = true
BalancePowerTracker.modules.eclipse_bar = me;
local getEnv,reset;
	
local UnitHasVehicleUI,IsWildBattle,GetShapeshiftFormID,UnitCastingInfo,UnitChannelInfo,GetTime,min = UnitHasVehicleUI,C_PetBattles.IsWildBattle,GetShapeshiftFormID,UnitCastingInfo,UnitChannelInfo,GetTime,min
local select,UnitBuff,ActionButton_HideOverlayGlow,ActionButton_ShowOverlayGlow = select,UnitBuff,ActionButton_HideOverlayGlow,ActionButton_ShowOverlayGlow

local spellName ={
	AC	= GetSpellInfo(127663),
	CA	= GetSpellInfo(112071),
}

--Frame visibility && alpha-------------------------
local showCustomTableDefaults={
	[CAT_FORM] = false, --cat
	[BEAR_FORM] = false, --bear
	[MOONKIN_FORM] = true, --moonkin
	[27] = false, -- swift flight form
	[29] = false, --flight form
	[3] = false, --travel
	[4] = false, --aquatic
	[0] = true, --humanoid
}
local function checkAddonVisibility(inVehicle,inPetBattle)
	if not me.frame then return end
	
	if inVehicle == nil then inVehicle = UnitHasVehicleUI("player") end
	if inPetBattle == nil then inPetBattle = IsWildBattle() end
	local hideInVehicle = getEnv("hideInVehicle",true)
	
	if (inVehicle and hideInVehicle) or inPetBattle then
		me.frame:Hide();
		return
	end

	local custom = getEnv("custom",showCustomTableDefaults)
	if (getEnv("showInAllStances",true) or custom[GetShapeshiftFormID() or 0]) and BalancePowerTracker.isBalance() then
		me.frame:Show();
	else
		me.frame:Hide();
	end
end
do
	me.events = {}
	function me.events.PLAYER_REGEN_ENABLED() --Set alpha to Out of combat alpha
		if me.frame then me.frame:SetAlpha(getEnv("alphaOOC",.6)); end
	end
	function me.events.PLAYER_REGEN_DISABLED() --Set alpha to Combat alpha
		if me.frame then me.frame:SetAlpha(getEnv("alpha",1)); end
	end
	function me.events.PET_BATTLE_OPENING_START() -- hide in pet combat
		checkAddonVisibility(nil,true)
	end
	function me.events.UNIT_ENTERED_VEHICLE(unitId) -- hide in vehicle
		if unitId=="player" then checkAddonVisibility() end
	end
	function me.events.UPDATE_SHAPESHIFT_FORM() -- hide/show background in forms
		checkAddonVisibility()
	end
	function me.events.PLAYER_SPECIALIZATION_CHANGED() -- hide/show changing talents
		checkAddonVisibility()
	end
	function me.events.PLAYER_LOGIN() -- check on login if it hasn't been done
		checkAddonVisibility()
	end
	function me.events.UNIT_EXITED_VEHICLE(unitId) -- show background out of vehicle
		if unitId=="player" then checkAddonVisibility(false,nil) end
	end
	function me.events.PET_BATTLE_CLOSE() -- show background out of pet battle
		checkAddonVisibility(nil,false)
	end
end
----------------------------------------------------

--Bar-----------------------------------------------
local barColorTable = {
	predictedSolarColor = { r =   1, g = .66, b =.16, a = 1},
	predictedLunarColor = { r = .12, g = .56, b =  1, a = 1},
	solarColor			= { r =   1, g = .55, b =  0, a = 1},
	lunarColor			= { r = .05, g = .21, b =.73, a = 1},
	textColor			= { r = 1, g = 1, b = 1, a = 1},
	backGroundColor		= { r = 0, g = 0, b = 0, a = 0},
	borderColor			= { r = 1, g = 1, b = 1, a = 1},
	none				= { r = 0, g = 0, b = 0, a = 0},
}
local function ColorBar(color,bar)
	if color == bar.colored then
		return
	end
	
	local bColor = getEnv(color,barColorTable[color])
	bar.colored = color;
	
	bar:SetGradientAlpha("VERTICAL",bColor.r, bColor.g, bColor.b, bColor.a, bColor.r, bColor.g, bColor.b, bColor.a)
end
local function ColorAllBar(e)
	if e > 0 then
		ColorBar("solarColor",me.lenergy)
		ColorBar("solarColor",me.senergy)
	elseif e < 0 then
		ColorBar("lunarColor",me.lenergy)
		ColorBar("lunarColor",me.senergy)
	else
		ColorBar("lunarColor",me.lenergy)
		ColorBar("solarColor",me.senergy)
	end
end
local function UpdateGainBar(normEnergyFrom,normEnergyTo,width,vertical,reachEnd,direction)
	if reachEnd then
		normEnergyTo = reachEnd * 0.005
	end
	
	if normEnergyFrom==normEnergyTo then
		me.benergy:Hide()
	else
		me.benergy:ClearAllPoints();
		
		if normEnergyFrom < normEnergyTo then
			if vertical then
				me.benergy:SetHeight((normEnergyTo-normEnergyFrom)*width);
				me.benergy:SetTexCoord(.5 + normEnergyTo,0,.5 + normEnergyFrom,0,.5 + normEnergyTo,1,.5 + normEnergyFrom,1)
				me.benergy:SetPoint("BOTTOM",me.frame,"CENTER",0,normEnergyFrom*width)
			else
				me.benergy:SetWidth((normEnergyTo-normEnergyFrom)*width);
				me.benergy:SetTexCoord(.5 + normEnergyFrom,.5 + normEnergyTo,0,1)
				me.benergy:SetPoint("LEFT",me.frame,"CENTER",normEnergyFrom*width,0)
			end
		else
			if vertical then
				me.benergy:SetHeight((normEnergyFrom-normEnergyTo)*width);
				me.benergy:SetTexCoord(.5 + normEnergyFrom,0,.5 + normEnergyTo,0,.5 + normEnergyFrom,1,.5 + normEnergyTo,1)
				me.benergy:SetPoint("TOP",me.frame,"CENTER",0,normEnergyFrom*width);
			else
				me.benergy:SetWidth((normEnergyFrom-normEnergyTo)*width);
				me.benergy:SetTexCoord(.5 + normEnergyTo,.5 + normEnergyFrom,0,1)
				me.benergy:SetPoint("RIGHT",me.frame,"CENTER",normEnergyFrom*width,0);
			end
		end
		
		if (normEnergyTo > 0) then
			ColorBar("predictedSolarColor",me.benergy)
		elseif (normEnergyTo < 0) then
			ColorBar("predictedLunarColor",me.benergy)
		else
			if (normEnergyFrom > 0) then
				ColorBar("predictedLunarColor",me.benergy)
			else
				ColorBar("predictedSolarColor",me.benergy)
			end
		end
		
		me.benergy:Show()
	end
end
local function growBars(normEnergy,width,vertical)
	if normEnergy == 0 then
		me.lenergy:Hide();
		me.senergy:Hide();
		return
	end
	
	if normEnergy > 0 then
		me.lenergy:Hide();
		me.senergy:Show();
		if vertical then
			me.senergy:SetHeight(normEnergy*width);
		else
			me.senergy:SetWidth(normEnergy*width);
		end
	else
		me.lenergy:Show();
		if vertical then
			me.lenergy:SetHeight(-normEnergy*width);
		else
			me.lenergy:SetWidth(-normEnergy*width);
		end
		me.senergy:Hide();
	end
end
----------------------------------------------------

--Arrow---------------------------------------------
local eclipseMarkerCoords =  {
	[0] = {
		none = { 0.922, 1.0, 0.82, 1.0 },
		sun	= { 0.914, 1.0, 0.641, 0.82 },
		moon = { 1.0, 0.914, 0.641, 0.82 },
	},
	[1] ={
		none = {1,0.82,0.922,0.82,1,1,0.922,1},
		sun = {1,0.641,0.914,0.641,1,0.82,0.914,0.82},
		moon = {0.914,0.641,1,0.641,0.914,0.82,1,0.82},
	}
}
local function setArrowTexture(direction,vertical)
	if direction ~= me.arrowdirection then
		local markerCoords = getEnv("eclipseMarkerCoords",eclipseMarkerCoords)
	
		me.arrow:SetTexCoord(unpack(markerCoords[(vertical and 1) or 0][direction]));
		me.arrowdirection = direction
	end
end
local function UpdateArrow(normEnergy,range,direction,vertical)
	if vertical then
		me.arrow:SetPoint("CENTER",-getEnv("arrowYOffset",1),normEnergy*(range-2)+getEnv("arrowXOffset",0))
	else
		me.arrow:SetPoint("CENTER",normEnergy*(range-2)+getEnv("arrowXOffset",0),getEnv("arrowYOffset",1))
	end
	
	setArrowTexture(direction,vertical)
end
local function UpdateText(number,direction,vertical)
	if not me.text:IsShown() then return end
	
	if getEnv("moveTextOutOfTheWay",true) then
		me.text:ClearAllPoints();
		if number<0 or (number == 0 and direction =="moon")  then
			if vertical then
				me.text:SetPoint("BOTTOM",me.frame,"CENTER",0,1)
			else
				me.text:SetPoint("LEFT",me.frame,"CENTER",1,0)
			end
		else
			if vertical then
				me.text:SetPoint("TOP",me.frame,"CENTER",0,-1)
			else
				me.text:SetPoint("RIGHT",me.frame,"CENTER",-1,0)
			end
		end
	end

	if getEnv("absoluteText",true) then
		number = abs(number)
	end
	me.text:SetText(number)
end
local function AnimateSpark(energy,vEnergy,width,vertical,isCastBar,reachEnd,unnormalizedEnergy)
	local spellCast, _, _, _, startTime, endTime = UnitCastingInfo("player")
	local spellChannel, _, _, _, startTimeC, endTimeC = UnitChannelInfo("player")
	local endTimeCA = select(7,UnitBuff('player',spellName.CA)) or 0

	local spell = spellCast or spellChannel
	startTime = ((startTime or startTimeC) or 0) * 0.001
	endTime = ((endTime or endTimeC) or 0) * 0.001

	if not spell or ((energy==vEnergy or endTime < endTimeCA) and not isCastBar) then
		if me.sparkAnimationGroup:IsPlaying() then
			me.sparkAnimationGroup:Stop();
		end
		me.spark:Hide()
		return
	end

	local npa = LibBalancePowerTracker:NextPeakAt()
	if not isCastBar and reachEnd and npa then
		endTime = npa
		vEnergy = (reachEnd > 0 and 0.5) or -0.5
	end
	
	if me.sparkAnimationGroup.finishTime == endTime and  me.sparkAnimationGroup.finishEnergy == vEnergy and me.sparkAnimationGroup:IsPlaying() then
		return
	else
		me.sparkAnimationGroup.finishTime = endTime
		me.sparkAnimationGroup.finishEnergy = vEnergy
		me.sparkAnimationGroup.initEnergy = energy;
		me.sparkAnimationGroup.unnormalizedinitEnergy = unnormalizedEnergy;
		me.sparkAnimationGroup.peak = reachEnd;
	end

	me.sparkAnimationGroup:Stop();
	
	local progress = min(max((GetTime() - startTime)/(endTime - startTime),0),1) 
	local duration = endTime - GetTime()
	local origin = (energy + progress*(vEnergy - energy))*(width-2)
	local dest = vEnergy*(width-2)
	
	if vertical then
		me.spark:SetPoint("CENTER",-getEnv("sparkYOffset",-1),origin+getEnv("sparkXOffset",0))
		me.sparkTranslation:SetOffset(0,dest - origin)
	else
		me.spark:SetPoint("CENTER",origin+getEnv("sparkXOffset",0),getEnv("sparkYOffset",-1))
		me.sparkTranslation:SetOffset(dest - origin,0)
	end
	
	me.sparkTranslation:SetDuration(duration)
	me.spark:Show()
	me.spark.dest = dest;
	me.sparkAnimationGroup:Play()
end
----------------------------------------------------

--Icons---------------------------------------------
local warnedEclipse = false;
local function UpdateIconScale(direction,energy)
	if (direction == me.iconsDirection) and energy == me.iconsEnergy then return end
	me.iconsDirection = direction;
	me.iconsEnergy = energy

	local scale = getEnv("scale",1)
	local bigScale = getEnv("iconBigScale",1.2)
	
	if energy < 0 then
		me.lframe:SetScale(bigScale)
		me.sframe:SetScale(scale)
	elseif energy > 0 then
		me.lframe:SetScale(scale)
		me.sframe:SetScale(bigScale)
	elseif (direction == "none") and (energy == 0) then
		me.lframe:SetScale(bigScale)
		me.sframe:SetScale(bigScale)
	else
		me.lframe:SetScale(scale)
		me.sframe:SetScale(scale)
	end
end
local function warnEclipse(eclipse,glow,spell_ready)
	if eclipse>0 then
		if glow then
			me.sframehighlight:Show()
			me.lframehighlight:Hide()
		end
		if spell_ready then
			ActionButton_ShowOverlayGlow(me.sframe)
			ActionButton_HideOverlayGlow(me.lframe)
		end
	elseif eclipse <0 then
		if glow then
			me.lframehighlight:Show()
			me.sframehighlight:Hide()
		end
		if spell_ready then
			ActionButton_ShowOverlayGlow(me.lframe)
			ActionButton_HideOverlayGlow(me.sframe)
		end
	else
		if glow then
			me.lframehighlight:Hide()
			me.sframehighlight:Hide()
		end
		if spell_ready then
			ActionButton_HideOverlayGlow(me.lframe)
			ActionButton_HideOverlayGlow(me.sframe)
		end
	end
end
local function UpdateIconsGlow(peak)
	local glow = getEnv("iconGlow",true)
	local spell_ready = getEnv("iconSpellReady",false)
	
	if not (glow or spell_ready) then return end

	if peak then
		if warnedEclipse ~= peak then
			warnEclipse(peak,glow,spell_ready)
			warnedEclipse = peak	
		end
	else
		if warnedEclipse then
			warnEclipse(0,glow,spell_ready)
		end
		warnedEclipse = false;
	end
end
local SPname  = GetSpellInfo(171744)
local LPname  = GetSpellInfo(171743)
local function UpdateIconsDuration(peak)
	local cooldowns = getEnv("showIconsCooldown",true)
	local text = getEnv("showIconsText",true)

	if not (text or cooldowns) then
		return
	end

	local sCooldownEnd, lCooldownEnd, tim = 0, 0, GetTime();
	if not peak then 
	elseif peak > 0 then 
		sCooldownEnd = select(7,UnitBuff("player",SPname))
	elseif peak < 0 then
		lCooldownEnd = select(7,UnitBuff("player",LPname))
	end
	
	if cooldowns then
		if lCooldownEnd ~= me.lframecooldown.cooldownEnd then
			me.lframecooldown.cooldownEnd = lCooldownEnd
			me.lframecooldown:SetCooldown(tim, lCooldownEnd-tim)
		end
		
		if sCooldownEnd ~= me.sframecooldown.cooldownEnd then
			me.sframecooldown.cooldownEnd = sCooldownEnd
			me.sframecooldown:SetCooldown(tim, sCooldownEnd-tim)
		end
	end
	
	if text then
		if me.lframetextframe.endt ~= lCooldownEnd then
			me.lframetextframe.endt = lCooldownEnd
			me.lframetextframe:Show()
		end
		if me.sframetextframe.endt ~= sCooldownEnd then
			me.sframetextframe.endt = sCooldownEnd
			me.sframetextframe:Show()
		end
	end

end
----------------------------------------------------

local energy,direction,peak,vEnergy,vDirection,vPeak,reachEnd,unnormalizedEnergy = 0,"none",false,0,"none",false,false,0
local function recalc()
	local width = getEnv("width",140)
	local vertical = getEnv("vertical",false)
	local predictOnArrow = getEnv("predictOnArrow",true)
	local energy,vEnergy = energy,vEnergy
	local showPredictBar = getEnv("showPredictBar",true)
	
	if predictOnArrow then
		UpdateArrow(vEnergy,width,vDirection,vertical);
		UpdateText(vEnergy*200,vDirection,vertical)
	else
		UpdateArrow(energy,width,direction,vertical)
		UpdateText(energy*200,direction,vertical)
	end
	
	if getEnv("showIcons",true) then
		local predictOnIcons = getEnv("predictOnIcons",true)
		UpdateIconsGlow((predictOnIcons and vPeak) or peak)
		
		UpdateIconsDuration(peak)
		
		if getEnv("big_icons",false) then
			if predictOnIcons then
				UpdateIconScale(vDirection,vEnergy)
			else
				UpdateIconScale(direction,energy)
			end
		end
	end

	if getEnv("barModeColorAll",false) then
		ColorAllBar((predictOnArrow and vEnergy) or energy)
	end
		
	if getEnv("growBar",false) then
		if showPredictBar then
			if energy * vEnergy <0 then
				growBars(0,width,vertical)
			else
				if abs(energy) < abs(vEnergy) then
					growBars(energy,width,vertical)
				else
					growBars(vEnergy,width,vertical)
				end
			end
		else
			growBars((predictOnArrow and vEnergy) or energy,width,vertical)
		end
	end
		
	local isCastBar = getEnv("barModeCastBar",false);
	if isCastBar then
		if UnitCastingInfo("player") or UnitChannelInfo("player") then
			if showPredictBar then
				me.senergy:Hide()
				me.lenergy:Hide()
			end
			
			if direction == "sun" then
				energy = -.5
				vEnergy = .5
			else
				energy = .5
				vEnergy = -.5
			end
		else
			if showPredictBar and not getEnv("growBar",false) then
				me.senergy:Show()
				me.lenergy:Show()
			end
		end
	end
	
	if showPredictBar then
		UpdateGainBar(energy,vEnergy,width,vertical,reachEnd)
	end
	if getEnv("gainSpark",true) then
		AnimateSpark(energy,vEnergy,width,vertical,isCastBar,reachEnd,unnormalizedEnergy)
	end
end

function me.events.UNIT_SPELLCAST_DELAYED(unit) --cast delayed, update animation
	if unit == "player" and me.sparkAnimationGroup:IsPlaying() and not getEnv("barModeCastBarAll",false) then
		AnimateSpark(
			me.sparkAnimationGroup.initEnergy,
			me.sparkAnimationGroup.finishEnergy,
			getEnv("width",140),
			getEnv("vertical",false),
			getEnv("barModeCastBar",false),
			me.sparkAnimationGroup.peak,
			me.sparkAnimationGroup.unnormalizedinitEnergy
		)
	end
end
function me.events.UNIT_SPELLCAST_CHANNEL_UPDATE(unit) -- channel delayed, update animation
	if unit == "player" and me.sparkAnimationGroup:IsPlaying() and not getEnv("barModeCastBarAll",false) then
		AnimateSpark(
			me.sparkAnimationGroup.initEnergy,
			me.sparkAnimationGroup.finishEnergy,
			getEnv("width",140),
			getEnv("vertical",false),
			getEnv("barModeCastBar",false),
			me.sparkAnimationGroup.peak,
			me.sparkAnimationGroup.unnormalizedinitEnergy
		)
	end
end

local function DrawUI()
	local scale = getEnv("scale",1)
	local height = getEnv("height",16)
	local width = getEnv("width",140)
	local alpha = getEnv("alpha",1)
	local strata = getEnv("strata","HIGH")
	local barTexture = getEnv("barTextureFile","Interface\\TARGETINGFRAME\\UI-TargetingFrame-BarFill")

	if not me.UIcreated then
		me.UIcreated = true
		--Frame
		me.frame = me.frame or CreateFrame("Frame","BalancePowerTracker_Eclipse_Bar_Frame",UIParent)
		me.frame:SetScript("OnEvent",function(_,event,...) me.events[event](...) end)
		
		local function savePosition(frame)
			local point,_,_,x,y = frame:GetPoint() 
			getEnv("point",point,true);
			getEnv("x",x,true);
			getEnv("y",y,true);
		end
		
		me.frame:SetScript("OnMouseDown", function(self) self:StartMoving() end)
		me.frame:SetScript("OnMouseUp",   function(self) self:StopMovingOrSizing(); savePosition(self) end)
		me.frame:SetScript("OnDragStop",  function(self) self:StopMovingOrSizing(); savePosition(self) end)
	
		me.frame:SetClampedToScreen(true)
		me.frame:SetMovable(true)
		me.frame:Show()
	
		-- Background Texture
		me.backTexture = me.backTexture or me.frame:CreateTexture(nil, "BACKGROUND",nil,-1)
		
		-- Solar Energy
		me.senergy = me.senergy or me.frame:CreateTexture(nil, "BACKGROUND", nil, 0)
		
		-- Lunar Energy
		me.lenergy = me.lenergy or me.frame:CreateTexture(nil, "BACKGROUND",nil, 0)
		
		-- Between Energy
		me.benergy = me.benergy or me.frame:CreateTexture(nil, "BACKGROUND",nil,1)
		me.benergy:ClearAllPoints();
		me.benergy:SetPoint("CENTER")
		
		-- Text
		me.text = me.text or me.frame:CreateFontString(nil,"OVERLAY","GameFontNormal")

		-- Arrow
		me.arrow = me.arrow or me.frame:CreateTexture(nil, "OVERLAY",nil,0)
		
		-- Spark
		me.spark = me.spark or me.frame:CreateTexture(nil, "OVERLAY",nil,-1)
		me.sparkAnimationGroup = me.sparkAnimationGroup or me.spark:CreateAnimationGroup();
		me.sparkTranslation = me.sparkTranslation or me.sparkAnimationGroup:CreateAnimation("Translation")
		me.sparkTranslation:SetScript("OnFinished",function()
			if getEnv("vertical",false) then
				me.spark:SetPoint("CENTER",-getEnv("sparkYOffset",-1),me.spark.dest+getEnv("sparkXOffset",0))
			else
				me.spark:SetPoint("CENTER",me.spark.dest+getEnv("sparkXOffset",0),getEnv("sparkYOffset",-1))
			end
		end)	
		
		--[[ Spark frame animation
		-- Attempt to make an animation with OnUpdate, nice but uses 4x CPU than the original, commented bc can be useful in the future 
		me.spark = me.spark or CreateFrame("Frame",nil, me.frame)
		me.spark.timeShown = 0;
		me.spark.duration = 0;
		me.spark.range = 0;
		me.spark.offsetInit = 0;
		me.spark.TimeSinceLastUpdate = 0;
		local num_pixels_per_update = .5;
		function me.spark:Play()
			if self.duration <= 0 or self.range == 0 then return end
		
			self.factor = self.range/self.duration --pixels/s
			self.vertical = getEnv("vertical",false)
			self.addYOffset = getEnv("sparkYOffset",-1) 
			self.addXOffset = getEnv("sparkXOffset",0)
			self.timeShown = 0
			self.TimeSinceLastUpdate = 0;
			self.throttleTime = max(num_pixels_per_update/abs(self.factor),0.0333) --max 30fps
			--print(1/self.throttleTime,"updates/s, should be",abs(self.factor)/num_pixels_per_update)

			if self.vertical then
				self:SetPoint("CENTER",-self.addYOffset,self.offsetInit+self.addXOffset)
			else
				self:SetPoint("CENTER",self.offsetInit+self.addXOffset,self.addYOffset)
			end
			self:Show()
		end
		function me.spark:SetDuration(seconds) self.duration = seconds end
		function me.spark:SetOffset(init,recorrido) self.offsetInit,self.range = init,recorrido end
		me.spark:SetScript("OnUpdate",function(self,elapsed)
			self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed;
			local tim = self.timeShown + elapsed
			self.timeShown = tim
			
			if tim>self.duration or self.TimeSinceLastUpdate < self.throttleTime then return end
			self.TimeSinceLastUpdate = self.TimeSinceLastUpdate - self.throttleTime
		
			local offset = self.offsetInit + tim * self.factor
			if self.vertical then
				self:SetPoint("CENTER",-self.addYOffset,offset+self.addXOffset)
			else
				self:SetPoint("CENTER",offset+self.addXOffset,self.addYOffset)
			end
		end)]]
		
		--Icons
		me.lframe = me.lframe or CreateFrame("Button","BalancePowerTracker_LunarEclipseIcon",me.frame)
		me.sframe = me.sframe or CreateFrame("Button","BalancePowerTracker_SolarEclipseIcon",me.frame)
		me.sframe:SetClampedToScreen(true)
		me.sframe:SetMovable(true)
		me.lframe:SetClampedToScreen(true)
		me.lframe:SetMovable(true)
		
		--Textures
		me.lframetexture = me.lframetexture or me.lframe:CreateTexture(nil, "ARTWORK",nil,0)
		me.sframetexture = me.sframetexture or me.sframe:CreateTexture(nil, "ARTWORK",nil,0)
		
		me.lframetexture:ClearAllPoints();
		me.lframetexture:SetPoint("CENTER")
		me.lframetexture:Show()
		me.sframetexture:ClearAllPoints();
		me.sframetexture:SetPoint("CENTER")
		me.sframetexture:Show()
		
		--Cooldown pie over icons
		me.lframecooldown = me.lframecooldown or CreateFrame("Cooldown", "BalancePowerTracker_LunarEclipseIcon_Cooldown", me.lframe, "CooldownFrameTemplate")
		me.sframecooldown = me.sframecooldown or CreateFrame("Cooldown", "BalancePowerTracker_SolarEclipseIcon_Cooldown", me.sframe, "CooldownFrameTemplate")
		me.lframecooldown:SetAllPoints()
		me.sframecooldown:SetAllPoints()
		me.lframecooldown:SetReverse(true)
		me.sframecooldown:SetReverse(true)
		me.lframecooldown:SetDrawBling(false)
		me.sframecooldown:SetDrawBling(false)
		
		--Icon text
		local function updater(self)
			local timLeft = (self.endt or 0) - GetTime()
			if timLeft <= 0 then
				self:Hide() 
				return 
			end
			
			self.text:SetText(string.format("%.1f",timLeft))
		end	
		
		me.lframetextframe = me.lframetextframe or CreateFrame("Frame", nil, me.lframe)
		me.lframetextframe:SetAllPoints()
		me.lframetextframe.text = me.lframetextframe.text or me.lframetextframe:CreateFontString(nil,"OVERLAY","GameFontNormal")
		me.lframetextframe.text:SetPoint("CENTER")
		me.lframetextframe:SetScript("OnUpdate",updater)
		me.lframetextframe:Hide()
		
		me.sframetextframe = me.sframetextframe or CreateFrame("Frame", nil, me.sframe)
		me.sframetextframe:SetAllPoints()
		me.sframetextframe.text = me.sframetextframe.text or me.sframetextframe:CreateFontString(nil,"OVERLAY","GameFontNormal")
		me.sframetextframe.text:SetPoint("CENTER")
		me.sframetextframe:SetScript("OnUpdate",updater)
		me.sframetextframe:Hide()
		
		--Highlight
		me.lframehighlight = me.lframehighlight or me.lframe:CreateTexture(nil, "ARTWORK",nil,1)
		me.sframehighlight = me.sframehighlight or me.sframe:CreateTexture(nil, "ARTWORK",nil,1)
		me.sframehighlight:ClearAllPoints();
		me.sframehighlight:SetPoint("CENTER")
		me.lframehighlight:ClearAllPoints();
		me.lframehighlight:SetPoint("CENTER")

		-- Masque
		me.masque = {
			name = "Eclipse Icons",
			frames = {
				{frame = me.lframe, buttonData = {Icon = me.lframetexture} },
				{frame = me.sframe, buttonData = {Icon = me.sframetexture} },
			}
		}
	end
	
	--Frame
	local insets = getEnv("insets",{left = 2,right = 2,top = 2, bottom = 2})
	local edgeFile = getEnv("edgeFile","Interface\\Tooltips\\UI-Tooltip-Border")
	me.frame:SetBackdrop({
		--bgFile = barTexture,
		edgeFile = getEnv("showEdge",true) and edgeFile,
		tile = false, tileSize = 0, edgeSize = getEnv("edgeSize",12),
		insets = insets,
	})
	local borderColor = getEnv("borderColor",barColorTable.borderColor)
	me.frame:SetBackdropBorderColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
	
	if getEnv("vertical",false) then
		me.frame:SetWidth(height+insets.top+insets.bottom)
		me.frame:SetHeight(width+insets.left+insets.right)
	else
		me.frame:SetWidth(width+insets.left+insets.right)
		me.frame:SetHeight(height+insets.top+insets.bottom)
	end
	me.frame:ClearAllPoints();
	me.frame:SetPoint(getEnv("point","CENTER"),getEnv("x",0),getEnv("y",-100));
	me.frame:SetScale(scale)
	me.frame:EnableMouse(getEnv("moving",false))
	me.frame:SetFrameStrata(strata)
	
	--Background texture
	if getEnv("vertical",false) then
		me.backTexture:SetWidth(height)
		me.backTexture:SetHeight(width)
		me.backTexture:SetTexCoord(1,0,0,0,1,1,0,1)
	else
		me.backTexture:SetWidth(width)
		me.backTexture:SetHeight(height)
		me.backTexture:SetTexCoord(0,1,0,1)
	end
	me.backTexture:ClearAllPoints();
	me.backTexture:SetPoint("CENTER")
	me.backTexture:SetTexture(barTexture)
	me.backTexture.colored = false
	ColorBar("backGroundColor",me.backTexture)
	me.backTexture:Show()
	
	-- Solar Energy
	me.senergy:ClearAllPoints();
	if getEnv("vertical",false) then
		me.senergy:SetPoint("BOTTOM",me.frame,"CENTER")
		me.senergy:SetWidth(height)
		me.senergy:SetHeight(width/2)
		me.senergy:SetTexCoord(1,0, .5,0, 1,1,.5,1 )
	else
		me.senergy:SetPoint("LEFT",me.frame,"CENTER")
		me.senergy:SetWidth(width/2)
		me.senergy:SetHeight(height)
		me.senergy:SetTexCoord(.5,1,0,1)
	end
	me.senergy:SetTexture(barTexture)
	me.senergy.colored = false
	ColorBar("solarColor",me.senergy)
	me.senergy:Show()
		
	-- Lunar Energy
	me.lenergy:ClearAllPoints();
	if getEnv("vertical",false) then
		me.lenergy:SetWidth(height)
		me.lenergy:SetHeight(width/2)
		me.lenergy:SetPoint("TOP",me.frame,"CENTER")
		me.lenergy:SetTexCoord(.5,0,0,0,.5,1,0,1)
	else
		me.lenergy:SetWidth(width/2)
		me.lenergy:SetHeight(height)
		me.lenergy:SetPoint("RIGHT",me.frame,"CENTER")
		me.lenergy:SetTexCoord(0,.5,0,1)
	end
	me.lenergy:SetTexture(barTexture)
	me.lenergy.colored = false
	ColorBar("lunarColor",me.lenergy)
	me.lenergy:Show()

	-- Between Energy
	me.benergy:SetWidth(height)
	me.benergy:SetHeight(height)
	me.benergy:SetTexture(barTexture)
	me.benergy:Hide()
	me.benergy.colored = false
	
	-- Text
	local autoFontSize = getEnv("autoFontSize",true)
	local fontSize = getEnv("fontSize",14)
	local font = getEnv("font","Fonts\\FRIZQT__.TTF")
	local textColor = getEnv("textColor",barColorTable.textColor)
	if getEnv("showValue",true) then
		me.text:ClearAllPoints();
		me.text:SetPoint("CENTER",0,0)
		
		me.text:SetFont(font,(autoFontSize and max(height*0.9,14)) or fontSize)
		me.text:SetText("0")

		me.text:SetTextColor(textColor.r, textColor.g, textColor.b, textColor.a)
		me.text:Show()
	else
		me.text:Hide()
	end

	-- Arrow
	me.arrow:ClearAllPoints();
	me.arrow:SetPoint("CENTER",getEnv("arrowXOffset",0),getEnv("arrowYOffset",1))
	me.arrow:SetHeight(max(height*1.5,20)*getEnv("arrowScale",1))
	me.arrow:SetWidth(max(height*1.5,20)*getEnv("arrowScale",1))
	me.arrow:SetTexture(getEnv("arrowTextureFile","Interface\\PlayerFrame\\UI-DruidEclipse"))
	me.arrow:SetBlendMode("ADD")
	me.arrowdirection = false
	me.arrow:Show()
	
	--Spark
	me.spark:ClearAllPoints();
	me.spark:SetPoint("CENTER",getEnv("sparkXOffset",0),getEnv("sparkYOffset",-1))
	me.spark:SetHeight(height*2)
	me.spark:SetWidth(height*2)
	me.spark:SetTexture(getEnv("sparkTextureFile","Interface\\CastingBar\\UI-CastingBar-Spark"))
	me.spark:SetBlendMode("ADD")
	if getEnv("vertical",false) then
		me.spark:SetTexCoord(1,0,0,0,1,1,0,1)
	else
		me.spark:SetTexCoord(0,1,0,1)
	end
	me.spark:Hide()
	me.sparkAnimationGroup.finishTime = 0
	me.sparkAnimationGroup.finishEnergy = 0 	
	
	--Icons
	local size = getEnv("iconSize",20)
	local LunarIconTextureFile = getEnv("LunarIconTextureFile",select(3,GetSpellInfo(171743)))
	local SolarIconTextureFile = getEnv("SolarIconTextureFile",select(3,GetSpellInfo(171744)))
	local LunarIconHighlightTextureFile = getEnv("LunarIconHighlightTextureFile","Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-IconGlow")
	local SolarIconHighlightTextureFile = getEnv("SolarIconHighlightTextureFile","Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-IconGlow")
	if getEnv("showIcons",true) then
		me.sframe:ClearAllPoints();
		me.lframe:ClearAllPoints();
		if getEnv("vertical",false) then
			me.sframe:SetPoint("BOTTOM",me.frame,"TOP",getEnv("sy",0),getEnv("sx",5)); 
			me.lframe:SetPoint("TOP",me.frame,"BOTTOM",getEnv("ly",0),getEnv("lx",-5));
		else
			me.sframe:SetPoint("LEFT",me.frame,"RIGHT",getEnv("sx",5),getEnv("sy",0)); 
			me.lframe:SetPoint("RIGHT",me.frame,"LEFT",getEnv("lx",-5),getEnv("ly",0));
		end
		
		me.sframe:SetScale(scale)
		me.sframe:SetFrameStrata(strata)
		me.sframe:SetWidth(size)
		me.sframe:SetHeight(size);
		me.sframe:SetAlpha(alpha);
		me.sframe:Show();
		
		me.lframe:SetScale(scale)
		me.lframe:SetFrameStrata(strata)
		me.lframe:SetWidth(size)
		me.lframe:SetHeight(size);
		me.lframe:SetAlpha(alpha);
		me.lframe:Show();
		
		me.iconsDirection = nil;
		me.iconsEnergy = nil
		
		ActionButton_HideOverlayGlow(me.lframe)
		ActionButton_HideOverlayGlow(me.sframe)

		me.lframetexture:SetWidth(size)
		me.lframetexture:SetHeight(size)
		me.lframetexture:SetTexture(LunarIconTextureFile)
		me.lframetexture:SetTexCoord(0,1,0,1)

		me.sframetexture:SetWidth(size)
		me.sframetexture:SetHeight(size)
		me.sframetexture:SetTexture(SolarIconTextureFile)
		me.sframetexture:SetTexCoord(0,1,0,1)
			
		me.lframehighlight:Hide()
		me.sframehighlight:Hide()
		me.lframehighlight:SetTexture(LunarIconHighlightTextureFile)
		me.sframehighlight:SetTexture(SolarIconHighlightTextureFile)
		me.lframehighlight:SetBlendMode("ADD")
		me.sframehighlight:SetBlendMode("ADD")
		me.lframehighlight:SetWidth(size*1.65)
		me.lframehighlight:SetHeight(size*1.65)
		me.sframehighlight:SetWidth(size*1.65)
		me.sframehighlight:SetHeight(size*1.65)
		me.lframehighlight:SetTexCoord(0,1,0,1)
		me.lframehighlight:SetTexCoord(0,1,0,1)
		
		if getEnv("showIconsCooldown",true) then
			me.sframecooldown:Show()
			me.lframecooldown:Show()
		else
			me.sframecooldown:Hide()
			me.lframecooldown:Hide()
		end
		
		--Icon text
		me.lframetextframe.text:SetTextColor(textColor.r, textColor.g, textColor.b, textColor.a)
		me.sframetextframe.text:SetTextColor(textColor.r, textColor.g, textColor.b, textColor.a)
		me.lframetextframe.text:SetFont(font,(autoFontSize and max(size*0.6,12)) or fontSize)
		me.sframetextframe.text:SetFont(font,(autoFontSize and max(size*0.6,12)) or fontSize)
		
	else
		me.lframe:Hide();
		me.sframe:Hide();
	end

	local alphaOOC = getEnv("alphaOOC",.6)
	if not UnitAffectingCombat("player") then
		me.frame:SetAlpha(alphaOOC);
	else
		me.frame:SetAlpha(alpha);
	end	
	
	--initialize vars
	for k,v in pairs(barColorTable) do
		getEnv(k,v)
	end
	getEnv("iconGlow",true)		
	getEnv("iconSpellReady",false)
	getEnv("big_icons",false)
	getEnv("iconBigScale",1.2)
	
	checkAddonVisibility()
end
	
function me.ReDraw()
	if not me.loaded then return end
	reset()
	warnedEclipse = false;
	DrawUI()
	
	recalc();
end
function me.LoadModule(getOptionValueFunction,r)
	if me.loaded then return end
	if not LibBalancePowerTracker then return "Bar: LibBalancePowerTracker missing" end
	
	getEnv,reset = getOptionValueFunction,r
	
	warnedEclipse = false;
	DrawUI()
	
	for k,v in pairs(me.events) do
		me.frame:RegisterEvent(k)
	end

	me.callbackId = LibBalancePowerTracker:RegisterCallback(function(e, d, p, ve, vd, vp, rE)
		energy,direction,peak,vEnergy,vDirection,vPeak,reachEnd,unnormalizedEnergy = e*0.005, d, p, ve*0.005, vd, vp, rE, e
		recalc();
	end);
	me.loaded = true
end
function me.UnloadModule()
	if not me.loaded then return end
	me.loaded = false
	
	me.frame:UnregisterAllEvents()

	LibBalancePowerTracker:UnregisterCallback(me.callbackId)

	me.frame:Hide();
end
