--------------------
--kun 2022.05.02
--------------------
--[[
    这块服务器和客户端的网络层不一样.
    需要各自实现.
    因此抽象一下.
]]

local ActorConfigBuilder = class(nil, "ActorConfigBuilder")

function ActorConfigBuilder:ctor()
    self._ret = self:_createRetTable()
end

function ActorConfigBuilder:_createRetTable()
    return
    {
        localActor = 0,
        remoteActorMask = 0,
        handleActorMask = {},
    }
end

function ActorConfigBuilder:SetLocalActor(actor_type)
    self._ret.localActor = actor_type
end

function ActorConfigBuilder:AddRemoteActor(actor_type)
    self._ret.remoteActor = bit.bor(self._ret.remoteActorMask, actor_type)
end

function ActorConfigBuilder:RegistLocalMessage(msg_type)
    self._ret.handleActorMask[msg_type] = bit.bor(self._ret.handleActorMask[msg_type] or 0, self._ret.localActor)
end

function ActorConfigBuilder:RegistRemotelMessage(msg_type)
    self._ret.handleActorMask[msg_type] = bit.bor(self._ret.handleActorMask[msg_type] or 0, self._ret.remoteActorMask)
end

function ActorConfigBuilder:RegistMessageHandleActor(msg_type, actor_type)
    self._ret.handleActorMask[msg_type] = bit.bor(self._ret.handleActorMask[msg_type] or 0, actor_type)
end

function ActorConfigBuilder:Build()
    local ret = self._ret
    self._ret = self:_createRetTable()
    return ret;
end

return ActorConfigBuilder