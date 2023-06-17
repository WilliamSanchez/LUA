--[[
entry{

   title = "Tecgraf",
   org = "Computer graphics Technology Group, PUC-Rio",
   url = "http://www.tecgraf.puc-rio.br/",
   contact = "Waldemar Celes",
   description = [[ 
        Tecgraf is teh result of a partnership between PUC-Rio, the Pontificial Catholic University of Rio de Janeiro,
        and <A HREF="http://www.petrobras.com.br/">, the Brazilian Oil Company.
        TecGraf is Lua's birthplace, and the language has been used there since 1993.
        Currently, more than thirty programmers in TecGraf use Lua regularity; they have programmers in 
        TecGraf use thousand lines of code, distributed among dozens of final products.]]        
--}
--]]

function unpack(t,i)
   i = i or 1
   if t[i] ~= nil then
      return t[i], unpack(t, i+1)
   end
end


function fwrite(fmt, ...)
  return io.write(string.format(fmt,unpack(arg)))
end


function BEGIN()
    io.write([[
         <HTML>
         <HEAD><TITLE>Proejct using Lua</HEAD>
         <BODY BGCOLOR="#FFFFFF">
         Here are brief descriptions of some projects around the
         world that use <A HREF="home.html">Lua</A>
         <BR>
    ]])
end

function entry0(o)
  N=N+1
  local title = o.title or '(no title)'
  fwrite('<LI><A HREF="#%d">%s</A>\n',N,title)
end

function entry1(o)
   
   N=N+1
   local title = o.title or o.org or 'org'
   fwrite('<HR>\n<H3>\n')
   local href = ''
   
   if o.url then
     href = string.format(' HREF="%s"', o.url)
   end 
   
   fwrite('<A NAME ="%d"%s>%s</A>\n',N,href,title)
   
   if o.title and o.org then
      fwrite('<BR>\n<SMALL><EM>%s</EM></SMALL>',o.org)
   end 
   fwrite('\n</H3>\n')
   
   if o.description then
      fwrite('%s', string.gsub(o.description,'\n\n\n*','<P>\n'))
      fwrite('</p>\n')
   end
   
   if o.email then
      fwrite('contact: <A HREF="mailto:%s">%s</A>\n',o.email, o.contact or o.email)
   elseif o.contact then
      fwrite('contact: %s\n',o.contact)         
   end
end

function END()
   fwrite('</BODY></HTML>\n')
end



BEGIN()

 N=0
 entry = entr0
 fwrite('<UL>\n')
 dofile('db.lua')
 fwrite('</UL>\n')
 
 N=0
 entry = entry1
 dofile('db.lua')

END()



























