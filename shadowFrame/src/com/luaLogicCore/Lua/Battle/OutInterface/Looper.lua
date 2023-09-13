-- 外层tick更新
LOOPER = {}

-- tick间隔
local dt = 0.033
-- 当前帧号
local frameId = 0

-- 更新
---@param _frameId number
---@param _dt number
---@param _fightCoreLua FightCoreLua
function LOOPER.ServerUpdate(_frameId, _dt, _fightCoreLua)
    ---@type number
    local _startUpdateTime
    if SERVER_LIB and SERVER_LIB.performanceService:executeTimeCheck(PerformanceType.FIGHT_CORE_TICK) then
        _startUpdateTime = TimeUtils.nowExact()
    end

    --frameId = frameId + 1

    if _fightCoreLua ~= nil then
        _fightCoreLua:Update(_dt, _frameId)
    end

    if SERVER_LIB.performanceService:executeTimeCheck(PerformanceType.FIGHT_CORE_TICK) then
        SERVER_LIB.performanceService:checkCommonExecuteTime(PerformanceType.FIGHT_CORE_TICK, "FightCore", 0, _fightCoreLua.battleRoom.battleId, _startUpdateTime, TimeUtils.nowExact())
    end
    SERVER_LIB.performanceService:collectCount(CollectCountType.FIGHT_CORE_TICK_COUNT)
end

--- 更新战斗房间
local client_msg_queue = {}
local function table_clear(t)
    local ic = #t
    for i = 1, ic do
        t[i] = nil
    end
end

---@type function
---@param delta number
---@param deltaIntMs number
function LOOPER.ClientUpdate(delta, deltaIntMs)
    frameId = frameId + 1
    if CLIENT_FIGHT_CORE ~= nil then
        -- 战斗核心Update
        CLIENT_FIGHT_CORE:Update(delta, frameId)
    end
    -- 客户端更新时间
    TimeUtils.ClientUpdateTime(deltaIntMs)
end

function LOOPER.ReceiveMsgBytesContext(msg)
    if msg == nil or msg == "" then
        --LogTools.LogByLevel(LogLevel.logErr, "LOOPER", "ReceiveMsgBytesContext", "msg", msg)
        return
    end
    COMMAND.ReceiveMsgBytes(msg.header, msg.body)
end

function LOOPER.GetFrameId()
    return frameId
end