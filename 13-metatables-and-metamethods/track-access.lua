--
--------------------------------------------------------------------------------
--         File:  track-access.lua
--
--        Usage:  ./track-access.lua
--
--  Description:  
--
--      Options:  ---
-- Requirements:  ---
--         Bugs:  ---
--        Notes:  ---
--       Author:  YOUR NAME (), <>
-- Organization:  
--      Version:  1.0
--      Created:  01/04/15
--     Revision:  ---
--------------------------------------------------------------------------------
--
t={1, 2, 3, }
local _t = t
t={}
local mt = {
    __index = function (t, k)
        print("*access to element ".. tostring(k))
        return _t[k] 
    end, 
    __newindex = function (t, k, v)
        print("*update of element " .. tostring(k) .. " to " .. tostring(v))
        _t[k]=v
    end
}
setmetatable(t, mt)
print(t[2])
t[2]="hello"
