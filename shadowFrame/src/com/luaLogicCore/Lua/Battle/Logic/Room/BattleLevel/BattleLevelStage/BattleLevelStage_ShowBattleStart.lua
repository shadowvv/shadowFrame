---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/13 11:01
--- Describe: 战斗开始阶段
---

---@class BattleLevelStage_ShowBattleStart : BattleLevelStageBase
BattleLevelStage_ShowBattleStart = class(BattleLevelStageBase, "BattleLevelStage_ShowBattleStart")

function BattleLevelStage_ShowBattleStart:OnEnter()
    self:__OnEnter()

    if self.battleStageManager.driveStage then
        local _levelConfigData = self.battleRoom.battleLevelManager.levelConfigManager:GetLevelEditorConfig()

        if _levelConfigData then
            local actData = _levelConfigData.startData

            if actData then
                ---@type function
                local callback = BattleLevelStage_ShowBattleStart.__OnPlayFinishCallback
                local _levelInstanceXls = self.battleRoom.battleLevelManager.levelConfigManager:GetLevelInstanceXls()
                -- 播放UI(UI是一定会播放的，这里的id没有用)
                ---@type number 播放时间转换ms
                local _playTime = _levelInstanceXls.enterTime * 1000

                if actData.showType == PlayActEnum.ONLY_UI then
                    -- 只播ui，后边的不处理
                    self.battleRoom.battlePlayerActManager:StartPlayUi(actData.id, actData.uiType, _playTime, actData.param, callback, false)
                    return
                end
                -- 先播UI
                self.battleRoom.battlePlayerActManager:StartPlayUi(actData.id, actData.uiType, _playTime, actData.param, nil, false)
                -- 再播放表演
                self.battleRoom.battlePlayerActManager:StartPlayAct(actData.id, actData.showType, actData.param,
                        actData.position, actData.roatation, callback, _playTime, false)
                return
            end
        end
        -- 没有表演数据，直接结束
        BattleLevelStage_ShowBattleStart.__OnPlayFinishCallback(self.battleRoom)
    end
end

-- 阶段超时
function BattleLevelStage_ShowBattleStart:OnStageTimeOut()
    self:__OnStageTimeOut()

    if self.battleStageManager.driveStage then
        self.battleRoom.battlePlayerActManager:StopAllPlayAct()
    end
end

-- 回调
---@type function
---@param _battleRoom BattleRoom
function BattleLevelStage_ShowBattleStart.__OnPlayFinishCallback(_battleRoom)
    -- 进下一阶段
    _battleRoom.outputDataSource:BattleLevelGoToStage(BattleLevel_Define_StageEnum.RunBattle)
end

return BattleLevelStage_ShowBattleStart