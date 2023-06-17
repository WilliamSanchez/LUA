co = coroutine.create(function() print("hi") end)
print(co)

print(coroutine.status(co))

coroutine.resume(co)

print(coroutine.status(co))

co = coroutine.create(function()
  			for i=1,10 do
  			print("co",i)
  			coroutine.yield()
  			end
  		      end)
  		      
 coroutine.resume(co)
 coroutine.resume(co)
 coroutine.resume(co)
 coroutine.resume(co)
 coroutine.resume(co)
 coroutine.resume(co)
 coroutine.resume(co)
 coroutine.resume(co)
 coroutine.resume(co)	
 coroutine.resume(co)
 coroutine.resume(co)
 coroutine.resume(co)
 
 
 co = coroutine.create(function(a,b) coroutine.yield(a+b,a-b) end)
 print(coroutine.resume(co,20,50))
 
 --[[
 
 function receive(prod)
    local status, value = coroutine.resume(prod)
    return value  
 end
 
 function send(x)
    coroutine.yield(x)
 end
 
 
 function producer()
    return coroutine.create(function()
                                while true do
                                   local x = io.read()
                                   send(x)
                                end
                             end)
 end
 
 function filter(prod)
     return coroutine.create(function()
     			        local line = 1
     			        while true do 
     			           local x = receive(prod)
     			           x = string.format("%5d %s", line, x)
     			           send(x)
     			           line = line + 1
     			        end
     			      end)
 
 end
 
 function consumer(prod)
    while true do
       local x = receive(prod)
       io.write(x,"\n")
    end 
 end
 
 
 consumer(filter(producer()))
 
 ]]--
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 	      
