
  -- rTimeToDie
  -- zork 2009
  
  ---------------------------------------------
  -- CONFIG
  ---------------------------------------------

  --set your mobtype
  --1 = raidboss only
  --2 = raidboss and playerlevel + 3 mobs (hc instance bosses, 83 mobs etc.)
  --3 = show add for every mob available
  local show_time_mobtype = 2
  
  --show dps?
  local show_dps = 1
  
  --show fight_length
  local show_fightlength = 1
  
  --position
  local anchor = "TOP"
  local posx = 0
  local posy = -50
  
  ---------------------------------------------
  -- VARIABLES
  ---------------------------------------------
  
  --variable that saves is unit is in combat
  local player_in_combat = 0 
  --hostile ?!
  local target_is_hostile 
  --variable that saves if the unit is a raidboss
  local target_is_raidboss
  --target must be npc
  local target_is_npc
  --has the player a target?
  local player_has_target = 0  
  --first lookup percentage
  local first_life  
  local first_life_max
  --first time target seen
  local first_time
  --current
  local current_life
  local current_time
  --update timer in seconds
  local update_timer = 1
  --script running
  local script_running = 0
  --helper frame
  local a = CreateFrame("Frame",nil,UIParent)  
  local updateCombatStatus, updateTargetStatus
  local last_string
  
  ---------------------------------------------
  -- FUNCTIONS
  --------------------------------------------- 
  
  --set fontstring
  local function SetFontString(f, fontName, fontHeight, fontStyle)
    local fs = f:CreateFontString(nil, "OVERLAY")
    fs:SetFont(fontName, fontHeight, fontStyle)
    fs:SetShadowColor(0,0,0,1)
    return fs
  end
  
  --backdrop
  local function SetBackdrop(f)
    f:SetBackdrop({ 
      bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", 
      edgeFile = "", tile = false, tileSize = 0, edgeSize = 32, 
      insets = { left = -2, right = -2, top = -2, bottom = -2 }
    })
    f:SetBackdropColor(0,0,0,1)
  end
  
  --init func
  local function initFrames()
    a:SetWidth(600)
    a:SetHeight(40)
    a:SetPoint(anchor,posx,posy)
    --SetBackdrop(a)
    local text = SetFontString(a, "FONTS\\FRIZQT__.ttf", 14, "THINOUTLINE")
    text:SetPoint("LEFT", 2, 0)
    text:SetPoint("RIGHT", -2, 0)
    text:SetTextColor(1,1,1)
    a.text = text
  end
  
  --output to the frame
  local function am(meintext)
    a.text:SetText(meintext)
  end  
  
  --output to the chat
  local function amd(meintext)
    DEFAULT_CHAT_FRAME:AddMessage(meintext)
  end  
  
  --onUpdate func
  local function updateFunc(self,elapsed)
    local t = self.timer
    if (not t) then
      self.timer = 0
      return
    end
    t = t + elapsed
    if (t<update_timer) then
      self.timer = t
      return
    else
      self.timer = 0
      updateTargetStatus()
    end
  end
  
  --start the onUpdate
  local function activate_this()
    a:SetScript("OnUpdate", updateFunc)
    --amd("TTD: Script started.")
    am("")
    script_running = 1
  end
  
  --stop the onUpdate
  local function stop_this(reason)
    first_life = nil
    first_time = nil
    a:SetScript("OnUpdate", nil)
    if reason then
      --amd("TTD: Script ended because of: "..reason..".")
    else
      --amd("TTD: Script ended.")
    end
    if last_string then
      --amd(last_string)
      last_string = nil
    end
    am("")
    script_running = 0
  end
  
  --update combat status
  updateCombatStatus = function (self, event, unit)
    if event == "PLAYER_REGEN_DISABLED" then
      player_in_combat = 1
      if script_running == 0 then
        activate_this()
      end 
    else
      player_in_combat = 0
      if script_running == 1 then
        stop_this("out of combat")
      end
    end
  end
  
  --calculate the time to death
  local function calculate_time_to_death()
    if current_life == 0 then
      am("TTD: "..UnitName("target").." is dead!")
      if script_running == 1 then
        stop_this("target is dead")
      end
    else
      local time_diff = current_time-first_time
      local hp_diff = first_life-current_life
      if hp_diff > 0 then
        -- Rule of three (Dreisatz): 
        -- If in a given timespan a certain value of damage is done, what timespan is needed to do 100% damage?
        -- The longer the timespan the more precise the prediction
        -- time_diff/hp_diff = x/first_life_max 
        -- x = time_diff*first_life_max/hp_diff
        local full_time = time_diff*first_life_max/hp_diff
        --if unit was not at 100% at first time seen this is very important we need to calculate backwards in time then too
        -- second rule of three needed
        --if first_life == max life this will be 0 but otherwise a time will be the result
        local past_first_time = (first_life_max-first_life)*time_diff/hp_diff
        calc_time = first_time-past_first_time+full_time-current_time
        --SecondsToTime can only display values >= 1
        if calc_time < 1 then
          calc_time = 1
        end
        local time_to_die = SecondsToTime(calc_time)
        local fight_length
        local dps
        if show_dps == 1 then
          dps = floor(hp_diff/time_diff)
          dps = " (DPS "..dps..")"
        else
          dps = ""
        end
        if show_fightlength == 1 then
          fight_length = SecondsToTime(full_time)
          fight_length = " after "..fight_length
        else
          fight_length = ""
        end
        last_string = "TTD: "..UnitName("target").." dies in "..time_to_die..fight_length..dps
        am(last_string)
        
      elseif hp_diff < 0 then
        --unit has healed, reseting the initial values
        first_life = current_life
        first_time = current_time
        am("TTD: "..UnitName("target").." has healed. :/")
      else
        if current_life == first_life_max then
          --since unit is at full health we can reset the time and hp values
          --thus data will be tracked from the point on when the unit starts to loose life
          first_life = current_life
          first_time = current_time
          am("TTD: "..UnitName("target").." is at full health.")
        else
          --no damage occured in the timespan
          --do nothing but wait
        end
      end
    end
  end
  
  --update target status
  updateTargetStatus = function (self,event,unit)
    --on target change the script needs to reset values
    if event == "PLAYER_TARGET_CHANGED" then
      if script_running == 1 then
        stop_this("target changed")
      end
    end
    if UnitExists("target") then
      player_has_target = 1
      if not UnitIsFriend("player", "target") then
        target_is_hostile = 1
      else
        target_is_hostile = 0
      end
      
      if show_time_mobtype == 1 then
        if UnitLevel("target") == -1 then
          target_is_raidboss = 1
        else
          target_is_raidboss = 0
        end
      elseif show_time_mobtype == 2 then
        if (UnitLevel("target") >= (UnitLevel("player")+3)) or (UnitLevel("target") == -1) then
          target_is_raidboss = 1
        else
          target_is_raidboss = 0
        end
      else
        target_is_raidboss = 1
      end      
      
      if (UnitIsPlayer("target")) then
         target_is_npc = 0
      else
         target_is_npc = 1
      end
      if player_in_combat == 1 and target_is_hostile == 1 and target_is_raidboss == 1 and target_is_npc == 1 and not first_life and UnitHealth("target") > 0 then
        first_life = UnitHealth("target")
        first_life_max = UnitHealthMax("target")
        first_time = GetTime()
        if script_running == 0 then
          activate_this()
        end 
      elseif player_in_combat == 1 and target_is_hostile == 1 and target_is_raidboss == 1 and target_is_npc == 1 and first_life and script_running == 1 then 
        current_life = UnitHealth("target")
        current_time = GetTime()
        calculate_time_to_death()
      else
        if script_running == 1 then
          stop_this("mob level is to low")
        end
      end
    else
      player_has_target = 0
      if script_running == 1 then
        stop_this("no target")
      end
    end
  end  

  ---------------------------------------------
  -- REGISTER EVENTS
  ---------------------------------------------
  
  a:RegisterEvent("PLAYER_REGEN_ENABLED")
  a:RegisterEvent("PLAYER_REGEN_DISABLED")
  a:RegisterEvent("PLAYER_TARGET_CHANGED")
  a:RegisterEvent("PLAYER_LOGIN")
  
  ---------------------------------------------
  -- SETSCRIPT
  ---------------------------------------------
  
  a:SetScript("OnEvent", function(self,event,unit)
    if event == "PLAYER_TARGET_CHANGED" then
      updateTargetStatus(self,event,unit)
    elseif event == "PLAYER_LOGIN" then
      initFrames()
    else
      updateCombatStatus(self,event,unit)
    end
  end)
