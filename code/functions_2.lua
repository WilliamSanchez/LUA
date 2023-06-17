function newCounter()
  local i=0
  return function ()
           i=i+1
           return i
         end  
end


c1 = newCounter()
print(c1())
print(c1())

print("------")
c2 = newCounter();
print(c2())
print(c1())
print(c2())

function digiButton(digit)
    return Button{ label = digit,
                   action = function()
                                add_to_display(digit)
                            end
                 }
end 

Lib={}

Lib.foo = function(x,y) return x+y end
Lib.goo = function(x,y) return x-y end

print(Lib.foo(12,7))
print(Lib.goo(7,12))

----------------------------------------

function allwords()
    local line = io.read()
    local pos = 1
    return function()
              while line do 
                   local s,e = string.find(line,"%w+",pos)
                   if s then
                       pos = e+1
                       return string.sub(line,s,e)
		   else
		       line = io.read()
		       pos = 1
		   end  
                end
            return nil
     end
end



for word in allwords() do
    print(word)
end













