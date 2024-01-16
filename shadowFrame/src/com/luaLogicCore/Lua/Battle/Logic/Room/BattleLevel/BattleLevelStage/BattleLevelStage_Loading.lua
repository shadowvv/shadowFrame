---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/13 10:57
--- Describe: 加载阶段
---

---@class BattleLevelStage_Loading : BattleLevelStageBase
BattleLevelStage_Loading = class(BattleLevelStageBase, "BattleLevelStage_Loading")

-- 初始阶段
---@public
---@param _battleStageManager BattleLevelStageManager
---@param _stageIndex number
function BattleLevelStage_Loading:Init(_battleStageManager, _stageIndex)
    self:__Init(_battleStageManager, _stageIndex)
    -- Loading阶段只处理消息，不驱动逻辑，逻辑必须等所有人都进了场景才能开始
    self.runRoomLogic = false
    self.runUnitLogic = false
    self.fireEvent = false
end

function BattleLevelStage_Loading:OnEnter()
    self:__OnEnter()

    if self.battleRoom.indieGame then
        -- 发送场景进入消息
        self.battleRoom.outputDataSource:LocalScenePreEnter()
    end
end

-- 退出阶段
function BattleLevelStage_Loading:OnExit(_deltaTime, _frameId)
    self:__OnExit()
    -- 通知显示层
    local msg = {
        playerId = CLIENT_PLAYER_ID
    }
    self.battleRoom.outputDataSource:BattleLogin_L2V(msg)

    if self.battleStageManager.driveStage then
        -- 创建角色
        BEHAVIOR_ACTION.LevelDropAllPlayerHeroes(self.battleId, nil)
    end
end

-- 阶段超时
---@public
function BattleLevelStage_Loading:OnStageTimeOut()
    if IsServer() then
        -- loading阶段等待服务器事件通知切换
        return
    end
    self:__OnStageTimeOut()
end

return BattleLevelStage_Loading