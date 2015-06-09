
local Child=dofile("Parent.lua")
function Child:new( o)
	print("Child:new")
	o=o or {}
	setmetatable(o, self)
	self.__index=self
	return o
end

function Child:setBalance(o)
	print("Child:setBalance")
	self.balance=o
end

function Child:test1( )
	print("Child:test1")
	print(self.balance)
end

return Child