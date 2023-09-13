--------------------
--kun 2022.04.20
--------------------

local SnapshotCreator = class(nil,"SnapshotCreator")

function SnapshotCreator:CreateSnapshot(ecs)
    return self:_collectECSSnapshot(ecs)
end

function SnapshotCreator:_collectECSSnapshot(ecs)
    local ecsSnapshot = {}
    ecs:IterateEntity(self, self._collectEntitySnapshot, ecsSnapshot)
    return ecsSnapshot
end

function SnapshotCreator:_collectEntitySnapshot(e, ecsSnapshot)
    local entitySnapshot = {}
    e:IterateComponent(self, self._collectComponentSnapshot, entitySnapshot)
    --todo kun 2022.04.26
    --创建难以保证时序, e需要一个LocalECS/RemoteECS里的唯一标识,它代表着Entity的数据上的唯一性.
    local netID = e:GetEID() -- e:GetNetID()
    ecsSnapshot[netID] = entitySnapshot
end

function SnapshotCreator:_collectComponentSnapshot(com, entitySnapshot)
    local comSnapshot = com:SaveSnapshot()
    entitySnapshot[com.Type]=comSnapshot
end

return SnapshotCreator