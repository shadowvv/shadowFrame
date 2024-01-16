---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng
--- DateTime: 2022/06/06 17:46
--- Describe: 引导管理器
---

---@class BattleGuideManager : table
---@field completeGuides table<number,table<number,number>> 完成引导<uid,<id,触发次数>>
BattleGuideManager = class(nil, "BattleGuideManager")

function BattleGuideManager:OnUpdate(_deltaTime)
end

function BattleGuideManager:ctor(_battleId)
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(_battleId)
end

function BattleGuideManager:Init()
    self.completeGuides = {}
end

---@public
---@param _uid number 玩家id
---@param _guideInfos table 引导数据
function BattleGuideManager:InitPlayerGuides(_uid, _guideInfos)
    local _playerCompleteGuides = {}
    if _guideInfos and #_guideInfos > 0 then
        for _, _guideInfo in pairs(_guideInfos) do
            local _guideId = _guideInfo.guideId
            local _triggerTimes = _guideInfo.triggerTimes
            _playerCompleteGuides[tostring(_guideId)] = _triggerTimes
        end
    end
    self.completeGuides[tostring(_uid)] = _playerCompleteGuides
    if CheckLogLevel(LogLevel.log) then
        LogTools.LogByLevel(LogLevel.log, "BattleGuideManager", "InitPlayerGuides", "completeGuides", dumpTableEx(_playerCompleteGuides))
    end
end

------------------------------------------------------------------------------------------------------------------------

---获取所有引导
---@public
function BattleGuideManager:GetAllGuides(_uid)
    local _playerCompleteGuides = self.completeGuides[tostring(_uid)]
    if _playerCompleteGuides == nil then
        return
    end

    local _battleGuideInfos = {}
    for _guideId, _triggerTimes in pairs(_playerCompleteGuides) do
        local _battleGuideInfo = {
            guideId = _guideId,
            triggerTimes = _triggerTimes
        }
        table.insert(_battleGuideInfos, _battleGuideInfo)
    end
    return _battleGuideInfos
end

---@public
---@param _uid number 玩家id
---@param _guideId number 引导id
function BattleGuideManager:CompleteGuide(_uid, _guideId)
    ---@type InBattleGuide
    local _inBattleGuide = self.battleRoom.inputDataSource:GetDict("InBattleGuide", _guideId)
    if _inBattleGuide == nil then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "BattleGuideManager", "CompleteGuide", "InBattleGuide", "nil", "_guideId", _guideId)
        end
        return
    end
    if _inBattleGuide.actionLimiter == 0 then
        -- 0是无限次，不记录
        return
    end
    local _playerCompleteGuides = self.completeGuides[tostring(_uid)]
    if _playerCompleteGuides == nil then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "BattleGuideManager", "CompleteGuide", "self.completeGuides[tostring(_uid)]", "nil", "_uid", _uid, "_guideId", _guideId)
        end
        return
    end
    local _curTriggerTimes = _playerCompleteGuides[tostring(_guideId)]
    if _curTriggerTimes == nil then
        -- 新完成的引导记录
        _playerCompleteGuides[tostring(_guideId)] = 1
        return
    end
    if _curTriggerTimes >= _inBattleGuide.actionLimiter then
        -- 已经超过最大次数，不再记录了
        return
    end
    -- 累计触发次数
    _curTriggerTimes = _curTriggerTimes + 1
    _playerCompleteGuides[tostring(_guideId)] = _curTriggerTimes
end

---检查引导步骤是否完成
---@public
---@param _uid number 玩家id
---@param _guideId number 引导id
---@return boolean 引导是否已完成
function BattleGuideManager:CheckGuideComplete(_uid, _guideId)
    local _playerCompleteGuides = self.completeGuides[tostring(_uid)]
    if _playerCompleteGuides == nil then
        return false
    end
    local _triggerTimes = _playerCompleteGuides[tostring(_guideId)]
    if _triggerTimes == nil then
        return false
    end
    ---@type InBattleGuide
    local _guide = self.battleRoom.inputDataSource:GetDict("InBattleGuide", _guideId)
    if _guide == nil then
        return false
    end
    if _guide.actionLimiter > 0 and _guide.actionLimiter > _triggerTimes then
        -- 还没达到完成次数
        return false
    end
    return true
end

return BattleGuideManager