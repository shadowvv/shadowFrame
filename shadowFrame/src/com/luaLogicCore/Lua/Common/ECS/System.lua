--------------------
--kun 2022.04.14
--------------------
local System = class(nil,"System")
local band = function(int, b)
    --return int & b
    return 1
end
local bor = function(int, b)
    --return int | b
    return 1
end

function System:ctor(requireComponents)
    self._requiredComMask = 0
    if requireComponents then
        for i=1, #requireComponents do
            local comDeclare = requireComponents[i]
            self._requiredComMask = bor(self._requiredComMask, comDeclare)
        end 
    end
end

function System:Release()
end

function System:Update(e, deltaTime)
end

function System:GetRequiredMask()
    return self._requiredComMask
end

function System:CheckRequired(e)
    if self._requiredComMask ~= 0 then
        return band(self._requiredComMask, e:GetComponentMask()) == self._requiredComMask
    end
end

function System:SetECS(ecs)
    self.ECS = ecs
end

function System:PushMessage(msg)
    self.ECS.MessageCenter:Push(msg)
end

function System:PushEvent(event)
    self.ECS.MessageCenter:PushEvent(event)
end

return System