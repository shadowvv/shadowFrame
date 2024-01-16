---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/2/14 16:12

require "Lib/class"
require "Battle/Logic/Room/BattleObject/ActionState/ActionState"

---@class SpawnActionState : ActionState
---@field battleRoom BattleRoom 战斗
---@field stateParam StateParameter 状态参数配置
---@field unitType number 单位类型
SpawnActionState = class(ActionState, 'SpawnActionState');

---@param _battleId number 战斗id
---@param _stateParamId number 状态参数配置id
---@param _unitType number 单位类型
function SpawnActionState:ctor(_battleId, _stateParamId, _unitType)
    self.battleRoom = GetBattleRoom(_battleId)
    self.stateParam = self.battleRoom.inputDataSource:GetDict("StateParameter", _stateParamId);
    self.unitType = _unitType;
end

-- 切换行为,判断行为的参数正确性
---@param _actionStateManager ActionStateManage 行为管理器
---@return boolean 是否可进入行为
function SpawnActionState:EnterAction(_actionStateManager)
    
    --self.__bornTime = 15 * 1000
    --LogTools.LogByLevel(LogLevel.log, "SpawnActionState", "self.stateParam.bornTime", self.stateParam.bornTime)
    self.__bornTime = (self.stateParam.bornTime + 10) * 1000
    self.__enterTime = TimeUtils.battleNow(_actionStateManager.battleId)
    local battleRoom = GetBattleRoom(_actionStateManager.battleId)
    local _unit = _actionStateManager:GetUnit()
    if _unit and not _unit:CheckUnitType(BattleUnitType.Player) then
        local unitId = _unit:GetLevelUnitId();
        ---@type LevelUnit_Monster
        local levelUnit = battleRoom.battleLevelManager.levelUnitManager:GetLevelUnit(unitId);
        if levelUnit and levelUnit.bossShow then
            local _templateXls = _unit:GetDataTemplateXls()
            local _showRolePosition = _templateXls.showRolePosition
            local _showRoleRotation = _templateXls.showRoleRotation
            if _showRolePosition and _showRoleRotation and #_showRolePosition > 0 and #_showRoleRotation > 0 then
                local _position = Vector3.New(_showRolePosition[1], _showRolePosition[2], _showRolePosition[3])*_actionStateManager:GetRotation() + _actionStateManager:GetPosition()

                local direct = Quaternion.ToEulerAngles(_actionStateManager:GetRotation()) + Vector3.New(_showRoleRotation[1], _showRoleRotation[2], _showRoleRotation[3]);
                local rotation = Quaternion.FromEuler(direct);

                local players = battleRoom.battleUnitManager:GetUnitListByUnitType(BattleUnitType.Player);
                for i, v in pairs(players) do
                    v:GetActionManager():ResetPosition(_position, rotation)
                end
            end
        end
    end
    return true;
end

-- 执行行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _objId number 单位对应实体id
function SpawnActionState:DoAction(_actionStateManager, _dt, _netId,_objId)
    
    if _actionStateManager:GetUnit():CheckClientCreateEnd() then
        _actionStateManager:Exit(self)

    elseif self.__enterTime and TimeUtils.battleNow(_actionStateManager.battleId) - self.__enterTime > self.__bornTime then
        _actionStateManager:Exit(self)
    end


    --self.runTime = self.runTime + _dt;
end

-- 退出行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _isBreak boolean 是否为打断退出
---@param _isActive boolean 是否为主动打断
function SpawnActionState:ExitAction(_actionStateManager,_isBreak,_isActive)
    local _unit = _actionStateManager:GetUnit()
    local _netId = _unit:GetNetId()
    self.battleRoom.battleLogicEventService:OnTriggerMonsterSpawnEvent(_netId)
    _unit:AddLevelInitBuffAndTalent()
    _unit:AddUnitDefaultBuff()
    self.battleRoom.battleUnitManager:GetUnit(_netId):StartAi()
end

-- 是否为主动状态
---@return boolean 是否为主动状态
function SpawnActionState:IsActive()
    return true;
end

-- 行为状态Id
---@return number 行为状态Id 参照stateSwitchRule表
function SpawnActionState:GetId()
    return 10;
end

---获得状态冲突表
---@return StateSwitchRule
function SpawnActionState:GetSwitchRule()
    return self.battleRoom.inputDataSource:GetDict("StateSwitchRule",self:GetId());
end

return SpawnActionState;