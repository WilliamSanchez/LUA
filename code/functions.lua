-- Multiples result

function maximum (a)
   
    local mi = 1
    local m = a[mi]
    for i, val in ipairs(a) do
        if val > m then
           mi = i
           m = val
        end
     end
     
     return m, mi
end

x,y = maximum({8,10,23,12,5,15})
print("Numero "..x.." Pos "..y)


-- unpack

function unpack(t,i)
   i = i or 1
   if t[i] ~= nil then
      return t[i], unpack(t, i+1)
   end
end

print(unpack{10,20,30})
a,b = unpack{10,20,30}
print(a)
print(b)
           

--[[

w = Window{x=0, y=0, width=300, height=200, title="lua", background = "blue", border = true}


function Window(options)

    if type(options.title) ~= "string" then
      error("no title")
    elseif type(options.width) ~= "number" then
       error("no width") 
    elseif type(options.height) ~= "number" then
      error("no height")
    end
     
    _Window(options.title,
            options.x or 0,
            options.y or 0,
            options.width, options.height,
            options.background or "white",
            options.border 
    	   )

end

Windows(w)

]]--

function eraseTerminal()
  io.write("\27[2J")
end

-- writes an * at column x , row y

function mark(x,y)
  io.write(string.format("\27[%d;%dH*",y,x))
end

-- Terminal size

TermSize = {w=80, h=24}

-- plot a function
-- (assume that domain and image are the range [-1,1])

function plot(f)
   eraseTerminal()
   for i =1, TermSize.w do
      local x = (i/TermSize.w)*2-1
      local y = (f(x)+1)/2*TermSize.h
      mark(i, y)
   end
   io.read() -- wait before spolinig the screen
end

--plot(function(x) return math.sin(x*2*math.pi) end)
--plot(0.5)


--a = {p = print}
--a.p("Hello world")
--print = math.sin
--a.p(print(1))
--sin = a.p
--sin(10,20)

foo = function(x) return 2*x end
print("Function "..foo(50))

network = {
   {name="grauna", IP="210.26.30.34"},
   {name="arraial", IP="210.26.30.23"},
   {name="lua", IP="210.26.23.12"},
   {name="derain", IP="210.26.23.20"},  
}

table.sort(network, function(a,b) return (a.name > b.name) end)





























      
           
           
