--[[ 
  @file       otradechat.lua
  @brief      addon lua file for otradechat

  @author     tiny
  @date       july 10, 2014
]]--
local addonName, OTC = ... ;
local L = OTC._T ; -- for literal string translations

-------------------------------------------------------------------------------
local OTC_MAJOR                 = 0 ;
local OTC_MINOR                 = 0 ;
local OTC_REVISION              = 6 ;
local OTC_BUILD                 = "006" ;
local OTC_SPECIAL_TAG           = "" ;
local OTC_VERSION               = tostring(OTC_MAJOR) ..".".. tostring(OTC_MINOR) ..".".. OTC_REVISION ;
local OTC_VERSION_SHORT         = tostring(OTC_MAJOR) ..".".. tostring(OTC_MINOR) .."".. OTC_REVISION ;
local OTC_VER_STR               = OTC_VERSION ;
local OTC_CHANNEL               = "otc" ;
local OTC_MAX_LINES             = 100 ;
local SEP                       = string.format( "%c", 31 ) ;
local _ ; -- throw away (was getting taint warning; what happened blizz?)

local otc  = {} ;
local _arg = {} ;
local player_name  = nil ;
local player_realm = nil ;

-- Set up defaults, if MySavedVariables hasn't been set up yet
if not OTC_data then
  OTC_data = {} ;
end

-------------------------------------------------------------------------------
--   slash commands
-------------------------------------------------------------------------------

SLASH_OTRADECHAT1 = '/otradechat' ;
SLASH_OTRADECHAT1 = '/otc' ;
SlashCmdList["OTRADECHAT"] = function (msg, editbox)
  if (msg == nil) or (msg == "") then
    otc.usage() ;
    return
  end
  local arg1 = msg ;
  local opts = nil ;
  if (msg) and (msg:find(" ")) then
    arg1 = msg:sub(1,msg:find(" ")-1) ;
    opts = msg:sub(msg:find(" ")+1,-1) ;
  end
  if (otc.options[ arg1 ]) then
    otc.options[ arg1 ]( opts ) ;
  else
    local sender = player_name .."-".. player_realm ;
    local id     = otc.in_tradechat() ;
    if (id == nil) then
      -- not in town, post to otc
      otc.channel_say( OTC_CHANNEL, sender .. SEP .. msg ) ;
    else
      -- in city, talking into otc channel
      otc.channel_say( OTC_CHANNEL, msg ) ;
    end
  end
end

local function tfill( t, ... )
  if (t) then
    wipe(t) ;
    local i = 0 ;
    for i = 1,select('#', ... ) do
      t[i] = select(i, ...) ;
    end
  end
end
-------------------------------------------------------------------------------
--   event handlers (alphabetical order)
-------------------------------------------------------------------------------
function otc.append_tradechat( origin, m, local_id ) 
  if (origin:find(player_realm)) then
    -- strip off my realm
    origin = origin:sub( 1, (origin:find('-') or 0) -1 ) ;
  end
  local s = (local_id == nil) and (origin .." says: ".. m) or m ;
  -- paste msg into trade chat
  local id = local_id or otc.in_tradechat() ;
  if (id == nil) then
    return ;
  end
  SendChatMessage( s, "CHANNEL", nil, tonumber(id) ) ;
end

function otc.append_tradechat_frames( origin, m ) 
  if (origin:find(player_realm)) then
    -- strip off my realm
    origin = origin:sub( 1, (origin:find('-') or 0) -1 ) ;
  end
  local s = "[|cFF008000otc:|r".. origin .."] ".. m ;
  -- paste msg into all chat windows registered for trade chat
  local index = 0 ;
  local j = 0 ;
  for index=1, NUM_CHAT_WINDOWS do
    local frame = _G[ "ChatFrame".. index ] ;
    if (frame) then
      tfill( _arg, GetChatWindowChannels(index) ) ;
      local i, v ;
      for i,v in pairs(_arg) do
        if (type(v) == "string") and (v == "Trade") then
          frame:AddMessage( "|Hotc:".. tostring(origin) .. "|h".. s ) ;
        end
      end
    end
  end
end

function otc_hyper_handler( self, link, text, button )
  local n = link:find( ":" ) or 0 ;
  local service = link:sub( 1, n - 1 ) ;

  if (service == "otc") then
    local target = link:sub(n+1,-1) ;
    self.editBox:SetAttribute( "chatType"  , "WHISPER" ) ;
    self.editBox:SetAttribute( "tellTarget", target    ) ;
    ChatEdit_UpdateHeader( self.editBox ) ;
    ChatFrame_OpenChat( "", self ) ;
  elseif (self.__otc_ndx) and (otc._old_hyper_handler[self.__otc_ndx]) then
    otc._old_hyper_handler[self.__otc_ndx]( self, link, text, button ) ;
  end
end

--  
--  hook chat frames hyperlink clicks
--
function otc.attach_hyperlink()
  otc._old_hyper_handler = otc._old_hyper_handler or {} ;
  
  local index = 0 ;
  local j = 0 ;
  for index=1, NUM_CHAT_WINDOWS do
    local frame = _G[ "ChatFrame".. index ] ;
    if (frame) then
      otc._old_hyper_handler[index] = frame:GetScript("OnHyperLinkClick") ;
      frame.__otc_ndx = index ;
      frame:SetScript("OnHyperLinkClick", otc_hyper_handler ) ;
    end
  end
  
--  local otc._old_sethyperlink_handler = ItemRefTooltip.SetHyperlink ;
--  function ItemRefTooltip:SetHyperlink(link, ...)
--    return otc._old_sethyperlink_handler(self, link, ...)
--  end  
end

function otc.channel_join( chan_name )
  local n = strlower( chan_name ) ;

  JoinTemporaryChannel( n, nil ) ;
  local id, chname = GetChannelName( n ) ;
  otc._channels[ n ] = id ;
end

function otc.channel_leave( chan_name )
  if (chan_name == nil) then
    return ;
  end
  local n = strlower( chan_name ) ;
  LeaveChannelByName( n ) ;
  otc._channels[ n ] = nil ;
end

function otc.channel_say( chan_name, msg ) 
  local n = strlower( chan_name ) ;
  if (n) and (otc._channels[n]) then
    SendChatMessage( msg, "CHANNEL", nil, otc._channels[ n ] ) ;
  end
end

function otc.hook_options()
  otc.options = {} ;
  otc.options[ "off"         ] = otc.off ;
  otc.options[ "on"          ] = otc.on ;
  otc.options[ "-v"          ] = otc.version ;
end

function otc.init()
  player_name   = UnitName("player") ;
  player_realm  = GetRealmName() ;
  otc._channels = {} ;
  otc._recent   = {} ;
  otc.lineno    = 0 ;
  otc.set_channel() ;  
  otc.hook_options() ;
  otc.attach_hyperlink() ;
end

function otc.in_tradechat()
  tfill( _arg, GetChannelList() ) ;
  local i, v, id ;
  for i,v in pairs(_arg) do
    if (type(v) == "string") and (v == "Trade") then
      return id or true ;
    elseif (type(v) == "number") then
      id = v ;
    end
  end
  return nil ;
end

function otc.is_recent(m)
  local i, v ;
  for i,v in pairs(otc._recent) do
    if (v == m) then
      return true ;
    end
  end
  return nil ;
end

function otc.join_channels()
  local now = GetTime() ;
  if (otc._next_init_tm) and (now < otc._next_init_tm) then
    return ;
  end
  otc._next_init_tm = now + 5 ;
  
  tfill( _arg, GetChannelList() ) ;
  if (#_arg < 2) then
    return ;
  end
  
  -- other channels have joined, ok to do initial channel stuff
  if (OTC_data.active == 1) or (OTC_data.active == nil) then
    otc.on( false ) ;
  else
    otc.off( false ) ;
  end
  otc.version() ;  
  
  otc.root:SetScript( "OnUpdate", nil ) ;
end

function otc.OnAddonLoaded( name )
  if (name == "otradechat") then
    otc.init() ;
  end
end

function otc.OnEvent( self, event, prefix, msg, channel, sender )
  local m = msg or "" ;
  local c = channel or "" ;
  local s = sender or "" ;
  local p = prefix or "" ;
  local e = event or "" ;
  
  if (otc.msg_handler[event]) then
    otc.msg_handler[event]( prefix, msg, channel, sender ) ;
  end  
end

function otc.OnPlayerLogout()
  otc.channel_leave( OTC_channel ) ;
end

function otc.off( ok2emote )
  otc.active = nil ;
  OTC_data.active = 0 ;
  ChatFrame_RemoveMessageEventFilter( "CHAT_MSG_CHANNEL", otc.on_chatmsg ) ;  
  otc.channel_leave( OTC.channel ) ;
  
  if (ok2emote == nil) or (ok2emote == true) then
    print( L["otc inactive"] ) ;
  end
end

function otc.on( ok2emote )
  otc.active = true ;
  OTC_data.active = 1 ;
  ChatFrame_AddMessageEventFilter( "CHAT_MSG_CHANNEL", otc.on_chatmsg ) ;  
  otc.channel_join( OTC.channel, nil ) ;
  
  if (ok2emote == nil) or (ok2emote == true) then
    print( L["otc active"] ) ;
  end
end

function otc.on_chatmsg( self, event, ... )
  if (not otc.active) then
    return ;
  end
  tfill( _arg, ... ) ;
  local lineno  = tonumber(_arg[11]) ;
  if (lineno <= otc.lineno) then
    return ;
  end
  local channel = _arg[ 9] ;
  local sender  = _arg[ 2] ;
  local msg     = _arg[ 1] ;
  
  otc.lineno = lineno ;
  if (channel:find( "Trade" )) then
    otc.channel_say( OTC_CHANNEL, sender .. SEP .. msg ) ;
    otc.recent_msg( msg ) ;
  elseif (channel == OTC_CHANNEL) then
    local p = msg:find( SEP ) ;
    local m = p and msg:sub( p+1, -1 ) ;
    if (m) and (not otc.is_recent(m)) then
      local origin = msg:sub( 1, p-1 ) ;
      if (otc.in_tradechat()) then
        -- i'm in-tradechat, msg was in otc-channel to be relayed from outer city
        -- update: do not relay to trade
--        otc.append_tradechat( origin, m ) ;
      else
        -- i'm outside of city and not in trade; append to any windows filtering for trade
        otc.recent_msg(m) ;
        otc.append_tradechat_frames( origin, m ) ;
      end
    elseif (m == nil) and (not otc.is_recent(msg)) then
      -- msg typed into otc channel; if in city, display outer city message
      if (otc.in_tradechat()) then
        otc.recent_msg(msg) ;
        otc.append_tradechat_frames( sender, msg ) ;
      end
    else
      -- recently seen msg; already relayed; ignore
    end
  end
end

function otc.recent_msg(m)
  local n = table.getn( otc._recent ) ;
  if (n >= OTC_MAX_LINES) then
    table.remove( otc._recent, 1 ) ;
  end
  table.insert( otc._recent, m ) ;
end

function otc.register_events()
  otc.msg_handler = {} ;
  otc.msg_handler[ "ADDON_LOADED"               ] = otc.OnAddonLoaded ;
  otc.msg_handler[ "PLAYER_LOGOUT"              ] = otc.OnPlayerLogout ;

  otc.root:RegisterEvent("ADDON_LOADED"         ) ;
  otc.root:RegisterEvent("PLAYER_LOGOUT"        ) ;
  otc.root:SetScript("OnEvent", otc.OnEvent ) ;
end

function otc.set_channel( chan )
  if (chan == nil) then
    chan = OTC_CHANNEL ;
  end
  OTC.channel = chan ;
end

function otc.toggle() 
  if (otc.active) then
    otc.off() ;
  else
    otc.on() ;
  end
end

function otc.usage() 
  otc.version() ;
  print( L["/otc [on|off|-v|message to otc-chat]"] ) ;
end

function otc.version() 
  print( "oTradechat v" .. OTC_VERSION .."  ".. tostring( ((OTC_data.active == 1) and L["active"]) or L["inactive"] ) ) ; 
end

function otc_OnLoad(self)
  otc.root = self ;
  otc.root._init_tm = GetTime() + 5.0 ;
  otc.root:Show() ;
  otc.root:SetScript( "OnUpdate", function(self) if (self._init_tm < GetTime()) then otc.join_channels() end end ) ;
  otc.register_events() ;
end

