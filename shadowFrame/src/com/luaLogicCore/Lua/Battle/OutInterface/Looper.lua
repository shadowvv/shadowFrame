-- 外层tick更新
LOOPER = {}

-- tick间隔
local dt = 0.033
-- 当前帧号
local frameId = 0

-- 更新
function LOOPER.Update()
    frameId = frameId + 1
    if fightCoreLua ~= nil then
        fightCoreLua:Update(dt,frameId)
    end
end
