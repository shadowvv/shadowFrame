---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/07/28 14:37
--- Describe:
---

---@class RogueUnitSkillActionBase : table
RogueUnitSkillActionBase = class(nil, "RogueUnitSkillActionBase")
function RogueUnitSkillActionBase:ctor(_data) end

---@public
---@return BattleRoom
function RogueUnitSkillActionBase:GetBattleRoom()
	return self.__battleRoom
end

---@public
---@return number
function RogueUnitSkillActionBase:GetBattleId()
	return self.__battleId
end

---@public
---@return BattleUnitBase
function RogueUnitSkillActionBase:GetUnit()
	return self.__unit
end
------------------------------------------------------------------------------------------------------------------------

---@public
---@param _rogueUnitSkill RogueUnitSkillData
---@param _rogueUnitSkillActionXls RogueUnitSkillAction
function RogueUnitSkillActionBase:Init(_rogueUnitSkill, _rogueUnitSkillActionXls)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "  Action初始化开始", "ActionId", _rogueUnitSkillActionXls.id)
	end
	
	---@private
	self.__actionId = _rogueUnitSkillActionXls.id
	---@private
	---@type RogueUnitSkillAction
	self.__xls = _rogueUnitSkillActionXls
	---@private
	self.__rogueSkill = _rogueUnitSkill
	
	local _unit = _rogueUnitSkill:GetUnit()
	---@private
	---@type BattleUnitBase
	self.__unit = _unit
	---@private
	---@type BattleRoom
	self.__battleRoom = _unit:GetBattleRoom()
	---@private
	---@type number
	self.__battleId = _unit:GetBattleId()

	self:__InitXls()
	
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "  Action初始化结束", "ActionId", _rogueUnitSkillActionXls.id)
	end
end

---@private
function RogueUnitSkillActionBase:__InitXls()
	local _rogueUnitSkillActionXls = self.__xls
	
	---@type RogueUnitSkillEffectBase[]
	self.__effectDic = {}

	---@private
	---@type RogueUnitSkillTrigger
	self.__trigger = RogueUnitSkillTrigger.New()
	self.__trigger:Init(self)

	---@private
	---@type RogueUnitSkillTarget
	local _rogueUnitTargetSelectorXls = self:GetBattleRoom().inputDataSource:GetDict("RogueUnitSkillTarget", _rogueUnitSkillActionXls.targetSelector)
	if _rogueUnitTargetSelectorXls then
		---@private
		---@type RogueUnitSkillTargetSelectorBase
		self.__targetSelector = self:GetBattleRoom().rogueUnitSkillService:GenerateRogueUnitSkillTargetSelector(_rogueUnitTargetSelectorXls.selectorType)
		self.__targetSelector:Init(self, _rogueUnitTargetSelectorXls)
	end
	
	local _effectIds = _rogueUnitSkillActionXls.effects
	for _, _effectId in pairs(_effectIds) do
		self:AddEffectById(_effectId)
	end
	
	---不关心目标的action不会有目标选择器，统一用这个默认的空目标列表
	---@private
	self.__defaultTargetList = {}
end

------------------------------------------------------------------------------------------------------------------------

---@public
---@param _targetObjBaseList BattleObjectBase[]
function RogueUnitSkillActionBase:OnTrig(_targetObjBaseList)
	for _, _effectData in pairs(self.__effectDic) do
		_effectData:OnTrig(_targetObjBaseList)
	end
end

---@protected
function RogueUnitSkillActionBase:__OnRemove()
	for _, _effectData in pairs(self.__effectDic) do
		_effectData:OnRemove()
	end
	if self.__targetSelector then
		self.__targetSelector:OnRemove()
	end
	if self.__trigger then
		self.__trigger:OnRemove()
	end
end

---@public
function RogueUnitSkillActionBase:OnRemove()
	self:__OnRemove()
end

---@public
function RogueUnitSkillActionBase:OnUpdate(_deltaTime)
	if not self.__trigger:CheckTrig() then return false end

	local _targetList = self.__targetSelector and self.__targetSelector:SelectTarget() or self.__defaultTargetList
	if not _targetList then return end
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    Action触发后筛选目标", "ActionId", self.__actionId, "当前选择器ID", self.__xls.targetSelector, "当前选择器类型", self.__targetSelector and self.__targetSelector:GetSelectorTypeDesc(), "_targetList", _targetList and #_targetList)
	end
	self:OnTrig(_targetList)
	return self.__trigger:CheckTrigMax()
end

------------------------------------------------------------------------------------------------------------------------

---@public
---@return RogueUnitSkillEffectBase
function RogueUnitSkillActionBase:GetEffect(_effectId)
	return self.__effectDic[_effectId]
end

---@public
---@param _effectId number
function RogueUnitSkillActionBase:AddEffectById(_effectId)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "  向Action中添加Effect", "所属ActionId", self:GetId(), "要添加的EffectId", _effectId)
	end
	
	---@type RogueUnitSkillEffect
	local _effectXls = self:GetBattleRoom().inputDataSource:GetDict("RogueUnitSkillEffect", _effectId)
	local _effectData = self:GetBattleRoom().rogueUnitSkillService:GenerateRogueUnitSkillEffect(_effectXls.effectType)
	if not _effectData then return end
	_effectData:Init(self, _effectXls)
	self.__effectDic[_effectId] = _effectData
end

---@public
---@param _effectId number
function RogueUnitSkillActionBase:RemoveEffectById(_effectId)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "  从Action中移除Effect", "所属ActionId", self:GetId(), "要移除的EffectId", _effectId)
	end
	
	local _effectData = self.__effectDic[_effectId]
	if not _effectData then return end
	_effectData:OnRemove()
	self.__effectDic[_effectId] = nil
end

---@public
---@param _oldEffectId number
---@param _newEffectId number
function RogueUnitSkillActionBase:ChangeEffectById(_oldEffectId, _newEffectId)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "  替换Action中的Effect", "所属ActionId", self:GetId(), "旧的EffectId", _oldEffectId, "新的EffectId", _newEffectId)
	end
	
	self:RemoveEffectById(_oldEffectId)
	self:AddEffectById(_newEffectId)
end

------------------------------------------------------------------------------------------------------------------------
---@public
---@return number
function RogueUnitSkillActionBase:GetId()
	return self.__actionId
end

---@public
---@return RogueUnitSkillAction
function RogueUnitSkillActionBase:GetXlsData()
	return self.__xls
end

---@public
---@return RogueUnitSkillData
function RogueUnitSkillActionBase:GetRogueUnitSkill()
	return self.__rogueSkill
end

---@public
---@return RogueUnitSkillTrigger
function RogueUnitSkillActionBase:GetTrigger()
	return self.__trigger
end

---@public
---@return RogueUnitSkillTargetSelectorBase
function RogueUnitSkillActionBase:GetTargetSelector()
	return self.__targetSelector
end

return RogueUnitSkillActionBase