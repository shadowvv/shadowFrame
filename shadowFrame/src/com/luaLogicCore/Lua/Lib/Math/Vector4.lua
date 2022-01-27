---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/11 18:56
--- Describe:
---


local clamp	= Mathf.Clamp
local sqrt	= Mathf.Sqrt
local min	= Mathf.Min
local max 	= Mathf.Max
local setmetatable = setmetatable
local rawget = rawget

---@class Vector4 : table
Vector4 = {}

Vector4.__index = function(_table, _key)
	if _key == "magnitude" then
		return Vector4.Magnitude(_table)
	elseif _key == "normalized" then
		return Vector4.Normalize(_table)
	elseif _key == "sqrMagnitude" then
		return Vector4.SqrMagnitude(_table)
	else
		return rawget(Vector4, _key)
	end
end

Vector4.__call = function(t, x, y, z, w)
	return setmetatable({x = x or 0, y = y or 0, z = z or 0, w = w or 0}, Vector4)		
end

function Vector4.New(x, y, z, w)	
	return setmetatable({x = x or 0, y = y or 0, z = z or 0, w = w or 0}, Vector4)		
end

local _new = Vector4.New

function Vector4:Set(x,y,z,w)
	self.x = x or 0
	self.y = y or 0	
	self.z = z or 0
	self.w = w or 0
end

function Vector4:Get()
	return self.x, self.y, self.z, self.w
end

function Vector4.Lerp(from, to, t)    
    t = clamp(t, 0, 1)
    return Vector4.New(from.x + ((to.x - from.x) * t), from.y + ((to.y - from.y) * t), from.z + ((to.z - from.z) * t), from.w + ((to.w - from.w) * t))
end    

function Vector4.MoveTowards(current, target, maxDistanceDelta)    
	local vector = target - current
	local magnitude = vector:Magnitude()	
	
	if magnitude > maxDistanceDelta and magnitude ~= 0 then     
		maxDistanceDelta = maxDistanceDelta / magnitude
		vector:Mul(maxDistanceDelta)   
		vector:Add(current)
		return vector
	end
	
	return target
end

function Vector4.Scale(a, b)    
    return Vector4.New(a.x * b.x, a.y * b.y, a.z * b.z, a.w * b.w)
end    

function Vector4:SetScale(scale)
	self.x = self.x * scale.x
	self.y = self.y * scale.y
	self.z = self.z * scale.z
	self.w = self.w * scale.w
end

function Vector4:Normalize()
	local v = Vector4.New(self.x, self.y, self.z, self.w)
	return v:SetNormalize()
end

function Vector4:SetNormalize()
	local num = self:Magnitude()	
	
	if num == 1 then
		return self
    elseif num > 1e-05 then    
        self:Div(num)
    else    
        self:Set(0,0,0,0)
	end 

	return self
end

function Vector4:Div(d)
	self.x = self.x / d
	self.y = self.y / d	
	self.z = self.z / d
	self.w = self.w / d
	
	return self
end

function Vector4:Mul(d)
	self.x = self.x * d
	self.y = self.y * d
	self.z = self.z * d
	self.w = self.w * d	
	
	return self
end

function Vector4:Add(b)
	self.x = self.x + b.x
	self.y = self.y + b.y
	self.z = self.z + b.z
	self.w = self.w + b.w
	
	return self
end

function Vector4:Sub(b)
	self.x = self.x - b.x
	self.y = self.y - b.y
	self.z = self.z - b.z
	self.w = self.w - b.w
	
	return self
end

function Vector4.Dot(a, b)
	return a.x * b.x + a.y * b.y + a.z * b.z + a.w * b.w
end

function Vector4.Project(a, b)
	local s = Vector4.Dot(a, b) / Vector4.Dot(b, b)
	return b * s
end

function Vector4.Distance(a, b)
	local v = a - b
	return Vector4.Magnitude(v)
end

function Vector4.Magnitude(a)
	return sqrt(a.x * a.x + a.y * a.y + a.z * a.z + a.w * a.w)
end

function Vector4.SqrMagnitude(a)
	return a.x * a.x + a.y * a.y + a.z * a.z + a.w * a.w
end

function Vector4.Min(lhs, rhs)
	return Vector4.New(max(lhs.x, rhs.x), max(lhs.y, rhs.y), max(lhs.z, rhs.z), max(lhs.w, rhs.w))
end

function Vector4.Max(lhs, rhs)
	return Vector4.New(min(lhs.x, rhs.x), min(lhs.y, rhs.y), min(lhs.z, rhs.z), min(lhs.w, rhs.w))
end

Vector4.__tostring = function(self)
	if self.x ~= nil and self.y ~= nil and self.z ~= nil and self.w ~= nil then
		return string.format("[%f,%f,%f,%f]", self.x, self.y, self.z, self.w)
	else
		return "vector4 contain nil"
	end
end

Vector4.__div = function(va, d)
	return Vector4.New(va.x / d, va.y / d, va.z / d, va.w / d)
end

Vector4.__mul = function(va, d)
	return Vector4.New(va.x * d, va.y * d, va.z * d, va.w * d)
end

Vector4.__add = function(va, vb)
	return Vector4.New(va.x + vb.x, va.y + vb.y, va.z + vb.z, va.w + vb.w)
end

Vector4.__sub = function(va, vb)
	return Vector4.New(va.x - vb.x, va.y - vb.y, va.z - vb.z, va.w - vb.w)
end

Vector4.__unm = function(va)
	return Vector4.New(-va.x, -va.y, -va.z, -va.w)
end

Vector4.__eq = function(va,vb)
	local v = va - vb
	local delta = Vector4.SqrMagnitude(v)	
	return delta < 1e-10
end


local _global_one = _new(1,1,1,1)
Vector4.one = _global_one
function Vector4.one_global()
	return _global_one
end

function Vector4.one_local()
	return _new(1,1,1,1)
end

local _global_zero = _new(0,0,0,0)
Vector4.zero = _global_zero
function Vector4.zero_global()
	return _global_zero
end

function Vector4.zero_local()
	return _new(0,0,0,0)
end

return Vector4