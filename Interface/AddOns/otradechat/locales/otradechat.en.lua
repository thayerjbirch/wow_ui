--[[ 
  @file       otradechat.defines.lua
  @brief      core defines for otradechat (should be region/language independent)

  @author     rmcinnis
  @date       july 10, 2014
  @par        copyright (c) 2014 Solid ICE Technologies, Inc.  All rights reserved.
              this file may be distributed so long as it remains unaltered
              if this file is posted to a web site, credit must be given to me along with a link to my web page
              no code in this file may be used in other works without expressed permission  
]]--
local addonName, OTC = ... ; 
OTC._T = {} ; -- used for literal string conversations
local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways, 
 -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
 return key;
end
setmetatable(OTC._T, {__index=defaultFunc}) ;
local L = OTC._T ;

