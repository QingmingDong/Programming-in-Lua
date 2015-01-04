--
--------------------------------------------------------------------------------
--         File:  track-proxy.lua
--
--        Usage:  ./track-proxy.lua
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
--local index = {}
local index = 10
local mt = {
    __index = function (t, k)
        print("*access to element ".. tostring(k))
        return t[index][k] 
    end, 
    __newindex = function (t, k, v)
        print("*update of element " .. tostring(k) .. " to " .. tostring(v))
        t[index][k]=v
    end
}
function track (t)
    local proxy = {}
    proxy[index]=t
    setmetatable(proxy, mt)
    return proxy
end
t={1, 2, 3, }
t=track(t)
for k, v in pairs(t) do
    print(k, v)
end
print(t[2])
t[2]="hello"
