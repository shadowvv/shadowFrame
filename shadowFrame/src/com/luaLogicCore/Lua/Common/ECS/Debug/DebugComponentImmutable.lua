--------------------
--kun 2022.04.28
--------------------

local SnapshotComparer = require("Common.ECS.Snapshot.SnapshotComparer")

--note by kun 2022.04.28
--除了MessageCenter:Dispatch阶段, 其他时候Component都是immutable的.
--保障immutable的方式是通过在IsDevlopment环境下比对每次GetComponent的snapshot(低效).
local DebugComponentImmutable = {}
local __ENABLE__DEBUG = true
local __mutable = false
local __immutableSnapshot = {}


function DebugComponentImmutable.__Entity_AddComponent(e, com_type)
    if not __ENABLE__DEBUG then return end
    
    if not __mutable then
        error(string.format("[ECS]Component Mutable Error: Entity(%s(%d))'s AddComponent(%s) can only called in a message handling progress!", e.__cname, e:GetEID(), e._ComTypeToString(com_type)))
    end
end


function DebugComponentImmutable.__Entity_GetComponent(e, com)
    if not __ENABLE__DEBUG then return end

    if com == nil then return end

    local entityImmutableSnapshot = __immutableSnapshot[e:GetEID()]
    if entityImmutableSnapshot == nil then
        entityImmutableSnapshot = {}
        __immutableSnapshot[e:GetEID()] = entityImmutableSnapshot
    end
    
    local stub = entityImmutableSnapshot[com.Type]
    if __mutable then
        entityImmutableSnapshot[com.Type] = nil
    else
        if not stub then
            stub = {[1]=com:SaveSnapshot(), [2]=debug.traceback()}
            entityImmutableSnapshot[com.Type] = stub
        else
            local lastImmutable = stub[1]
            local lastGetStack = stub[2]
            local snapshot = com:SaveSnapshot()
            if not SnapshotComparer.Equals(snapshot, lastImmutable) then
                error(string.format("[ECS]Component Mutable Error: Entity(%s(%d))'s component(%s) has been modified since last GetComponent called, \nGetComponent %s", e.__cname, e:GetEID(), e._ComTypeToString(com.Type), lastGetStack))
            else
                stub[2] = debug.traceback()
            end
        end
    end
end

function DebugComponentImmutable.__ECS_DispatchMessage_EnableMutable(enable)
    if not __ENABLE__DEBUG then return end

    __mutable = enable
end

return table.readonly(DebugComponentImmutable)