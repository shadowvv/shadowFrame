--------------------
--kun 2022.04.14
--------------------
local Component = class(nil,"Component")
Component.Type = 0

function Component:ctor()
end

--[[
    释放占用的系统资源,如非托管内存
]]
function Component:Release()
end

--[[
    从pool里拿出来时做的一些必要的 initial 操作.
]]
function Component:Reuse()
end

--[[
    进pool之前需要做的一些必要的事情,比如断开某些双向关联.
]]
function Component:Recycle()
end

--[[
    创建快照,用于发送到远端/比对/回滚
]]
function Component:SaveSnapshot()
    local snapshot = {}
    self:_saveSnapshot(snapshot)
    return snapshot
end

function Component:ApplySnapshot(snapshot)
    self:_applySnapshot(snapshot)
end

function Component:_saveSnapshot(snapshot)
    snapshot.com_type = self.Type
end

function Component:_applySnapshot(snapshot)
    --print("_applySnapshot:"..tostring(snapshot.com_type))
end

return Component