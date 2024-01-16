---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/12/5 16:07

require "Lib/class"
require "Battle/Logic/Room/BattleObject/ActionState/ActionState"

---@class ObjectDeadActionState : ActionState
---@field stateParam StateParameter 状态参数配置
---@field unitType number 单位类型
ObjectDeadActionState = class(ActionState, 'ObjectDeadActionState');

---@param _stateParamId number 状态参数配置id
---@param _unitType number 单位类型
function ObjectDeadActionState:ctor(_battleId, _stateParamId, _unitType)
	--LogTools.LogByLevel(LogLevel.log, "CheckDead", "ObjectDeadActionState", "ctor", "_battleId", _battleId, "_stateParamId", _stateParamId, "_unitType", LogTools.GetEnumTableDesc(BattleUnitType, _unitType))
    self.battleRoom = GetBattleRoom(_battleId)
    self.stateParam = self.battleRoom.inputDataSource:GetDict("StateParameter", _stateParamId);
    self.unitType = _unitType;
end

function ObjectDeadActionState:Init(_objId, _deadType)
    self.__deadObjId = _objId
	self.__deadType = _deadType
end

-- 切换行为,判断行为的参数正确性
---@param _actionStateManager ActionStateManage 行为管理器
---@return boolean 是否可进入行为
function ObjectDeadActionState:EnterAction(_actionStateManager)
	--LogTools.LogByLevel(LogLevel.log, "CheckDead", "ObjectDeadActionState", "EnterAction", "_netId", _actionStateManager:GetUnit():GetNetId(), "self.__deadObjId", self.__deadObjId, "self.__deadType", self.__deadType, "self.stateParam.ObjDeadTime", self.stateParam.objDeadTime)
    self.__startTime = TimeUtils.battleNow(self.battleRoom:GetBattleId())
    self.__totalTime = self.stateParam.objDeadTime * 1000
    
    local _unit = _actionStateManager:GetUnit()
    local _currentObj = _unit:GetHeroObject(self.__deadObjId)
	if not _currentObj or _currentObj:CheckDead() then return false end
    
	---@type BattleObjCom_Buff
	local _buffCom = _currentObj:GetComponent(BattleObjectComponentType.Buff)
	if _buffCom then _buffCom:OnObjectDead() end
	---@type BattleObjCom_Property
	local _propCom = _currentObj:GetComponent(BattleObjectComponentType.Property)
	if _propCom then _propCom:SnapChangeProperties() end

	self.battleRoom.battleUnitManager:GetSkillTokenManager():PushSkillToken(_unit)
	---@type BattleUnitCom_TagSelector
	local _tagCom = _unit:GetComponent(BattleUnitComponentType.TagSelector)
	local _lastHurtFromNetId = _tagCom and _tagCom:GetTag(BattleUnitTagEnum.LastHurtFromNetID) or -1
	-- object死亡事件
	self.battleRoom.battleLogicEventService:OnTriggerObjectDeadEvent(_unit:GetNetId(), self.__deadObjId, _lastHurtFromNetId)

	---只有在服务器的时候才需要广播出去设置前端逻辑核的死亡标记
	if IsServer() then
		local _BattleUnitFieldInfo = {}
		local _BattleUnitDead = {}
		_BattleUnitDead.netId = _unit:GetNetId()
		_BattleUnitDead.objectId = self.__deadObjId
		_BattleUnitDead.deadType = self.__deadType
		_BattleUnitFieldInfo.objDeadInfo = _BattleUnitDead
		local _BattleFieldData = {}
		_BattleFieldData.unitInfo = _BattleUnitFieldInfo
		self.battleRoom.outputDataSource:AddBattleFieldData(_BattleFieldData)
	end
	
	_currentObj:SetDead(self.__deadType)
	--LogTools.LogByLevel(LogLevel.log, "CheckDead", "ObjectDeadActionState", "EnterAction end")
    return true, self.__deadType
end

-- 执行行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _objId number 单位对应实体id
function ObjectDeadActionState:DoAction(_actionStateManager, _dt, _netId, _objId)
	if TimeUtils.battleNow(self.battleRoom:GetBattleId()) - self.__startTime > self.__totalTime then
		_actionStateManager:Exit(self)
	end
end

-- 退出行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _isBreak boolean 是否为打断退出
---@param _isActive boolean 是否为主动打断
function ObjectDeadActionState:ExitAction(_actionStateManager, _isBreak, _isActive)
	--LogTools.LogByLevel(LogLevel.log, "CheckDead", "ObjectDeadActionState", "ExitAction", "_netId", _actionStateManager:GetUnit():GetNetId(), "self.__deadObjId", self.__deadObjId, "self.__deadType", self.__deadType, "self.battleRoom.behaviorProcessor:CheckLevelAIHost()", self.battleRoom.behaviorProcessor:CheckLevelAIHost())

	local _unit = _actionStateManager:GetUnit()
	if _unit:TryObjectDeadChangeLeader() then return end
	self.battleRoom.battleUnitManager:OnBattleUnitDead(_unit:GetNetId(), self.__deadType)
	
	--LogTools.LogByLevel(LogLevel.log, "CheckDead", "ObjectDeadActionState", "ExitAction end")
end

-- 是否为主动状态
---@return boolean 是否为主动状态
function ObjectDeadActionState:IsActive()
    return true;
end

-- 行为状态Id
---@return number 行为状态Id 参照stateSwitchRule表
function ObjectDeadActionState:GetId()
    return 18
end

return ObjectDeadActionState;