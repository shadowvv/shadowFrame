--------------------
--kun 2022.04.18
--------------------
local Queue = require("Common.Queue")
local EventManager = require("Common.EventManager")

local MessageCenter = class(nil, "MessageCenter")

function MessageCenter:ctor(msgCreator, networkProxy, ecsActorConfig)
    self._queue = Queue.New();
    self._dispatcher = EventManager.New()
    self._networkProxy = networkProxy
    self._ecsActorConfig = ecsActorConfig
end

function MessageCenter:Push(msg)
    ---[[debug_ecs_2]]print("[ECS]MessageCenter:Push", table.dump(msg))
    ---[[#if]]UNITY_EDITOR
    table.readonly(msg)
    ---[[#end_if]]
    self._queue:pushback(msg)
end

function MessageCenter:PushEvent(msg_type)
    ---[[debug_ecs_2]]print("[ECS]MessageCenter:PushEvent", msg_type)
    self._queue:pushback(msg_type)
end

function MessageCenter:AddHandler(msg_type, handler, func)
    ---[[debug_ecs_1]]print("[ECS]MessageCenter:AddHandler", msg_type)
    self._dispatcher:subscribe(msg_type, handler, func)
end

function MessageCenter:RemoveHandler(msg_type, handler, func)
    ---[[debug_ecs_1]]print("[ECS]MessageCenter:RemoveHandler", msg_type)
    self._dispatcher:ubsubscribe(msg_type, handler, func)
end

function MessageCenter:Dispatch()
    ---[[debug_ecs_3]]print("[ECS]MessageCenter:Dispatch(Before)", self:GetCount())
    while true do
        local msg = self._queue:popfront()
        if msg == nil then
            return
        end
        
        if type(msg) == "number" then
            self:_doDispatch(msg, nil)
        else
            self:_doDispatch(msg.msg_type, msg)
        end
    end
    ---[[debug_ecs_3]]print("[ECS]MessageCenter:Dispatch(After)", self:GetCount())
end

function MessageCenter:Discard()
    self._queue:clear()
end

function MessageCenter:GetCount()
    return self._queue:count()
end

function MessageCenter:_doDispatch(msg_type, msg)
    local localActor = self._ecsActorConfig.localActor
    local remoteActorMask = self._ecsActorConfig.remoteActorMask
    local handleActorMask = self._ecsActorConfig.handleActorMask[msg_type]
    if handleActorMask == nil then
        error("出现了不在ECSCOnfig里的配置msg_type", msg_type, table.dump(msg_type))
    else
        if bit.band(localActor, handleActorMask) ~= 0 then
            self._dispatcher:fire(msg_type, msg)
        end
    end
    if remoteActorMask ~= 0 then
        self._networkProxy:SendMsg(remoteActorMask, msg_type, msg)
    end
end

return MessageCenter