---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/12/29 11:08
--- Describe: 强制朝向目标（不更改目标,且到达后不会结束行为,自动重新开启）
---

---@class BehavState_ForceFaceTarget : BattleUnit_PathFindCaller
BehavState_ForceFaceTarget = class(BattleUnit_PathFindCaller, "BehavState_ForceFaceTarget")

---@public
---@param _behavCom BattleUnitCom_Behav
function BehavState_ForceFaceTarget:Init(_behavCom)
	---@private
	---@type BattleUnitCom_Behav
	self.__behavCom = _behavCom
	self:__Init(_behavCom:GetUnit(), 1000, 15)
	self:__InitStateUseInfos()
	self.__running = false
end

---初始化一些当前behavState需要使用的专属信息
---@private
function BehavState_ForceFaceTarget:__InitStateUseInfos()
	---@private
	---@type number
	self.__netIdSelf = self.__unitSelf:GetNetId()
	---@private
	---@type number
	self.__netIdTarget = nil
end

------------------------------------------------------------------------------------------------------------------------
---@public
---@param _targetNetId number 目标netId
---@param _yawSpeed number 水平角速度（度/秒）
---@param _pitchSpeed number 竖直角速度（度/秒） 
function BehavState_ForceFaceTarget:Start(_targetNetId, _yawSpeed, _pitchSpeed)
	--LogTools.LogByLevel(LogLevel.log, "behavState", "BehavState_ForceFaceTarget:Start", "Start", "netId", self.__unitSelf:GetNetId(), "_targetNetId", _targetNetId, "_yawSpeed", _yawSpeed, "_pitchSpeed", _pitchSpeed, "self.__running", self.__running)
	if self.__running then return end
	self.__running = true

	if not _targetNetId then return end
	---@type BattleObjCom_Property
	local _propCom = self.__behavCom:GetUnit():GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Property)
	if not _propCom then return end
	
	_propCom:SetRotateSensitivityX(_yawSpeed)
	_propCom:SetRotateSensitivityY(_pitchSpeed)
	self.__netIdTarget = _targetNetId
	self:CallPathFind()
end

---@public
function BehavState_ForceFaceTarget:Stop()
	--LogTools.LogByLevel(LogLevel.log, "behavState", "BehavState_ForceFaceTarget:Stop", "Start", "netId", self.__unitSelf:GetNetId(), "self.__running", self.__running)
	self:ReleaseHitBlockParams()
	if not self.__running then return end
	self.__running = false

	self.__actionManagerSelf:Exit(self.__actionManagerSelf.currentStates[TurnActionState:GetId()], false)
	self.__comRotate:Stop()
	self.__netIdTarget = nil
	---@type BattleObjCom_Property
	local _propCom = self.__behavCom:GetUnit():GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Property)
	if not _propCom then return end
	_propCom:ResetRotateSensitivities()
end
------------------------------------------------------------------------------------------------------------------------

---@public
function BehavState_ForceFaceTarget:CallPathFind()
	--LogTools.LogByLevel(LogLevel.log, "behavState", "BehavState_ForceFaceTarget:CallPathFind")
	self.__comRotate:Start(self, false)
end

---获取目标点
---@public
---@param _v3Receiver Vector3 用于接收结果的vec3
---@return boolean 是否成功获取到目标点
function BehavState_ForceFaceTarget:GetTargetDir(_v3Receiver, _deltaTime)
	if not self.__netIdTarget or -1 == self.__netIdTarget then return false end
	self:ReleaseHitBlockParams()
	return self.__behavCom:GetBattleRoom().transUtil:GetDirBetweenUnits(self.__netIdSelf, self.__netIdTarget, _v3Receiver)
end

---寻路移动结束时的回调
---@public
function BehavState_ForceFaceTarget:FindPathCallBack()
	--LogTools.LogByLevel(LogLevel.log, "behavState", "BehavState_ForceFaceTarget:FindPathCallBack")
	self:CallPathFind()
end

------------------------------------------------------------------------------------------------------------------------
---@public
---@return boolean
function BehavState_ForceFaceTarget:CheckRunning()
	return self.__running
end

---@public
function BehavState_ForceFaceTarget:Clear()
	self:Stop()
	self.__behavCom = nil
	self.__netIdSelf = nil
	self.__netIdTarget = nil
	self.__running = nil
	self:__Clear()
end


return BehavState_ForceFaceTarget