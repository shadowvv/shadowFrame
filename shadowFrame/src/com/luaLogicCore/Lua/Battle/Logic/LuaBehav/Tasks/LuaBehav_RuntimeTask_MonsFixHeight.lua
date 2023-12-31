---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/06/25 12:10
--- Describe:
---

---@class LuaBehav_RuntimeTask_MonsFixHeight : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_MonsFixHeight = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_MonsFixHeight")

function LuaBehav_RuntimeTask_MonsFixHeight:OnStart()
	--LogTools.LogByLevel(LogLevel.logErr, "CheckLuaBehav", "LuaBehav_RuntimeTask_MonsFixHeight", "OnStart")
	self:__OnStart()
	self.__listen = false
	self:RegistListenEvent(LuaBehav_Define_TaskListenEnum.MonsFixHeightEnd)
	self.__callRet = BEHAVIOR_ACTION.MonsStartFixHeight(self.battleId, self.netId)
end

-- 
function LuaBehav_RuntimeTask_MonsFixHeight:OnListenEvent()
	self.__listen = true
end

-- 节点被打断时调用
function LuaBehav_RuntimeTask_MonsFixHeight:OnAbort()
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_MonsFixHeight", "OnAbort", self.netId)
	self:__OnAbort()
	self.__listen = false
	self:RemoveListenEvent(LuaBehav_Define_TaskListenEnum.MonsFixHeightEnd)
	BEHAVIOR_ACTION.MonsStopFixHeight(self.battleId, self.netId)
end

function LuaBehav_RuntimeTask_MonsFixHeight:OnUpdate(_deltaTime)
	if not self.__callRet then
		----LogTools.LogByLevel(LogLevel.log, "LuaBehav_RuntimeTask_MonsFixHeight xxxx __OnMoveToPathPoint Failure")
		self:__SetTaskState(LuaBehav_Define_TaskState.Failure)
		return LuaBehav_Define_TaskState.Failure
	end

	local _netId = self.netId
	--监听到位置消息
	if self.__listen then
		self:__SetTaskState(LuaBehav_Define_TaskState.Success)
		BEHAVIOR_ACTION.MonsStopFixHeight(self.battleId, _netId)
		--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_MonsFixHeight xxxx __OnMoveToPathPoint stop receive event _netId", _netId)
		return LuaBehav_Define_TaskState.Success
	end
	self:__SetTaskState(LuaBehav_Define_TaskState.Running)
	return LuaBehav_Define_TaskState.Running
end

-- 退出节点时调用
function LuaBehav_RuntimeTask_MonsFixHeight:OnExit()
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_MonsFixHeight", "OnExit")
	self:__OnExit()
	self.__listen = false
	self:RemoveListenEvent(LuaBehav_Define_TaskListenEnum.MonsFixHeightEnd)
end

return LuaBehav_RuntimeTask_MonsFixHeight