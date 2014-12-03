
list = nil
for v=1, 10 do
	list = {next=list, value = v}
end
local l = list
while l do
	print(l.value)
	l=l.next
end
