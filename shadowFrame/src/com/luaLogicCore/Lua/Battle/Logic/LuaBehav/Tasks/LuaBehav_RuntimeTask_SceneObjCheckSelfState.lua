---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/10/31 17:04
--- Describe: 战场物件检查自身状态
---

---@class LuaBehav_RuntimeTask_SceneObjCheckSelfState : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_SceneObjCheckSelfState = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_SceneObjCheckSelfState")
function LuaBehav_RuntimeTask_SceneObjCheckSelfState:IsConditionalTask()
	return true
end

function LuaBehav_RuntimeTask_SceneObjCheckSelfState:OnUpdate()
	local _retState = LuaBehav_Define_TaskState.Failure

	self.__callRet = BEHAVIOR_CHECK.SceneObjCheckSelfState(self.battleId, self.netId, self.variables.stateId:GetValue())
	if self.__callRet then
		_retState = LuaBehav_Define_TaskState.Success
	end
	
	self:__SetTaskState(_retState)
	--LogTools.LogByLevel(LogLevel.log, "LuaBehav_RuntimeTask_SceneObjCheckSelfState", "_retState", LogTools.GetEnumTableDesc(LuaBehav_Define_TaskState, _retState))
	return _retState
end
return LuaBehav_RuntimeTask_SceneObjCheckSelfState