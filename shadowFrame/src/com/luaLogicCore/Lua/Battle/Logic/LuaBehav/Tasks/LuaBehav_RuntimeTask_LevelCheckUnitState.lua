---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/06/06 14:11
--- Describe: 关卡检查单位当前状态
---

---@class LuaBehav_RuntimeTask_LevelCheckUnitState : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelCheckUnitState = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelCheckUnitState")

function LuaBehav_RuntimeTask_LevelCheckUnitState:IsConditionalTask()
	return true
end

function LuaBehav_RuntimeTask_LevelCheckUnitState:OnUpdate()
	local _retState = LuaBehav_Define_TaskState.Failure

	self.__callRet = BEHAVIOR_CHECK.LevelCheckUnitState(self.battleId, self.configTask.targetType, self.configTask.targetId, self.configTask.stateId)
	if self.__callRet then
		_retState = LuaBehav_Define_TaskState.Success
	end
	
	self:__SetTaskState(_retState)
	----LogTools.LogByLevel(LogLevel.log, "LuaBehav_RuntimeTask_LevelCheckUnitDead", "_retState", --LogTools.GetEnumTableDesc(LuaBehav_Define_TaskState, _retState))
	return _retState
end

return LuaBehav_RuntimeTask_LevelCheckUnitState