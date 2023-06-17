-- DATA STRUCTURES


-- linked list
--[[ 
list = {next = list, value =  v}

local l = list
l.value = 10
while l do
  print(l.value)
  l = l.next
end
]]--  
-- Queues and double queues 
List = {}

function List.new()
   return {first=0, last = -1}
end

function List.pushleft(list, value) 
--    local first = list.first - 1
    print(list.first)
--    list.first = first
--    list[first] = value
end


function List.pushright(list,value)
    local last = list.last+1
    list.last = last
    list[last] = value
end

function List.popleft(list)
  local first = list.first
  if first > list.last then error("list is empty") end
  local value = list[first]
  list[first] = nil
  list.first = first + 1
  return value
end

function List.popright(list)
  local last = list.last
  if list.first > last then error("list is empty") end
  local value = list[last]
  list[last] = nil
  list.last = last -1 
  return value
end


myList = List
myList.new() 
print(myList.first)
print(myList.pushleft(myList,10))






