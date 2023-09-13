--------------------
--kun 2022.04.19
--------------------
local luautil = luautil

local EventManager = class(nil, "EventManager")

function EventManager:ctor()
    self._handlers = {}
    self._firing = false
end

function EventManager:subscribe(event_id, invoker, func)
    local listeners = self._handlers[event_id]
    if listeners == nil then
        listeners = {}
        self._handlers[event_id] = listeners
        ---[[debug_ecs_2]]print("[ECS]EventManager:create listener list", event_id)
    end
    table.insert(listeners, {invoker, func})
    ---[[debug_ecs_2]]print("[ECS]EventManager:insert listener", event_id, #listeners)
end

function EventManager:unsubscribe(event_id, invoker, func)
    local listeners = self._handlers[event_id]
    if listeners and #listeners > 0 then
        for i=#listeners, 0, -1 do
            local l = listeners[i]
            if l.invoker == invoker then
                if func == nil or l.func == func then
                    --低效函数,如果在频繁变化的场合，应使用List.
                    table.remove(listeners, i)
                end
            end
        end
    end
end

function EventManager:fire(event_id, ...)
    if self._firing then
        error("matryoshka fire is NOT allowed!(禁止套娃fire)")
    end
    self._firing = true
    self:_fire(event_id, ...)
    self._firing = false
end

function EventManager:_fire(event_id, ...)
    local listeners = self._handlers[event_id]
    if listeners and #listeners > 0 then
        for i=1, #listeners do
            local l = listeners[i]
            local invoker = l[1]
            local func = l[2]
            ---[[debug_ecs_3]]print("[ECS]EventManager:_fire", event_id)
            luautil.SafeInvoke(invoker, func, ...)
        end
    else
        ---[[debug_ecs_3]]print("[ECS]EventManager:_fire, no handler!", event_id)
    end
end

return EventManager