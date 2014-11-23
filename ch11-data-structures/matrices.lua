
local N, M = 6, 9
print(N, M)
mt = {}
for i=1, N do
	mt[i] = {}
	for j=1, M do
		mt[i][j] = 0
	end
end
for k, v in pairs(mt) do
	print(k,v)
	for k1, v2 in pairs(v) do
		print(k, k1, v2)
	end
end

mt2 = {}
for i=1, N do
	for j=1, M do
		mt[(i-1)*M+j] = 0
	end
end
print("mt2")
for k, v in pairs(mt) do
	print(k, v)
end
