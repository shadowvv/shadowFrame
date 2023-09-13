--------------------
--kun 2022.04.12
--------------------
--[[
Usage:
    [decal]
    local stopwatch = Stopwatch.New()

    [begin]
    stopwatch:start()
    
    [update]
    some kind function update(dt)
        stopwatch:increase(dt)
    end

    [use]
    local time1 = stopwatch:stop()
    local time2 = stopwatch:stop()
    local time3 = stopwatch:stop()

    [reset]
    stopwatch:reset()
    
    [release]
    stopwatch = nil
]]
local Stopwatch = class(nil, 'Stopwatch')

function Stopwatch:ctor()
    self._elapsed = 0
end

function Stopwatch:increase(dt)
    self._elapsed = self._elapsed + dt
end

function Stopwatch:stop()
    return self._elapsed
end

function Stopwatch:reset()
    self._elapsed = 0
end

return Stopwatch
