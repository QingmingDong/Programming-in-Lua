
function Set (list)
	local set = {}
	for _, l in ipairs(list) do set[l]=true end
	return set
end

reserved = Set{"while", "end", "function", "local", }
for k, v in pairs(reserved) do
	print(k, v)
end

function insert (bag, element)
	bag[element] = (bag[element] or 0) + 1
end
function remove (bag, element)
	local count = bag[element]
	bag[element] = (count and count > 1) and count -1 or nil
end
bag = {}
insert(bag, "end")
insert(bag, "end")
insert(bag, "end")
insert(bag, "local")
for k, v in pairs(bag) do
	print(k, v)
end

