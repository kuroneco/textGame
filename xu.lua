
-- a="one string"
-- b=string.gsub(a,"one","another")
-- print(a)
-- print(b)
-- print(bell)
-- print("a".."b")
-- print("b" .."a")
-- a,b,c,d=10,20,30
-- print(d)
-- h=10
-- e,f=g,h
-- print(f)
-- a=10一个全局变量
-- if aa>=10 then
-- 	local aa=11
-- 	print(aa)
-- end     --end结尾

-- a=100
-- if a>10 then
-- 	print("a>10")
-- else
-- 	print("a<10")
-- 	end

-- a=21
-- if(a>30)then
-- 	print("a>30")
-- elseif a>20 then
-- 	print("a>20")
-- elseif a>10 then
-- 	print("a>10")
-- else
-- 	print("...")
-- end

-- for var=1,3 do
-- 	print("aa")
-- end

-- function testHello()
-- 	print("hello world")
-- end
-- testHello()

-- function testHello()
-- 	return 100
-- end
-- a=testHello()
-- print(a)

-- function max(a,b)
-- 	if(a>b) then
-- 		return a
-- 	else
-- 		return b
-- 	end
-- end
-- var=max(10,20,30)
-- print(var)

-- function hello(a,b,c,d)
-- 	print(a)
-- 	print(b)
-- 	print(c)
-- 	print(d)
-- end
-- hello(10,20)--缺少的参数默认补齐为空

-- function test()--一个函数可以返回多个值
-- 	return 10,20,30
-- end
-- a,b,c,d=test()
-- print("a="..a)
-- print("b="..b)
-- print("c="..c)
-- print(d)
--如果返回值个数大于被赋值的个数，后面的自动忽略 a,b=test()
--反之输出空   a,b,c,d=test()

--函数可以接受可变个参数
-- function max(...)
-- 	print(a)
-- 	print(b)
-- 	print(c)
-- end
-- test(12,30,40)

-- function test( )
-- 	return 10,20,30
-- end
-- a,b,c,d=test(),100--相当于a=test(),b=100,后面的为空
-- print(a,b,c,d)
-- a,b,c,d=100,test()--相当于a=100  b,c,d=test()
-- print(a,b,c,d)
--如果函数后面没有其他的值，那么函数返回所有的值
--如果函数后面有其他的值，那么函数返回第一个值

-- 表的初始化
-- days={
-- 	"Sunday",--默认为1=“Sunday”
-- 	"Monday",--默认为2=“Monday”
-- 	"Tuesday",
-- 	"Wedensday"
-- }
-- print(days[0])
-- print(days[1])--下标是从1开始
-- days[1]="Sundays"
-- print(days[1])

-- a={x=10,y=20,z=300}
-- a.x=200--重新赋值
-- print(a["x"])
-- 创建一个空表进行添加
-- a={}
-- a.x=100--a["x"]=100
-- a["y"]=200--a.y=200
-- print(a.x)
-- print(a["y"])
-- 初始化的时候key不需要加引号
-- b={name="zhangsan",age=24,sex="boy"}
-- print(b.name)
-- print(b["name"])--这里key需要加引号
-- b.name="lisi"
-- print(b["name"])
-- b["name"]="wangwu"--这里key需要加引号
-- print(b.name)

-- days={[1]="100a","200b",[3]="300c"}
-- for k,v in ipairs(days) do--ipairs只能读取从1开始的连续的数字(必须要有1才能读取)
-- 	print(k,v)
-- end

-- arr={}
-- for i=1,10 do--在arr第一个位置插入变量i(1表示位置,i表示插入表中的值)
-- 	table.insert(arr,1,i)
-- end
-- for k,v in pairs(arr) do 
-- 	print(k,v)
-- end

local Point=dofile("sceond.lua")
local p1=Point:new(10, 20)
p1.test(p1)
p1:setTest(100, 200)
p1:test()

local p2=Point:new(666, 999)
p2:test()
p2.x=6868
p2.y=456
p2:test()