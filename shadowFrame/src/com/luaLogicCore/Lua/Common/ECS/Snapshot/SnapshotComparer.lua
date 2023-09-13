--------------------
--kun 2022.04.28
--------------------

local SnapshotComparer = {}

--第一版,直接超级低效的比对
local function _EqualsV1(snapshot1, snapshot2)
    return table.deepcompare(snapshot1, snapshot2)
end

--第二版,在pb算出来字节流之后,直接比对bytes.
local function _EqualsV2(snapshot1, snapshot2)
    --todo kun 2022.04.28
    --还未实现,需要在c or c# 里做个字节比较的函数
    --return pb.compare_bytes(snapshot1, snapshot2)
end

function SnapshotComparer.Equals(snapshot1, snapshot2)
    return _EqualsV1(snapshot1, snapshot2)
end


return table.readonly(SnapshotComparer)