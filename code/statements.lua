x = 10
local i = 1

while i<=x do
  local x=i*2   -- local to the while body
  print("[" .. x .. "]")
  i=i+1
end
 
if i > 20 then
  x = 20
  print(x+2)
else
  print(x)
end

-- print the first non-empty line

repeat 
  line = io.read()
until line ~= ""
print(line)

-- for number

for i=10,1,-1 do print(i) end


--find a value in a list
local found = nil
a = {}
k="n"
a[k] = 10

for i=1,a.n do

  if a[i] == value then
      found = i
      break
  end
end

print("econtrado "..found)


-- Generic for

days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}

--[[
revDays = {["Sunday"] = 1, ["Monday"] = 2, 
           ["Tuesday"] = 3, ["Wednesday"] = 4, 
           ["Thursday"] = 5, ["Friday"] =6 , ["Saturday"] = 7}
           
x = "Tuesday"
print(revDays[x])
--]]
           


revDays = {}
for i,v in ipairs(days) do
  revDays[v] = i
end

print(revDays["Friday"])

-- read 10 lines storing them in a table

b = {}
for i=1,10 do
  b[i] = io.read()
end

for i=10,1,-1 do
    print(b[i])
end







