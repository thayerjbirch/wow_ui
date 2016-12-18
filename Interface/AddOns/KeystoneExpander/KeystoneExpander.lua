local frame = CreateFrame("Frame")

local a1 = 0x080000
local a2 = 0x100000
local a3 = 0x200000
local ready = 0x400000

local function getModifierText(flags, modifierNum, modifierID)
  local txt = ""
  if (modifierID == nil or modifierID == "") then return txt end -- rare bug, don't know what the cause is
  modifierID = tonumber(modifierID)
  if (bit.band(flags,modifierNum) == modifierNum and (modifierID >= 1 and modifierID <= 10)) then
    local modifierName = C_ChallengeMode.GetAffixInfo(modifierID)
    if (modifierName ~= nil) then
      txt = "/"..modifierName
    end
  end
  return txt
end

local function AddFilters()

  function KeystoneFilter(self, event, message, user, ...)
    for itemLink in message:gmatch("|%x+|Hitem:.-|h.-|h|r") do
      local itemString = string.match(itemLink, "item[%-?%d:]+")
      local itemName = string.match(itemLink, "\124h.-\124h"):gsub("%[","%%[)("):gsub("%]",")(%%]")
      local _,itemid,_,_,_,_,_,_,_,_,_,flags,_,_,mapid,mlvl,modifier1,modifier2,modifier3 = strsplit(":", itemString)
      if (itemid == "138019") then -- Mythic Keystone
        local A1 = getModifierText(flags, a1, modifier1)
        local A2 = getModifierText(flags, a2, modifier2)
        local A3 = getModifierText(flags, a3, modifier3)
        local dung = GetRealZoneText(mapid)
        local txt = dung.."+"..mlvl
        if (KeystoneExpander_ShowModifiers == true) then
          txt = txt..A1..A2..A3
        end
        txt = string.format(CHALLENGE_MODE_KEYSTONE_NAME, txt)

        local color = select(4,GetItemQualityColor(4))
        if (bit.band(flags,ready) ~= ready) then
          color = select(4,GetItemQualityColor(0))
        end
        message = gsub(message, "(\124c)(%x+)(\124Hitem:138019:.-"..itemName.."\124r)", "%1"..color.."%3"..txt.."%5", 1)
      end
    end
    return false, message, user, ...;
  end

  -- Not supporting these for now since itemlinks have stripped colors
  -- ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_CONVERSATION", KeystoneFilter);
  -- ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", KeystoneFilter);
  -- ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER_INFORM", KeystoneFilter);

  ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND_LEADER", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_EMOTE", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_WARNING", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", KeystoneFilter);
  ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", KeystoneFilter)
  ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", KeystoneFilter);
end


frame:SetScript("OnEvent", function(self, event, ...)
  if event == "ADDON_LOADED" then
    AddFilters()
    frame:UnregisterEvent("ADDON_LOADED")
  end
  if event == "PLAYER_LOGIN" then
    if KeystoneExpander_ShowModifiers == nil then
      KeystoneExpander_ShowModifiers = false
    end

    KeystoneExpander = {}

    KeystoneExpander.panel = CreateFrame("Frame", "KeystoneExpanderPanel", UIParent)
    KeystoneExpander.panel.name = "KeystoneExpander"


    local fs = KeystoneExpander.panel:CreateFontString("KSModifier", nil, "GameFontNormal")
    fs:SetText(CHALLENGE_MODE_DUNGEON_MODIFIERS)
    fs:SetPoint("TOPLEFT",10,-20)

    local cb = CreateFrame("CheckButton", "KSModifier_CheckButton", KeystoneExpander.panel, "UICheckButtonTemplate")
    cb:SetPoint("LEFT",fs,"RIGHT",0,0)
    cb:SetChecked(KeystoneExpander_ShowModifiers)

    cb:SetScript("OnClick", function(self,event,arg1) 
      if self:GetChecked() then
        KeystoneExpander_ShowModifiers = true
      else
        KeystoneExpander_ShowModifiers = false
      end
    end)

    InterfaceOptions_AddCategory(KeystoneExpander.panel)
    frame:UnregisterEvent("PLAYER_LOGIN")
  end
end)
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGIN")
