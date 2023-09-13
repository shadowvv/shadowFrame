--------------------
--kun 2022.04.14
--------------------

local luautil = luautil
local DebugComponentImmutable = require("Common.ECS.Debug.DebugComponentImmutable")
--[[
    ECS 中继者类, 统筹 Entity / System / Snapshot / Rollback
]]

local ECS = class(nil, "ECS")
ECS.MessageCenter = require("Common.ECS.MessageCenter")

function ECS:ctor()

    self.Entity={} --Singleton Entity Getters; --dic<string, Entity>
    self._entityAlias = {} --dir<eid, string>

    self._entities = {} --dic<eid, Entity>
    self._entityGroups = {} --dic<system, list<eid>>
    self._entityPool = {} --dic<comMask, list<eid>>
    self._regroupEntities = {}
    self._removedEntities = {}
    self._systems = {}
    self._singletonEntities = {} --dic<eid, Entity>
    
    self._needRegroup = false
    self._needRemove = false
    
    self._snapshotCreator = require("Common.ECS.Snapshot.SnapshotCreator").New()
    self._snapshotHistory = require("Common.ECS.Snapshot.SnapshotHistory").New()
    self._stopwatch = require("Common.Stopwatch").New()
end

function ECS:Release()

    self._snapshotCreator = nil
    self._snapshotHistory = nil
    self._stopwatch = nil

    for eid, entity in pairs(self.Entity) do
        entity:Release()
    end
    for eid, entity in pairs(self._entities) do
        entity:Release()
    end
    self._entities = nil
    self._removedEntities = nil
    self._regroupEntities = nil

    for i=1, #self._systems do
        self._systems[i]:Release()
    end
end

function ECS:AddSystem(system)
    --[[debug_ecs_1]]--print("[ECS]ECS:AddSystem", system.__cname, string.format("0x%x",system:GetRequiredMask()))
    self._systems[#self._systems+1]=system
    local requiredMask = system:GetRequiredMask()
    if requiredMask ~= 0 then
        self._entityGroups[requiredMask]={}
    end
    system:SetECS(self)
end

function ECS:AddEntity(entity, syncID, alias)
    --[[debug_ecs_1]]--print("[ECS]ECS:AddEntity", entity.__cname, entity:GetEID(), syncID, alias)
    local eid = entity:GetEID()
    if self._entities[eid] then
        error("[ECS]ECS:AddEntity exist", eid)
    end
    self._entities[eid] = entity

    if alias then
        --通过别名访问的Entity需要从group机制中分离出来;
        --因为这类Entity的 com_type 一般会自行定义.
        self:_SetEntityAlias(entity, alias)
    else
        self._regroupEntities[eid] = entity
        self._removedEntities[eid] = nil
        self._needRegroup = true
    end
end

function ECS:RemoveEntity(eid)
    --[[debug_ecs_1]]--print("[ECS]ECS:RemoveEntity", eid)
    if self._entities[eid] == nil then
        error("[ECS]ECS:RemoveEntity not exist", eid)
    end
    self:_ClearEntityAlias(eid)
    self._removedEntities[eid] = self._entities[eid]
    self._regroupEntities[eid] = nil
    self._entities[eid] = nil
    self._needRemove = true
end

function ECS:GetEntity(eid)
    return self._entities[eid]
end

function ECS:IterateEntity(invoker, func, ...)
    for eid, e in pairs(self._entities) do
        luautil.SafeInvoke(invoker, func, e, ...)
    end
end

function ECS:_SetEntityAlias(entity, alias)
    --[[debug_ecs_1]]--print("[ECS]ECS:_SetEntityAlias", alias, entity:GetEID(), entity.__cname)
    if self.Entity[alias] then
        error("[ECS]ECS:_SetEntityAlias, alias already exist!", alias, entity.__cname)
    end
    local eid = entity:GetEID()
    self.Entity[alias] = entity
    self._entityAlias[eid] = alias
end

function ECS:_ClearEntityAlias(eid)
    --[[debug_ecs_1]]--print("[ECS]ECS:_ClearEntityAlias", eid, self._entityAlias[eid])
    local alias = self._entityAlias[eid]
    if alias then
        self.Entity[alias] = nil
        self._entityAlias[eid] = nil
    end
end

--[[
function ECS:GetSingletonEntity() like below:
local e = ECS.Entity.getterName
do something with e...
]]

function ECS:Update(deltaTime)
    self:_UpdateIncoming(deltaTime)
    self:_Update(deltaTime)
    self:_UpdateOutGoing(deltaTime)
end

function ECS:_UpdateIncoming(deltaTime)
    --add/remove entities
    self:_UpdatePaddings()
    --dispatch msg
    self:_UpdateIncomingDispatch()
end

function ECS:_Update(deltaTime)
    --all system update 
    self:_UpdateSystem(deltaTime)
end

function ECS:_UpdateOutGoing(deltaTime)
    --dispatch msg
    self:_UpdateOutGoingDispatch()
    --save history
    self:_UpdateSnapshotHistory(deltaTime)
end

function ECS:_UpdatePaddings()
    if self._needRegroup then
        for eid, e in pairs(self._regroupEntities) do
            self:_AddToGroup(e)
        end
        self._needRegroup = false
    end
    if self._needRemove then
        for eid, e in pairs(self._removedEntities) do
            self:_RemoveFromGroup(e)
            e:Release()
        end
        self._needRemove = false
    end
end

function ECS:_UpdateIncomingDispatch()
    self:_UpdateDispatch(1)
end

function ECS:_UpdateOutGoingDispatch()
    if self:_UpdateDispatch(50) == false then
        -- high likely occurred a endless loop
        -- discard all remain message
        self.MessageCenter:Discard()
    end
end

function ECS:_UpdateDispatch(endlessCount)
    local loop_error = endlessCount > 1
    local ret = true
    while self.MessageCenter:GetCount() > 0 do
        self:_DispatchMessage()
        endlessCount = endlessCount -1
        if endlessCount == 0 and loop_error then
            error("MessageCenter:Dispatch more than "..tostring(endlessCount).." times in one frame update! MessageCount="..tostring(self.MessageCenter:GetCount()))
            ret = false
            break
        end
    end
    return ret
end

function ECS:_DispatchMessage()
    DebugComponentImmutable.__ECS_DispatchMessage_EnableMutable(true)
    self.MessageCenter:Dispatch()
    DebugComponentImmutable.__ECS_DispatchMessage_EnableMutable(false)
end

function ECS:_UpdateSystem(deltaTime)
    for i=1, #self._systems do
        local system = self._systems[i]
        local requiredMask = system:GetRequiredMask()
        if requiredMask == 0 then
            ---[[debug_ecs_3]]print("[ECS]ECS:_UpdateSystem / Alias Entity-System", system.__cname)
            --system自己取 ECS.Entity.alias里的Entity
            system:Update(nil, deltaTime)
        else
            local group = self._entityGroups[requiredMask]
            if group then
                ---[[debug_ecs_3]]print("[ECS]ECS:_UpdateSystem / Entity-System", system.__cname, "requiredMask", string.format("0x%x",requiredMask), "groupCount", table.count(group))
                --lua里的remove性能太差了,只能用pairs来遍历了;
                for eid, e in pairs(group) do
                    system:Update(e, deltaTime)
                end
            else
                ---[[debug_ecs_3]]print("[ECS]ECS:_UpdateSystem / Entity-System, no entity add to group/ecs!", system.__cname, "requiredMask", string.format("0x%x",requiredMask))
            end
        end
    end
end

function ECS:_UpdateSnapshotHistory(deltaTime)
    self._stopwatch:increase(deltaTime)
    local time = self._stopwatch:stop()
    local ecsSnapshot = self._snapshotCreator:CreateSnapshot(self)
    self._snapshotHistory:Push(time, ecsSnapshot, 2) --保存10秒的history
end


function ECS:_AddToGroup(entity)
    local eid = entity:GetEID()
    for i=1, #self._systems do
        local system = self._systems[i]
        if system:CheckRequired(entity) then
            local group = self._entityGroups[system:GetRequiredMask()]
            group[eid]=entity
            ----[[debug_ecs_2]]print("[ECS]ECS:_AddToGroup", system.__cname, "requiredMask", string.format("0x%x",system:GetRequiredMask()), "eid", eid, string.format("0x%x",entity:GetComponentMask()))
        else
            ----[[debug_ecs_2]]print("[ECS]ECS:_AddToGroup Failed", system.__cname, "requiredMask", string.format("0x%x",system:GetRequiredMask()), "eid", eid, string.format("0x%x",entity:GetComponentMask()))
        end
    end
end

function ECS:_RemoveFromGroup(entity)
    local eid = entity:GetEID()
    for i=1, #self._systems do
        local system = self._systems[i]
        if system:CheckRequired(entity) then
            local group = self._entityGroups[system:GetRequiredMask()]
            group[eid]=nil
            ----[[debug_ecs_2]]print("[ECS]ECS:_RemoveFromGroup", system.__cname, "requiredMask", string.format("0x%x",system:GetRequiredMask()), "eid", eid, string.format("0x%x",entity:GetComponentMask()))
        else
            ----[[debug_ecs_2]]print("[ECS]ECS:_RemoveFromGroup Failed", system.__cname, "requiredMask", string.format("0x%x",system:GetRequiredMask()), "eid", eid, string.format("0x%x",entity:GetComponentMask()))
        end
    end
end

return ECS