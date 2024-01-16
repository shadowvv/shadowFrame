---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/07/28 14:34
--- Describe:
---

---@class RogueUnitSkillData : table
RogueUnitSkillData = class(nil, "RogueUnitSkillData")
function RogueUnitSkillData:ctor(_data) end

---@public
---@return BattleRoom
function RogueUnitSkillData:GetBattleRoom()
	return self.__battleRoom
end

---@public
---@return number
function RogueUnitSkillData:GetBattleId()
	return self.__battleId
end

---@public
---@return BattleUnitBase
function RogueUnitSkillData:GetUnit()
	return self.__unit
end
------------------------------------------------------------------------------------------------------------------------

---@public
---@param _unit BattleUnitBase
---@param _rogueUnitSkillXls RogueUnitSkill 当前选择的肉鸽主公技对应的表数据
---@param _attachedActionIdList number[] 强化附加的ActionId列表
function RogueUnitSkillData:Init(_unit, _rogueUnitSkillXls, _attachedActionIdList)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "主公技初始化开始", "所属玩家NetId", _unit:GetNetId(), "技能ID", _rogueUnitSkillXls.id, "强化附加的Action Id列表", dumpTableEx(_attachedActionIdList))
	end
	
	---@private
	---@type BattleUnitBase
	self.__unit = _unit
	---@private
	---@type BattleRoom
	self.__battleRoom = _unit:GetBattleRoom()
	---@private
	---@type number
	self.__battleId = _unit:GetBattleId()

	---@private
	---@type number
	self.__id = _rogueUnitSkillXls.id
	---@private
	---@type RogueUnitSkill
	self.__xls = _rogueUnitSkillXls
	
	self:__InitEnCollectors(_rogueUnitSkillXls)
	self:__InitActions(_rogueUnitSkillXls, _attachedActionIdList)
	
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "主公技初始化结束", "NetId", self.__unit:GetNetId(), "主公技ID", self.__id)
		self:DumpCurActions()
	end
end

---@public
function RogueUnitSkillData:DumpCurActions()
	if not CheckLogLevel(LogLevel.log) or not LogTools.RogueUnitSkillLog then return end
	
	LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    ", "主公技默认ActionId列表：")
	for _, _actionData in pairs(self.__actionDic) do
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    ", "    ", "actionId", _actionData:GetId())
	end
	LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    ", "强化附加的ActionId列表：")
	for _, _actionData in pairs(self.__attachActionDic) do
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    ", "    ", "actionId", _actionData:GetId())
	end
end

---@private
---@param _rogueUnitSkillXls RogueUnitSkill
function RogueUnitSkillData:__InitEnCollectors(_rogueUnitSkillXls)

	---@private
	---@type number
	self.__maxEnPropId = _rogueUnitSkillXls.maxPropId
	---@private
	---@type BattlePropertyEnum
	self.__maxEnPropStr = ProtoEnumTool.GetPropertyKey(_rogueUnitSkillXls.maxPropId)
	---@private
	---@type number
	self.__curEnPropId = _rogueUnitSkillXls.curPropId
	---@private
	---@type BattlePropertyEnum
	self.__curEnPropStr = ProtoEnumTool.GetPropertyKey(_rogueUnitSkillXls.curPropId)
	---@private
	---@type RogueUnitSkillEnergyCollectorBase[]
	self.__enCollectorDic = {}
	
	local _collectorIds = _rogueUnitSkillXls.enCollectors
	for _, _id in pairs(_collectorIds) do
		self:AddEnCollectorById(_id)
	end
	
end

---@private
---@param _rogueUnitSkillXls RogueUnitSkill
function RogueUnitSkillData:__InitActions(_rogueUnitSkillXls, _attachedActionIdList)
	---@private
	---@type RogueUnitSkillActionBase[]
	self.__actionDic = {}
	for _, _actionId in pairs(_rogueUnitSkillXls.actions) do
		self:AddActionById(_actionId, self.__actionDic)
	end
	---@private
	---@type RogueUnitSkillActionBase[]
	self.__attachActionDic = {}
	if _attachedActionIdList then
		for i = 1, #_attachedActionIdList do
			self:AddActionById(_attachedActionIdList[i], self.__attachActionDic)
		end
	end
end

------------------------------------------------------------------------------------------------------------------------

---@public
function RogueUnitSkillData:OnUpdate(_deltaTime)
	
	local _useDic = self.__attachActionDic
	for _, _actionData in pairs(_useDic) do
		if _actionData:OnUpdate(_deltaTime) then
			self:RemoveAction(_actionData, _useDic)
		end
	end
	
	_useDic = self.__actionDic
	for _, _actionData in pairs(_useDic) do
		if _actionData:OnUpdate(_deltaTime) then
			self:RemoveAction(_actionData, _useDic)
		end
	end
end

------------------------------------------------------------------------------------------------------------------------

---@public
---@return RogueUnitSkillEnergyCollectorBase
function RogueUnitSkillData:GetEnCollector(_collectorId)
	return self.__enCollectorDic[_collectorId]
end

---@public
---@param _collectorId number
function RogueUnitSkillData:AddEnCollectorById(_collectorId)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "向技能中添加能量收集器", "要添加的CollectorId", _collectorId)
	end
	
	---@type RogueUnitSkillEnCollector
	local _collectorXls = self:GetBattleRoom().inputDataSource:GetDict("RogueUnitSkillEnCollector", _collectorId)
	if not _collectorXls then return end
	local _collectorData = self:GetBattleRoom().rogueUnitSkillService:GenerateRogueUnitSkillEnergyCollector(_collectorXls.collectorType)
	_collectorData:Init(self, _collectorXls)
	self.__enCollectorDic[_collectorId] = _collectorData
end

---@public
function RogueUnitSkillData:RemoveEnCollectorById(_collectorId)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "从技能中移除能量收集器", "要移除的CollectorId", _collectorId)
	end
	
	local _collectorData = self.__enCollectorDic[_collectorId]
	if not _collectorData then return end

	_collectorData:OnRemove()
	self.__enCollectorDic[_collectorId] = nil
end

---@public
function RogueUnitSkillData:ChangeEnCollectorById(_oldCollectorId, _newCollectorId)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "替换技能中的能量收集器", "旧的CollectorId", _oldCollectorId, "新的CollectorId", _newCollectorId)
	end
	
	self:RemoveEnCollectorById(_oldCollectorId)
	self:AddEnCollectorById(_newCollectorId)
end

---@public
function RogueUnitSkillData:RemoveAllEnCollectors()
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "移除所有的能量收集器")
	end
	for _, _collectorData in pairs(self.__enCollectorDic) do
		_collectorData:OnRemove()
	end
	self.__enCollectorDic = {}
end

------------------------------------------------------------------------------------------------------------------------
---@public
---@param _actionId number 表ID
---@return RogueUnitSkillActionBase
function RogueUnitSkillData:GetAction(_actionId)
	return self.__actionDic[_actionId]
end

---@public
---@param _actionId number
function RogueUnitSkillData:AddActionById(_actionId, _useDic)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "向技能中添加Action", "要添加的ActionId", _actionId, "是否属于附加action", _useDic == self.__attachActionDic)
	end
	_useDic = _useDic or self.__actionDic
	
	---@type RogueUnitSkillAction
	local _actionXls = self:GetBattleRoom().inputDataSource:GetDict("RogueUnitSkillAction", _actionId)
	if not _actionXls then return end
	local _actionData = self:GetBattleRoom().rogueUnitSkillService:GenerateRogueUnitSkillAction()
	_actionData:Init(self, _actionXls)
	_useDic[_actionId] = _actionData
end

---@public
function RogueUnitSkillData:RemoveActionById(_actionId, _useDic)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "从技能中移除Action by Id", "要移除的ActionId", _actionId, "是否属于附加action", _useDic == self.__attachActionDic)
	end
	
	_useDic = _useDic or self.__actionDic
	local _actionData = _useDic[_actionId]
	if not _actionData then return end

	self:RemoveAction(_actionData, _useDic)
end

---@public
---@param _actionData RogueUnitSkillActionBase
---@param _useDic RogueUnitSkillActionBase[]
function RogueUnitSkillData:RemoveAction(_actionData, _useDic)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "从技能中移除Action", "要移除的ActionId", _actionData:GetId(), "是否属于附加action", _useDic == self.__attachActionDic)
	end
	
	_useDic = _useDic or self.__actionDic
	_actionData:OnRemove()
	_useDic[_actionData:GetId()] = nil
end

---@public
function RogueUnitSkillData:ChangeActionById(_oldActionId, _newActionId, _useDic)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "替换技能中的Action", "旧的ActionId", _oldActionId, "新的ActionId", _newActionId, "是否属于附加action", _useDic == self.__attachActionDic)
	end
	
	self:RemoveActionById(_oldActionId, _useDic)
	self:AddActionById(_newActionId, _useDic)
end

------------------------------------------------------------------------------------------------------------------------
---@public
---@return number
function RogueUnitSkillData:GetId()
	return self.__id
end

---@public
---@return RogueUnitSkill
function RogueUnitSkillData:GetXlsData()
	return self.__xls
end

---@public
---@return number
function RogueUnitSkillData:GetMaxEnPropId()
	return self.__maxEnPropId
end

---@public
---@return BattlePropertyEnum
function RogueUnitSkillData:GetMaxEnPropStr()
	return self.__maxEnPropStr
end

---@public
---@return number
function RogueUnitSkillData:GetCurEnPropId()
	return self.__curEnPropId
end

---@public
---@return BattlePropertyEnum
function RogueUnitSkillData:GetCurEnPropStr()
	return self.__curEnPropStr
end

---检查当前能量是否达到最大能量
---@public
---@return boolean
function RogueUnitSkillData:CheckEnEnough()
	---@type BattleUnitCom_UnitProp
	local _unitPropCom = self.__unitPropCom
	if not _unitPropCom then
		_unitPropCom = self.__unit:GetComponent(BattleUnitComponentType.UnitProp)
		---@private
		---@type BattleUnitCom_UnitProp
		self.__unitPropCom = _unitPropCom
	end
	if not _unitPropCom then return false end

	if _unitPropCom:GetPropByName(self.__curEnPropStr) < _unitPropCom:GetPropByName(self.__maxEnPropStr) then
		return false
	end
	
	return true
end

return RogueUnitSkillData