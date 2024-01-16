---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/06/23 12:05
--- Describe:
---

---@class LuaBehav_RuntimeTask_LevelCheckGuide : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelCheckGuide = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelCheckGuide")

function LuaBehav_RuntimeTask_LevelCheckGuide:IsConditionalTask()
	return true
end

-- 
function LuaBehav_RuntimeTask_LevelCheckGuide:__Check()
	local _ret = BEHAVIOR_CHECK.LevelCheckBattleGuide(self.battleId ,self.configTask.guideId)
	if self.configTask.checkType == LuaBehav_Define_BattleGuideStateType.Finished then
		return _ret
	else
		return not _ret
	end
end

function LuaBehav_RuntimeTask_LevelCheckGuide:OnUpdate()
	local _retState = LuaBehav_Define_TaskState.Failure
	
	if self:__Check() then
		_retState = LuaBehav_Define_TaskState.Success
	end

	self:__SetTaskState(_retState)
	return _retState
end

return LuaBehav_RuntimeTask_LevelCheckGuide