dofile("lib1.lua")


print("hello Lua TESTES")

--define a factorial function

--[[
  testing the langauje programming LUA
--]]

function fact (n)

  if n == 0 then
     return 1
   else
     return n*fact(n-1)
   end
end


print("Enter a number:")
a = io.read("*number")    --read a number
print(fact(a))

local days = {"Sunday","Monday","Tuesday","Wednesday","Thursady","Friday","Sayurday"}
local i = 1


for _,_ in pairs(days) do
   
   print(days[i])
   i=i+1
   
end

n = norm(4, 3)
print(twice(n))
