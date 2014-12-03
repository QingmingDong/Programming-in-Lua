--
--------------------------------------------------------------------------------
--         File:  capture.lua
--
--        Usage:  ./capture.lua
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
--      Created:  11/28/14
--     Revision:  ---
--------------------------------------------------------------------------------
--
pair = "name = Anna"
key,  value = string.match(pair, "(%a+)%s*=%s*(%a+)")
print(key,  value)

date = "Today is 17/7/1990"
d, m, y = string.match(date, "(%d+)/(%d+)/(%d+)")
print(d, m, y)

s=[[then he said: "it's all right!"]]
q, quotedPart = string.match(s, "([\"'])(.-)%1")
print(quotedPart)
print(q)

p="%[(=*)%[(.-)%]%1%]"
s="a = [=[[[ something ]] ]==] ]=]; print(a)"
print(string.match(s, p))

print(string.gsub("hello Lua!",  "%a", "%0-%0"))
print(string.gsub("hello Lua!",  "(.)(.)", "%2%1"))

s=[[the \quote{task} is to \em{change} that.]]
print(s)
print(string.gsub(s, "\\(%a+){(.-)}", "<%1>%2</%1>"))

function expand (s)
	return (string.gsub(s, "$(%w+)",  function (n) return tostring(_G[n]) end )) 
end
name="Lua"; status="great"
print(expand("$name is $status, isn't it?"))
print(expand("print=$print; a=$a"))

function toxml(s)
	s=string.gsub(s, "\\(%a+)(%b{})",  function (tag, body)
		body = string.sub(body, 2, -2)
		body = toxml(body)
		return string.format("<%s>%s</%s>", tag, body, tag)
	end)
	return s
end
print(toxml("\\title{the \\bold{big} example}"))

print(string.match("hello", "ll()"))
