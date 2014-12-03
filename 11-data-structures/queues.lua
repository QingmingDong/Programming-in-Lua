List = {}
function List.new ()
	return {first = 0, last = -1}
end
function List.pushfirst (list, value)
	local first = list.first - 1
	list.first = first
	list[first] = value
end
function List.pushlast (list, value)
	local last = list.last + 1
	list.last = last
	list[last] = value
end
function List.popfirrst (list)
	local first = list.first
	if first > list.last then error("list is empty") end
	local value = list[first]
	list[first] = nil
	list.first = first + 1
	return values
end
function List.poplast (list)
	local last = list.last
	if list.first > last then error("list is empty") end
	local value = list[last]
	list[last] = nil
	list.last = last - 1
	return values
end

list = List.new()
for k, v in pairs(list) do
	print(k, v)
end
for i = 1, 10 do
	List.pushfirst(list, i)
	List.pushlast(list, i)
end
for i = list.first, list.last do
	print(list[i])
end
