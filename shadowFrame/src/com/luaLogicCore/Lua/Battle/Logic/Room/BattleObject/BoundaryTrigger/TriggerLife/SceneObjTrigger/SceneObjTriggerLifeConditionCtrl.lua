---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/11/01 16:19
--- Describe:
---

---@class SceneObjTriggerLifeConditionCtrl : BoundaryTriggerLifeConditionCtrlBase
SceneObjTriggerLifeConditionCtrl = class(BoundaryTriggerLifeConditionCtrlBase, "SceneObjTriggerLifeConditionCtrl")

---@public
---@param _triggerCom BattleObjCom_BoundaryTrigger
---@param _gadgetXls Gadget
function SceneObjTriggerLifeConditionCtrl:Init(_triggerCom, _gadgetXls)
	self:__Init(_triggerCom)
end

---@public
function SceneObjTriggerLifeConditionCtrl:OnUpdate(_dt)
	if self:GetTriggerCom():CheckLifeState(BoundaryTriggerLifeState.Created) then
		self:__TrigOpen()
	end
end

return SceneObjTriggerLifeConditionCtrl