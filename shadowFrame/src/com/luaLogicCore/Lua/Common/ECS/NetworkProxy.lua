--------------------
--kun 2022.05.02
--------------------
--[[
    这块服务器和客户端的网络层不一样.
    需要各自实现.
    因此抽象一下.
]]

local NetworkProxy = class(nil, "NetworkProxy")

function NetworkProxy:ctor()
    Base.ctor(NetworkProxy, nil)
end

function NetworkProxy:SendMsg(remoteActorMask, msg_type, msg)
    --子类实现;
    --[[debug_ecs_2]]--print("[ECS] network send:", remoteActorMask, msg_type, msg)
end

function NetworkProxy:RecvMsg(msg_type, msg)
    --子类实现;
    --[[debug_ecs_2]]--print("[ECS] network recv:", msg_type, msg)
end

return NetworkProxy