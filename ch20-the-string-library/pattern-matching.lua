--
--------------------------------------------------------------------------------
--         File:  pattern-matching.lua
--
--        Usage:  ./pattern-matching.lua
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
--      Created:  12/02/14
--     Revision:  ---
--------------------------------------------------------------------------------
--

s="[in brackets]"
print(s, " ", string.sub(s, 2, -2))

print("99 is ",  string.char(99))
i=99; print("i=99 ",  string.char(i,  i+1,  i+2))
print(string.byte("abc", 2))
print(string.byte("abc", 3))

s=string.gsub("lua is cute", "cute", "great")
print(s)
s=string.gsub("all lii", "l", "x")
print(s)
s=string.gsub("all lii", "l", "x", 1)
print(s)
s=string.gsub("all lii", "l", "x", 2)
print(s)
print(string.gsub("all lii", "l", "x", 2))
count=select(2, string.gsub("all lii", "l", "l"))
print(count)

test="int x; /* x */ int y; /*y*/"
print(string.gsub(test, "/%*.*%*/", "<comment>"))
print(string.gsub(test, "/%*.-%*/", "<comment>"))
