---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/08/01 11:08
--- Describe: 单位检查自己的召唤物
---

---@class LuaBehav_RuntimeTask_UnitCheckSummoned : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_UnitCheckSummoned = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_UnitCheckSummoned")

function LuaBehav_RuntimeTask_UnitCheckSummoned:IsConditionalTask()
	return true
end

function LuaBehav_RuntimeTask_UnitCheckSummoned:OnUpdate()
	local _subordinationCom = self.__subordinationCom
	
	if not _subordinationCom then
		local _unit = self.battleRoom.battleUnitManager:GetUnit(self.netId)
		if not _unit then
			self:__SetTaskState(LuaBehav_Define_TaskState.Failure)
			return LuaBehav_Define_TaskState.Failure
		end
		
		---@private
		---@type BattleUnitCom_Subordination
		self.__subordinationCom = _unit:GetComponent(BattleUnitComponentType.Subordination)
		_subordinationCom = self.__subordinationCom
	end

	if not _subordinationCom then
		self:__SetTaskState(LuaBehav_Define_TaskState.Failure)
		return LuaBehav_Define_TaskState.Failure
	end

	if _subordinationCom:CheckManagedObjExist(self.configTask.idList, BattleObjectType.SummonedMons, self.configTask.checkType, self.configTask.isExist) then
		self:__SetTaskState(LuaBehav_Define_TaskState.Success)
		return LuaBehav_Define_TaskState.Success
	end
	
	self:__SetTaskState(LuaBehav_Define_TaskState.Failure)
	return LuaBehav_Define_TaskState.Failure
end

return LuaBehav_RuntimeTask_UnitCheckSummoned