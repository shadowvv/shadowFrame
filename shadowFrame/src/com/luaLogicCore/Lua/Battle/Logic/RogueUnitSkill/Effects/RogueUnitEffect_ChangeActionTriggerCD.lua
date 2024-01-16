---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/07/28 15:02
--- Describe:
---

---@class RogueUnitEffect_ChangeActionTriggerCD : RogueUnitSkillEffectBase
RogueUnitEffect_ChangeActionTriggerCD = class(RogueUnitSkillEffectBase, "RogueUnitEffect_ChangeActionTriggerCD")

---@public
---@param _targetObjList BattleObjectBase[]
function RogueUnitEffect_ChangeActionTriggerCD:OnTrig(_targetObjList)
	self:__OnTrig(_targetObjList)

	local _params = self:GetXlsData().params
	local _actionId = math.floor(_params[1])
	local _cd = _params[2]
	
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    RogueUnitEffect_ChangeActionTriggerCD:OnTrig", "Effect触发", "所属ActionId", self:GetAction():GetId(), "当前Effect ID", self:GetId(), "当前Effect类型", self:GetEffectTypeDesc(), "目标ActionId", _actionId, "_cd", _cd)
	end

	---@type BattleUnitCom_RogueUnitSkill
	local _rogueUnitSkillCom = self:GetUnit():GetComponent(BattleUnitComponentType.RogueUnitSkill)
	if not _rogueUnitSkillCom then return end
	local _rogueSkill = _rogueUnitSkillCom:GetRogueUnitSkill()
	if not _rogueSkill then return end
	_rogueSkill:GetAction(_actionId):GetTrigger():ChangeTrigCd(_cd)
end


return RogueUnitEffect_ChangeActionTriggerCD