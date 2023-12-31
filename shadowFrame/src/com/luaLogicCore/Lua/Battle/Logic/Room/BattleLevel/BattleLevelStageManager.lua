---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/13 11:04
--- Describe: 关卡逻辑阶段管理
---

require "Battle/Logic/Room/BattleLevel/BattleLevelStageBase"

require "Battle/Logic/Room/BattleLevel/BattleLevelStage/BattleLevelStage_Loading"
require "Battle/Logic/Room/BattleLevel/BattleLevelStage/BattleLevelStage_PreBattlePlot"
require "Battle/Logic/Room/BattleLevel/BattleLevelStage/BattleLevelStage_ShowBattleStart"
require "Battle/Logic/Room/BattleLevel/BattleLevelStage/BattleLevelStage_RunBattle"
require "Battle/Logic/Room/BattleLevel/BattleLevelStage/BattleLevelStage_ShowBattleEnd"

---@class BattleLevelStageManager : table
BattleLevelStageManager = class(nil, "BattleLevelStageManager")
function BattleLevelStageManager:ctor(_battleId)
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
end

-- 重置
---@protected
---@param _levelManager BattleLevelManager
function BattleLevelStageManager:Init(_levelManager)
    ---@type boolean 驱动关卡阶段
    self.driveStage = false
    if IsServer() or self.battleRoom.indieGame then
        -- 服务端驱动关卡阶段
        self.driveStage = true
    end

    self:__Clear(_levelManager)
    self:__InitStageTable()

    self:GoToStage(BattleLevel_Define_StageEnum.None, true)
end

-- 清空
---@protected
---@param _levelManager BattleLevelManager
function BattleLevelStageManager:__Clear(_levelManager)
    ---@type BattleLevelManager
    self.levelManager = _levelManager
    ---@type number
    self.curStageEnum = nil
    ---@type BattleLevelStageBase
    self.curStage = nil

    if not self.stageTable then
        return
    end
    for _, _stage in pairs(self.stageTable) do
        _stage:Clear()
    end
    self.stageTable = nil
end

-- 初始阶段
---@protected
function BattleLevelStageManager:__InitStageTable()
    ---@type BattleLevelStageBase[]
    local _stageTable = {}

    --载入阶段，关卡阶段的初始阶段
    _stageTable[BattleLevel_Define_StageEnum.Loading] = BattleLevelStage_Loading.New()
    --战前剧情阶段
    _stageTable[BattleLevel_Define_StageEnum.PreBattlePlot] = BattleLevelStage_PreBattlePlot.New()
    --战前开始阶段
    _stageTable[BattleLevel_Define_StageEnum.ShowBattleStart] = BattleLevelStage_ShowBattleStart.New()
    --战斗阶段
    _stageTable[BattleLevel_Define_StageEnum.RunBattle] = BattleLevelStage_RunBattle.New()
    --战斗结束阶段
    _stageTable[BattleLevel_Define_StageEnum.ShowBattleEnd] = BattleLevelStage_ShowBattleEnd.New()

    for _index, _stage in pairs(_stageTable) do
        _stage:Init(self, _index)
    end

    ---@type BattleLevelStageBase[]
    self.stageTable = _stageTable
end

-- 离开阶段
---@protected
function BattleLevelStageManager:__LeftStage()
    if not self.curStage then
        return
    end
    self.curStage:OnExit()
    self.curStage = nil
end

-- 进入阶段
---@protected
---@param _stageEnum number
function BattleLevelStageManager:__EnterStage(_stageEnum)
    local _stage = self.stageTable[_stageEnum]
    self.curStageEnum = _stageEnum
    self.curStage = _stage
    if not _stage then
        return
    end
    _stage:OnEnter()
end

-- 进入指定阶段
---@protected
---@param _stageEnum number
---@param _forceEnter boolean
---@return boolean 是否成功进入
function BattleLevelStageManager:GoToStage(_stageEnum, _forceEnter)
    if _stageEnum < 0 then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "BattleLevelStageManager", "GoToStage", "stage", self.curStageEnum, "< 0")
        end
        return false
    end
    if _stageEnum > BattleLevel_Define_StageEnum.Max() then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "BattleLevelStageManager", "GoToStage", "stage", _stageEnum, ">", BattleLevel_Define_StageEnum.Max())
        end
        return false
    end
    if (_forceEnter == nil or _forceEnter == false) and self.curStage and not self.curStage:CanEnter(_stageEnum) then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "BattleLevelStageManager", "GoToStage", "stage", self.curStageEnum, "cannot enter", _stageEnum)
        end
        return false
    end

    self:__LeftStage()
    self:__EnterStage(_stageEnum)
    return true
end

-- 进入下一个阶段
---@protected
---@param _levelStageEnum number
function BattleLevelStageManager:GoNextStage()
    --LogTools.LogByLevel(BattleLevel_Define.LogLevel, "BattleLevel", "GoNextStage start", "self.curStage", self.curStage.__cname)
    local _stage = self.curStageEnum
    if _stage == BattleLevel_Define_StageEnum.Max() then
        return
    end

    self:__LeftStage()
    self:__EnterStage(_stage + 1)

    if not self.curStage then
        --LogTools.LogByLevel(BattleLevel_Define.LogLevel, "BattleLevel", "GoNextStage end", "self.curStage", self.curStage.__cname)
    end
end

-- tick
---@protected
---@param _deltaTime number
---@param _frameId number
function BattleLevelStageManager:OnUpdate(_deltaTime, _frameId)
    if not self.curStage then
        return
    end
    self.curStage:OnUpdate(_deltaTime, _frameId)
end

-- 获取战斗阶段
---@protected
---@param _stageEnum number
---@return BattleLevelStageBase
function BattleLevelStageManager:GetStage(_stageEnum)
    if _stageEnum < 0 then
        return
    end
    if _stageEnum > BattleLevel_Define_StageEnum.Max() then
        return
    end
    return self.stageTable[_stageEnum]
end

-- 清空
---@protected
function BattleLevelStageManager:Clear(_levelManager)
    self:__Clear(_levelManager)
end

return BattleLevelStageManager