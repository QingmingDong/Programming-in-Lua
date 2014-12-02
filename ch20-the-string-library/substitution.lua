--
--------------------------------------------------------------------------------
--         File:  substitution.lua
--
--        Usage:  ./substitution.lua
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
--      Created:  12/01/14
--     Revision:  ---
--------------------------------------------------------------------------------
--
function expandTabs(s, tab)
	tab = tab or 8
	local corr = 0
	s = string.gsub(s, "()\t", function (p)
		local sp = tab - (p - 1 + corr)%tab
		print(p, sp)
		corr = corr - 1 + sp
		return string.rep(" ", sp)
	end)
	return s
end

s=expandTabs("1\t2\t3\t4")
print(s)

function unexpandTabs (s, tab)
	tab = tab or 8
	--s = expandTabs(s, tab)
	local pat = string.rep(".", tab)
	s = string.gsub(s, pat, "%0\1")
	s = string.gsub(s, " +\1", "\t")
	s = string.gsub(s, "\1", "")
	return s
end
ss=unexpandTabs(s)
print(ss)
