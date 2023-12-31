---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng
--- DateTime: 2022/02/11 11:13
---
--- 应该不会有PVP，因为PVP和PVE对于战斗结果判断不同，PVE是多人统一结果，PVP每个人结果不同，因此结构和方法有所不同
--- 这里加一层继承预留PVP的战斗结果处理逻辑
---
--- Describe: 关卡条件管理
---
require "Battle/Logic/Room/BattleLevel/LevelCondition/Manager/OverConditionManager"
require "Battle/Logic/Room/BattleLevel/LevelCondition/ConditionEvent"
require "Battle/Logic/Room/BattleLevel/LevelCondition/ConditionEventState"

---@class OverConditionManager_Pve : OverConditionManager
OverConditionManager_Pve = class(OverConditionManager, "OverConditionManager_Pve")

function OverConditionManager_Pve:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    ---@type BattleRoom
    self.battleRoom = GetBattleRoom(_battleId)
end

-- 检测战斗是否结束
---@public
function OverConditionManager_Pve:Init(_levelConditionManager)
    self:__Init(_levelConditionManager)
    -- 监听成功事件
    local _levelInstanceXls = self.battleRoom.battleLevelManager.levelConfigManager:GetLevelInstanceXls()
    ---@type number[]
    self.winEvent = _levelInstanceXls.winCondition
    self.levelConditionManager:AddListenEvents(self.winEvent)
    ---@type number[]
    self.failEvent = _levelInstanceXls.loseCondition
    self.levelConditionManager:AddListenEvents(self.failEvent)

    -- 监听最后死亡怪物ID
    for _, _condition in pairs(self.winEvent) do
        ---@type LevelCondition
        local _levelCondition = self.battleRoom.inputDataSource:GetDict("LevelCondition", _condition)
        if _levelCondition then
            ---@type LevelConditionType
            local _levelConditionType = GetLevelConditionTypeById(_levelCondition.type)
            if _levelConditionType then
                ---@type number[]
                _levelConditionType:GetCheckLastMonsterLevelUnitIds(self.checkLastMonsterLevelUnitIds, _levelCondition, self.battleId)
            end
        end
    end
end

-- 检测战斗是否结束
---@public
---@return boolean,boolean 战斗是否停止，战斗是否结束
function OverConditionManager_Pve:CheckBattleOver()
    if self.overTime and self.overTime ~= 0 then
        -- 战斗结束时间点
        local battleStop = true
        local battleOver = TimeUtils.battleNow(self.battleId) >= self.overTime
        return battleStop, battleOver
    end

    -- 检测战斗结果
    local result, conditionEvent = self:CheckBattleResult()

    -- LevelCondition的表id
    local _conditionEventId = 0
    if conditionEvent then
        _conditionEventId = conditionEvent.id
    end
    self:SetBattleOver(result, _conditionEventId)

    if self.battleResult == BattleResultEnum.NO_RESULT or conditionEvent == nil then
        return false, false
    end

    for _, unit_player in pairs(self.battleRoom.battleUnitManager:GetOriginalPlayerInfoManager():GetAllPlayer()) do
        self.battleRoom.outputDataSource:UpdateBattleResult(unit_player:GetPlayerId(), self.battleResult:GetId(), self.overCondition)
    end

    ---@type number 延迟结算时间
    local delayOverTime = 0
    if self.battleResult == BattleResultEnum.WIN then
        -- 仅胜利需要延迟结算
        local _levelInstanceXls = self.battleRoom.battleLevelManager.levelConfigManager:GetLevelInstanceXls()
        delayOverTime = _levelInstanceXls.victoryDelayTime * 1000
    end
    self.overTime = TimeUtils.battleNow(self.battleId) + delayOverTime

    -- 战斗结束,结束时间0立即结束,否则走倒计时
    if delayOverTime > 0 then
        if CheckLogLevel(LogLevel.log) then
            LogTools.LogByLevel(LogLevel.log, "battleOver in " .. tostring(delayOverTime / 1000) .. "s")
        end
    end
    local battleStop = true
    local battleOver = self.overTime == 0
    return battleStop, battleOver
end

-- 检测战斗结果
---@private
---@return BattleResult,ConditionEvent
function OverConditionManager_Pve:CheckBattleResult()
    -- 判断胜利
    for _, _conditionId in pairs(self.winEvent) do
        if self.levelConditionManager:CheckConditionEventState(_conditionId, nil, ConditionEventState.SUCCESS) then
            local _conditionEvent = self.levelConditionManager:GetConditionEvent(_conditionId, nil)
            return BattleResultEnum.WIN, _conditionEvent
        end
    end
    -- 判断失败
    for _, _conditionId in pairs(self.failEvent) do
        if self.levelConditionManager:CheckConditionEventState(_conditionId, nil, ConditionEventState.SUCCESS) then
            local _conditionEvent = self.levelConditionManager:GetConditionEvent(_conditionId, nil)
            return BattleResultEnum.FAIL, _conditionEvent
        end
    end
    return BattleResultEnum.NO_RESULT, nil
end

return OverConditionManager_Pve
