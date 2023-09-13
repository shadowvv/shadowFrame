--------------------
--kun 2022.04.14
--------------------

--v1:Queue< {[1]=time,[2]=map<eid, map<com_type, snapshot>} >
--v2:treemap<timepoint, map<eid, map<com_type, snapshot>>
--目前没实现treemap

local Queue = require("Common.Queue")

local SnapshotHistory = class(nil, "SnapshotHistory")

local _tmp = {}
local _comparer = function(n1, n2)
    if n1[1] < n2[1] then return -1 end
    if n1[1] > n2[1] then return 1 end
    return 0
end

function SnapshotHistory:ctor()
    self._snapshots = Queue.New()
end

function SnapshotHistory:Push(time, ecsSnapshot, maxTime)
    local node = {time, ecsSnapshot}
    if self._snapshots:count() == 0 then
        self._snapshots:pushback(node)
        return
    end
    _tmp[1] = time
    local insertIndex = table.binarySearch:findInsertPoint(self._snapshots, _tmp, _comparer, self._snapshots.first, self._snapshots.last)
    --print("SnapshotHistory insertIndex", insertIndex, self._snapshots:count())
    self._snapshots:insert(insertIndex, node)
    
    ---[[debug_ecs_3]]local popCount = 0
    while true do
        local time_first = self._snapshots[self._snapshots.first][1]
        if time - time_first < maxTime then
            break
        else
            ---[[debug_ecs_3]]popCount = popCount + 1
            self._snapshots:popfront()
        end
    end
    ---[[debug_ecs_3]]print("[ECS]SnapshotHistory:Push", time, ecsSnapshot, maxTime, "remainCount=", self._snapshots:count(), "popCount=", popCount, self._snapshots[self._snapshots.first] and self._snapshots[self._snapshots.first][1] or "nil", self._snapshots[self._snapshots.last] and self._snapshots[self._snapshots.last][1] or "nil",self._snapshots.first,self._snapshots.last)
end

function SnapshotHistory:Get(time)
    _tmp[1] = time
    local insertIndex = table.binarySearch:findInsertPoint(self._snapshots, _tmp, _comparer, self._snapshots.first, self._snapshots.last)
    if insertIndex > 0 then
        if insertIndex == #self._snapshots then
            return self._snapshots[insertIndex]
        end

        local floor = self._snapshots[insertIndex]
        local celling = self._snapshots[insertIndex+1]
        if (time - floor[1]) > (celling[1] - time) then
            return celling
        end
        return floor
    end
end

return SnapshotHistory