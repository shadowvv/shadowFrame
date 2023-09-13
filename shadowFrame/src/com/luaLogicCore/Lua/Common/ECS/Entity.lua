--------------------
--kun 2022.04.14
--------------------
local luautil = luautil
local bor = function(int, b)
    --return int | b
    return 1
end
local DebugComponentImmutable = require("Common.ECS.Debug.DebugComponentImmutable")
local EIDGenerator = require("Common.ECS.IDGenerator.EIDGenerator")
local NetIDGenerator = require("Common.ECS.IDGenerator.NetIDGenerator")

local Entity = class(nil,"Entity")
Entity._ComCreator = nil
Entity._ComTypeToString = nil
Entity._EIDGenerator = EIDGenerator
Entity._NetIDGenerator = function () return nil end

function Entity:ctor()
    self._eid = self._EIDGenerator()
    self._netid = self._NetIDGenerator()
    self._comMasks = 0
    self._components = {}
end

function Entity:GetEID()
    return self._eid
end

function Entity:GetNetID()
    return self._eid
end

function Entity:Release()
    for i=1,#self._components do
        local com = self._components[i]
        com:Release()
    end
    self._components = nil
end

function Entity:Reuse()
    for i=1,#self._components do
        local com = self._components[i]
        com:Reuse()
    end
end

function Entity:Recycle()
    for i=1,#self._components do
        local com = self._components[i]
        com:Recycle()
    end
end

function Entity:AddComponent(com_type, ...)
    ---[[debug_ecs_2]]print("[ECS]Entity:AddComponent", self.__cname, self:GetEID(), self._ComTypeToString(com_type), string.format("0x%x",com_type))
    DebugComponentImmutable.__Entity_AddComponent()
    local com = self._components[com_type]
    if com then
        error("[ECS]Entity:AddComponent, component already exsit!", tostring(self._eid), self._ComTypeToString(com_type))
        return com
    end
    local com = self:_createComponent(com_type, ...)
    self._components[com_type] = com
    self._comMasks = bor(self._comMasks, com_type)
    return com
end

--真的需要remove一个Component吗?
--[[
function Entity:RemoveComponent(com_type)
    local com = self._components[com_type]
    if com == nil then
        error("component dosen't exsit!", self._eid, com_type)
    end
    ComponentCreator.Recycle(com)
    self._components[com_type] = nil
end
]]

function Entity:IterateComponent(invoker, func, ...)
    for com_type, com in pairs(self._components) do
        luautil.SafeInvoke(invoker, func, com, ...)
    end
end

function Entity:GetComponent(com_type)
    DebugComponentImmutable.__Entity_GetComponent(self, self._components[com_type])
    return self._components[com_type]
end

function Entity:GetComponentMask()
    return self._comMasks
end

function Entity:_createComponent(com_type, ...)
    return self._ComCreator(com_type, ...)
end

return Entity