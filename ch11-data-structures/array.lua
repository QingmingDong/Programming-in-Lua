
a = {}
for i=1, 1000 do
	a[i] = 0
end
print(#a)

b = {}
for i=-5, 5 do
	b[i] = i
end
for k, v in ipairs(b) do
	print("ipairs", k, v)
end
for k, v in pairs(b) do
	print("pairs", k, v)
end

squares={1, 4, 9, 16, 25, 36, 49, 64, 81}
print(#squares)
