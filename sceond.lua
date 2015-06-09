--print("figthing")
--[[print(type("lucky"))
print(type(4546))
print(type(print))
print(nil)
print(type(nil))]]--
-- print(type(true))
-- print(type(type(nil)))
-- print(6 and 8)
-- print(nil and 8)
-- print(false and 8)
-- print(6 or 8)
-- print(not false)
-- print(not nil)
-- print(not 0)
-- print(0)

-- a="one string"
-- b=string.gsub(a, "one", "two")
-- print(b)
-- print("\a")
-- print("one ling\n next\"")
--同时对多个变量赋值
-- a,b,c=10,"good",nil
-- print(a)
-- print(b)
-- print(c)

--ab值的交换
-- a=10
-- b=20
-- a,b=b,a
-- print(a)
-- print(b)
--变量大于值的个数
-- a,b,c,d=10,20
-- print(a)
-- print(b)
-- print(c)
-- print(d)
--变量小于值的个数
-- a,b,c=10,20,30,40,50
-- print(a)
-- print(b)
-- print(c)

-- a=10 -- 全局变量
-- if a>=10 then
-- 	local aa = 20 --局部变量
-- 	print(aa)
-- end

-- a=20
-- if a>10 then
-- 	print("a>10")
-- 	else
-- 	print("a<10")
-- end

-- a=20
-- if a>10 then
-- 	print("a>10")
-- 	elseif a<10 then
-- 		print("a<10")
-- 		elseif a==10 then
-- 			print("a=10")
-- 		else
-- 			print("Nothing")
-- end
--从10开始到100，变量每次加20 第三的位置（即20的位置）不写的话默认为1
-- for i=10,100,20 do
-- 	if i==50 then
-- 		break
-- 	end
-- 	print(i)
-- end
--函数
--
-- function testhello(  )
-- --	print("hello")
--      return 100
-- end
--  a=testhello()
--  print(a)

-- function max( a,b )		
-- 	if a>b 	then
-- 		return a
-- 	else
-- 		return b
-- 	end
-- end

-- var=max(10,20)--实参多余行参多余部分补为nil 
-- print(var)
--返回值个数>被赋值个数，多余的被忽略  返回值个数<被赋值个数 多余的被赋值为nil
-- function test(  )
-- 	return 10,20,30
-- end

-- a,b,c=test()
-- print("a="..a)
-- print("b="..b)

--使用函数返回值进行赋值的时候 1.如果函数后没有其他值，那么函数返回所有的值2.如果函数后有其他值，那么函数只返回第一个值
--表的初始化
--  days={
--  "a",
--  "b",
--  "c",
--  "d"
-- }
-- print(days[1])
-- print(days[2])
-- days[2]="Lucky"
-- print(days[2])
--表的初始化
-- a={x=10,y=20,z=300}
-- a.x=99--对表a中的x元素进行重新赋值
-- print(a["x"])

-- a={}
-- a.x=100
-- a["y"]=200
-- print(a["x"])
-- print(a.y)

-- b={d="a",c="b",b="c",a="d"}
-- for k,v in pairs(b) do
-- 	print(k,v)
-- end

--插入
-- arr={}
-- for i=1,10 do--在arr表中的第一个位置插入变量
-- 	table.insert(arr,1,i)--arr 插入的表 1 插入的位置 i  插入表中的值
-- end

-- for k,v in pairs(arr) do
-- 	print(k,v)
-- end
--两个表相加
-- local mt={}
-- mt.__add=function( t1,t2 )
-- 	print("两个元表相加会调用我")
-- end
-- local t1={}
-- local t2 = {}
-- setmetatable(t1, mt)
-- setmetatable(t2, mt)
-- local result=t1+t2

-- local mt={}
-- mt.__add=function(s1,s2)
--  local result=""
--  if s1.sex=="boy" and s2.sex=="gril" then
-- 	result="boy merry gril"
--  elseif s1.sex=="boy" and s2.sex=="boy" then
-- 	result="hahah"
--  else
-- 	result="kkk"
--     end
--     return result
-- end

-- local sn1={name="hello",sex="boy"}
-- local sn2={name="world",sex="gril"}
-- setmetatable(sn1, mt)
-- setmetatable(sn2, mt)
-- local result1=sn1+sn2
-- print(result1)

-- local mt={}
-- mt.__eq=function(s1,s2)
--  local result
--   if s1.sex=="boy" and s2.sex=="gril" then
-- 	result =true
--   elseif s1.sex=="boy" and s2.sex=="boy" then
-- 	result =false
--   else
-- 	result=false
--   end
--  return result
--  end

--  local s1={name="hello",sex="boy"}
--  local s2={name="world",sex="boy"}
--  setmetatable(s1, mt)
--  setmetatable(s2, mt)
--  local result1 =(s1==s2)
--  print(result1)

-- local t={name="Kate"}
-- -- local mt={}--一种写法
-- -- mt.__index=function()
-- -- print("no....")
-- -- end
-- local mt={--另一种写法
-- 	__index=function(table,key)
-- 	 print(table.name)
-- 	 print(key)
-- 	print("No....")
-- end
-- }
-- setmetatable(t, mt)--如果t表中不存在的key值，那么就会到元表中查找——index 来执行——index的元方法
-- print(t.age)

-- 如果这个——index元方法是一个table的话，就会在这个table里查找字段，并调用
-- local t={
-- 	name="wanger"
-- }
-- local mt={
-- 	__index={
-- 	money="90"
-- }
-- }
-- local mt1={
-- 	money="999"
-- }
-- mt1.__index=t
-- setmetatable(t, mt)
-- print(t.money)


-- local smartMan={
-- 	name="zhangsan",
--     age=25,
--     money=900000,
--     sayHello=function()
--     print("Hello EveryBody")
-- end
-- }
-- local t1={}
-- local t2={}
-- local mt={
-- 	__index=smartMan
-- }
-- setmetatable(t1, mt)
-- setmetatable(t2, mt)
-- print(t1.money)
-- print(t2.age)
-- t1.sayHello()
-- t2.sayHello()


--  local smartMan={
--  	name="zhangsan",
--      age=25,
--      money=900000,
--     sayHello=function()
--      print("Hello EveryBody")
--  end
-- }
-- local t1={
-- 	name="zhangsan"
-- }
-- local mt={
-- 	__index=smatrMan,
-- 	__newindex=function(table,key,value)
-- 	print(table.name)
-- 	print(key)
-- 	print(value)
-- end
-- }
-- setmetatable(t1, mt)
-- t1.sayHello=function(t1,mt)
-- end
-- t1.sayHello=function()
-- print("Hello")
-- end
-- t1.sayHello()

-- local smartMan={
-- 	name="none"
-- }
-- local other={
-- 	name="GOOD LUCKY!"
-- }
-- local t1={}
-- local mt={
-- 	__index=smartMan,
-- 	__newindex=other
-- }
-- setmetatable(t1, mt)
-- print("other的名字，赋值前："..other.name)
-- t1.name="Beautiful"
-- print("other的名字，赋值前："..other.name)
-- print("t1的name："..t1.name)

-- local smartMan={
-- 	name="one"
-- }
-- local t1={
-- 	hehe=123
-- }
-- local mt={
-- 	__index=smartMan,
-- 	__newindex=function ( t,k,v )
-- 		print("别赋值！")
-- 	end
-- }
-- setmetatable(t1, mt)
-- print(rawget(t1, "name"))--忽略元表的功效，单纯的从t1中查找
-- print(rawget(t1, "hehe"))--忽略元表的功效，单纯的从t1中查找
-- rawget(t1, "name","小偷")--忽略——newindex功能，直接在t1中插入key value
-- print(t1.name)

-- for n in pairs(_G) do
-- 	print(n)
-- end

--面向对象1
-- TSprite={x=0,y=0}
-- function TSprite.setPosition( self,x,y )
-- 	self.x=x
-- 	self.y=y
-- end

-- function TSprite.prints( self )
-- 	print(self.x)
-- 	print(self.y)
-- end

-- local who=TSprite
-- TSprite=nil
-- who.setPosition(who,1,2)
-- who.prints(who)

--2
-- TSprite={x=0,y=0}
-- function TSprite:setPosition(x,y )
-- 	self.x=x
-- 	self.y=y
-- end
-- function TSprite:prints()
-- 	print(self.x)
-- 	print(self.y)
-- end
-- TSprite:prints()
-- TSprite:setPosition(10,20)
-- TSprite:prints()

--3
-- TSprite={x=0,y=0}

-- function TSprite:new( a,b )--构造函数
-- 	self.x=a
-- 	self.y=b
-- end

-- function TSprite:setPosition( a,b )--set函数
-- 	self.x=a
-- 	self.y=b
-- end

-- function TSprite:getX( )--get函数
-- 	return self.x
-- end

-- function TSprite:print(  )
-- 	print(self.x)
-- 	print(self.y)
-- end

-- TSprite:new(55,66)
-- TSprite:print()
-- TSprite.setPosition(TSprite,11,22)
-- TSprite.print(TSprite)
-- print(TSprite:getX())
-- print(TSprite.getX(TSprite))

local Point={}
function Point:new( x,y )
	local temp={}
	setmetatable(temp, Point)
	self.__index=self
	self.x=x
	self.y=y
	return temp
end

function Point:test( )
	print(self.x)
	print(self.y)
end

function Point:setTest(x,y)
	self.x=x
	self.y=y
end

return Point
