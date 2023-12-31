---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/2/11 18:35

require "Lib/class"

---@class LevelConditionType : table
---@field id number
---@field event number
---@field initState number 初始状态
---@field eventChangeState number 事件改变状态
---@field eventParamFunc function 获取检测参数方法
---@field eventCheckFunc function 事件检测方法
---@field killMonster boolean 是否是击杀怪物条件
LevelConditionType = class(nil, 'LevelConditionType');

---@param _id number id
---@param _event number 监听事件
---@param _initState number 条件初始状态
---@param _eventChangeState number 事件触发后条件的改变状态
---@param _eventParamFunc function 获取事件检测参数方法
---@param _killMonster boolean 是否是击杀怪物条件
---@param _eventCheckFunc function 事件自定义检测方法
function LevelConditionType:ctor(_id, _event, _initState, _eventChangeState, _eventParamFunc, _eventCheckFunc, _killMonster)
    self.id = _id;
    self.event = _event;
    self.initState = _initState;
    self.eventChangeState = _eventChangeState;
    self.eventParamFunc = _eventParamFunc;
    self.eventCheckFunc = _eventCheckFunc;
    self.killMonster = false;
    if _killMonster then
        self.killMonster = _killMonster;
    end
end

---@public
function LevelConditionType:GetId()
    return self.id
end

---@public
function LevelConditionType:GetEvent()
    return self.event
end

---@public
function LevelConditionType:GetInitState()
    return self.initState
end

---@public
function LevelConditionType:GetEventChangeState()
    return self.eventChangeState
end

---@public
function LevelConditionType:IsKillMonster()
    return self.killMonster
end

---@protected
function LevelConditionType:__GetEventParam(_levelCondition, _replaceParams)
    -- 参数替换
    local _params = { _levelCondition.value1, _levelCondition.value2, _levelCondition.value3,
                      _levelCondition.value4, _levelCondition.value5, _levelCondition.value6,
                      _levelCondition.value7, _levelCondition.value8 }
    if _replaceParams then
        for _index = 1, #_params do
            if _index <= #_replaceParams then
                local _replaceParam = _replaceParams[_index]
                if _replaceParam and _replaceParam > 0 then
                    _params[_index] = _replaceParam
                end
            end
        end
    end
    return _params
end

-- 获取事件参数
---@public
---@param _levelCondition LevelCondition
---@param _battleLogicEvent BattleLogicEventV2
---@param _uid number
---@param _replaceParams number[] 替换参数
---@param _conditionEvent ConditionEvent
---@return boolean
function LevelConditionType:CheckEventParam(_levelCondition, _battleLogicEvent, _uid, _replaceParams, _conditionEvent)
    if not _levelCondition then
        return false
    end

    -- 参数
    local _params = self:__GetEventParam(_levelCondition, _replaceParams)

    if self.eventParamFunc and not self.eventParamFunc(_params, _battleLogicEvent, _uid, _conditionEvent) then
        -- 不是要检测的事件
        return false
    end

    ---@type function
    local func = self.eventCheckFunc
    if not func then
        return true
    end

    local _targets = self:__SelectCheckEventTarget(_levelCondition, _uid, _battleLogicEvent.battleId)
    -- 自定义check方法
    ---@type boolean
    return func(_params, _battleLogicEvent, _targets, _conditionEvent)
end

---筛选条件检测目标
---@protected
---@param _levelCondition LevelCondition
---@param _uid number
function LevelConditionType:__SelectCheckEventTarget(_levelCondition, _uid, _battleId)
    local battleRoom = GetBattleRoom(_battleId)
    if battleRoom.battleLevelManager.levelConditionManager:CheckConditionScope(_levelCondition, LevelConditionScope.Player) then
        return { battleRoom.battleUnitManager:GetUnitByPlayerId(_uid) }
    end
    return battleRoom.battleUnitManager:GetUnitListByUnitType(BattleUnitType.Player)
end

---获取监听的最后死亡怪物id
---@public
---@param _checkLastMonsterLevelUnitIds number[]
---@param _levelCondition LevelCondition
---@param  _battleId number
function LevelConditionType:GetCheckLastMonsterLevelUnitIds(_checkLastMonsterLevelUnitIds, _levelCondition, _battleId)
    return
end

return LevelConditionType;
