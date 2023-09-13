--------------------
--kun 2022.04.28
--------------------

local _next_eid = 0
local function NetIDGenerator()
    _next_eid = _next_eid + 1
    return _next_eid
end

return NetIDGenerator
