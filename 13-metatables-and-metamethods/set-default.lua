--
--------------------------------------------------------------------------------
--         File:  set-default.lua
--
--        Usage:  ./set-default.lua
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
--      Created:  12/31/14
--     Revision:  ---
--------------------------------------------------------------------------------
--
local  key= {}
local mt={__index=function (t) return t[key] end}
function setDefault(t, d)
    t[key]=d
    setmetatable(t, mt)
end
tab={x=10, y=20}
tab1={x=10, y=20}
print(tab.x, tab.z)
setDefault(tab, 0)
setDefault(tab1, 1)
print(tab.x, tab.z)
print(getmetatable(tab))
print(getmetatable(tab1))
