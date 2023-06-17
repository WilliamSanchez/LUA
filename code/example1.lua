--[[

require "luasocket"

host = "www.w3.org"
file = "/TR/REC-html32.html"

c = assert(socket.connect(hos,80))

c:send("GET".. file .. "HTTP/1.0\r\n\r\n")

c:close()

]]--


a = {}

print("0 next => ".. type(a))

k = 'link-supported'
a[k] = 10

print("1 next => ".. next(a))

a['link'] =  25

print("value of a['link-supported'] "..a['link-supported'])
print("type of type(a['link']) "..type(a['link']))
print("2 next => ".. next(a))


if not nil then    -- nil is false
  print("nil is false")
end

if not a['lank'] then   -- a['lank'] not exist
   print("a['lank'] not exist")
   a['lank'] = nil
end

print("a[lank] = "..tostring(a['lank']))

p = true

if p then  -- iqual to p == true
   print("p is true")
end

print("3 next => ".. next(a))

a['lank'] = 55

print("4 next => ".. next(a))

a['lonk'] = nil

print("5 next => ".. next(a).." type "..type(next(a)))

a['lonk'] = 5087

print("6 next => ".. next(a))

a[11] = nil

print("7 next => ".. next(a).." type "..type(next(a)))

a[11] = 1

print("8 next => ".. next(a))


