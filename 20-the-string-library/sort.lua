
local a = {"aasdfas", "b", "a", "d", "c",}

table.sort(a, function (a, b) 
		return string.lower(a) < string.lower(b)
		end
	  )
for n in ipairs(a) do
	print(n, a[n])
end

