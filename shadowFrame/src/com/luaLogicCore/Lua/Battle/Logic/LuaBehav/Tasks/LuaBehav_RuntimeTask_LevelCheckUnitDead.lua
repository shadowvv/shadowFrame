---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/03/22 18:02
--- Describe:
---

---@class LuaBehav_RuntimeTask_LevelCheckUnitDead : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelCheckUnitDead = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelCheckUnitDead")

function LuaBehav_RuntimeTask_LevelCheckUnitDead:IsConditionalTask()
	return true
end

function LuaBehav_RuntimeTask_LevelCheckUnitDead:OnUpdate()
	local _retState = LuaBehav_Define_TaskState.Failure

	self.__callRet = BEHAVIOR_CHECK.LevelCheckUnitDead(self.battleId, self.configTask.targetType, self.configTask.idList, self.configTask.checkUnitTypeList)
	if self.__callRet then
		_retState = LuaBehav_Define_TaskState.Success
	end
	
	self:__SetTaskState(_retState)
	----LogTools.LogByLevel(LogLevel.log, "LuaBehav_RuntimeTask_LevelCheckUnitDead", "_retState", --LogTools.GetEnumTableDesc(LuaBehav_Define_TaskState, _retState))
	return _retState
end

return LuaBehav_RuntimeTask_LevelCheckUnitDead