---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2021/12/27 11:58
--- Describe: 行为树根节点
---


---@class LuaBehav_RuntimeTask_Root : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_Root = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_Root")

-- 
function LuaBehav_RuntimeTask_Root:ReCountTaskState(_taskState)
	local _state = LuaBehav_Define_TaskState.Success
	local _stateList = self.childStateList
	if 0 == #_stateList then
		_state = LuaBehav_Define_TaskState.Failure
	else
		_state = _stateList[1]
	end  
	self:__SetTaskState(_state)
	return _state
end

return LuaBehav_RuntimeTask_Root