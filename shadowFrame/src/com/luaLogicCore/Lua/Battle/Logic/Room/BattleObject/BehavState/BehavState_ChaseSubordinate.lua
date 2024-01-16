---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/07/19 16:12
--- Describe: 跟随召唤者
---

---@class BehavState_ChaseSubordinate : BattleUnit_PathFindCaller
BehavState_ChaseSubordinate = class(BattleUnit_PathFindCaller, "BehavState_ChaseSubordinate")

---@public
---@param _behavCom BattleUnitCom_Behav
function BehavState_ChaseSubordinate:Init(_behavCom)
	---@private
	---@type BattleUnitCom_Behav
	self.__behavCom = _behavCom
	self:__Init(_behavCom:GetUnit(), 500, 15)
	self:__InitStateUseInfos()
	self.__running = false
end

---初始化一些当前behavState需要使用的专属信息
---@private
function BehavState_ChaseSubordinate:__InitStateUseInfos()
	---@type BattleUnitCom_Subordination
	local _subordinationCom = self.__unitSelf:GetComponent(BattleUnitComponentType.Subordination)
	local _subordinateUnit = _subordinationCom:GetSubordinatedUnit()
	if not _subordinateUnit then return end
	
	---@private
	---@type number
	self.__netIdSelf = self.__unitSelf:GetNetId()
	---@private
	---@type BattleUnitBase
	self.__unitTarget = _subordinateUnit
	---@private
	---@type ActionStateManage
	self.__actionManagerTarget = _subordinateUnit:GetActionManager()
	---@private
	---@type LuaBehav_Define_ChaseSubordinateType
	self.__chaseType = nil
end

------------------------------------------------------------------------------------------------------------------------
---开启行为
---@public
---@param _chaseType LuaBehav_Define_ChaseSubordinateType
---@param _posShift Vector3 跟随召唤者的偏移量
function BehavState_ChaseSubordinate:Start(_chaseType, _posShift)
	--LogTools.LogByLevel(LogLevel.log, "behavState", "BehavState_ChaseSubordinate:Start", "Start", "netId", self.__unitSelf:GetNetId())
	if self.__running then return end
	self.__running = true

	self.__chaseType = _chaseType
	Vector3.Copy(self.__v3TargetShiftPos, _posShift)
	if _chaseType == LuaBehav_Define_ChaseSubordinateType.MoveTowards then
		self:__StartPathFind()
	elseif _chaseType == LuaBehav_Define_ChaseSubordinateType.ForceSet then
		self:__StartPosSet()
	end
end

---结束行为
---@public
function BehavState_ChaseSubordinate:Stop()
	--LogTools.LogByLevel(LogLevel.log, "behavState", "BehavState_ChaseSubordinate:Stop", "Start", "netId", self.__unitSelf:GetNetId())
	self:ReleaseHitBlockParams()
	if not self.__running then return end
	self.__running = false

	if self.__chaseType == LuaBehav_Define_ChaseSubordinateType.MoveTowards then
		self:__StopPathFind()
	elseif self.__chaseType == LuaBehav_Define_ChaseSubordinateType.ForceSet then
		self:__stopPosSet()
	end
	self.__chaseType = nil
end

------------------------------------------------------------------------------------------------------------------------
---@private
function BehavState_ChaseSubordinate:__StartPosSet()
	self.__comPosSet:Open(true)
	self:CallPathFind()
end

---@private
function BehavState_ChaseSubordinate:__stopPosSet()
	self.__comPosSet:Open(false)
	self.__comPosSet:StopPosSet()
end

---@private
function BehavState_ChaseSubordinate:__StartPathFind()
	self.__comPathFind:Open(true)
	self:CallPathFind()
end

---@private
function BehavState_ChaseSubordinate:__StopPathFind()
	self.__comPathFind:Open(false)
	self.__comPathFind:StopPathFind()
	self.__actionManagerSelf:Exit(self.__actionManagerSelf:GetCurrentMoveState(), false)
end
------------------------------------------------------------------------------------------------------------------------

---@public
function BehavState_ChaseSubordinate:CallPathFind()
	--LogTools.LogByLevel(LogLevel.log, "CheckSummonedMons", "BehavState_ChaseSubordinate", "CallPathFind start", LogTools.GetEnumTableDesc(LuaBehav_Define_ChaseSubordinateType, self.__chaseType))
	self:__ResetReFindTimeCount()
	if self.__chaseType == LuaBehav_Define_ChaseSubordinateType.MoveTowards then
		self.__comPathFind:StartPathFind(self,false)
	elseif self.__chaseType == LuaBehav_Define_ChaseSubordinateType.ForceSet then
		self.__comPosSet:StartPosSet(self)
	end
end

---获取目标点
---@public
---@param _v3Receiver Vector3 用于接收结果的vec3
---@return boolean 是否成功获取到目标点
function BehavState_ChaseSubordinate:GetTargetPos(_v3Receiver)
	--LogTools.LogByLevel(LogLevel.log, "CheckSummonedMons", "BehavState_ChaseSubordinate", "GetTargetPos start")
	if not self.__actionManagerTarget then return false end

	if self:CheckHitBlockType(BattleUnitAiHitBlockType.Edge) then
		self:ReleaseHitBlockParams()
		return false
	end
	local _v3ShiftInWorld = self.__behavCom:GetBattleRoom().vector3Pool:Pop()
	Vector3.MulQuat(self.__v3TargetShiftPos, self.__actionManagerTarget:GetRotation(), _v3ShiftInWorld)
	Vector3.Add(self.__actionManagerTarget:GetPosition(), _v3ShiftInWorld, _v3Receiver)
	Vector3.Copy(self.__v3LastTargetPos, _v3Receiver)
	self.__behavCom:GetBattleRoom().vector3Pool:Push(_v3ShiftInWorld)
	self:ReleaseHitBlockParams()
	return true
end

-- 
function BehavState_ChaseSubordinate:DirectMove(_deltaTime)
	if not self.__actionManagerTarget then return false end

	local _actionManager = self.__actionManagerSelf
	local _v3ShiftInWorld = self:GetBattleRoom().vector3Pool:Pop()
	local _v3Receiver = self:GetBattleRoom().vector3Pool:Pop()
	Vector3.MulQuat(self.__v3TargetShiftPos, self.__actionManagerTarget:GetRotation(), _v3ShiftInWorld)
	Vector3.Add(self.__actionManagerTarget:GetPosition(), _v3ShiftInWorld, _v3Receiver)
	Vector3.Copy(self.__v3LastTargetPos, _v3Receiver)
	_actionManager:SetPosition(_v3Receiver)
	self:GetBattleRoom().vector3Pool:Push(_v3ShiftInWorld)
	self:GetBattleRoom().vector3Pool:Push(_v3Receiver)

	---召唤物逻辑表现各算各的，不用同步给表现层了
	---暂时先用下IDLE的ID，后面统一改
	local battleUnitMoveOutput = {}
	battleUnitMoveOutput.v = _actionManager:GetVelocity()
	battleUnitMoveOutput.position = _actionManager:GetPosition()
	battleUnitMoveOutput.rotation = _actionManager:GetRotation()
	battleUnitMoveOutput.accelerate = Vector3.zero_global()
	battleUnitMoveOutput.moveParam = Vector3.zero_global()
	battleUnitMoveOutput.cameraParam = Vector3.zero_global()
	battleUnitMoveOutput.type = IdleActionState:GetId()

	local battleUnitMoveData = {}
	battleUnitMoveData.netId = self.__netIdSelf
	battleUnitMoveData.objId = self.__unitSelf:GetCurrentHeroObjectId()
	battleUnitMoveData.moveInfo = battleUnitMoveOutput

	self:GetBattleRoom().outputDataSource:AddBattleUnitMoveData(battleUnitMoveData)
end

---检查是否需要重新寻路
---@public
---@return boolean
function BehavState_ChaseSubordinate:CheckRefindPath(_deltaTime)
	if not self:__CheckReFindPathTime(_deltaTime) then return false end
	
	local _bRet = false
	local _v3NewPos = self.__behavCom:GetBattleRoom().vector3Pool:Pop()
	if self:GetTargetPos(_v3NewPos) and Vector3.SqrDistance(_v3NewPos, self.__v3LastTargetPos) > self.__reFindPathDis then
		_bRet = true
	end
	self.__behavCom:GetBattleRoom().vector3Pool:Push(_v3NewPos)
	return _bRet
end

---寻路移动结束时的回调
---@public
function BehavState_ChaseSubordinate:FindPathCallBack()
	if not self.__behavCom:GetBattleRoom().behaviorProcessor:CheckMonsAIHost() then return end
	self.__behavCom:GetBattleRoom().behaviorManager:PostTaskListenEvent(self.__behavCom:GetTreeIndex(), LuaBehav_Define_TaskListenEnum.ChaseSubordinateEnd)
end

------------------------------------------------------------------------------------------------------------------------

function BehavState_ChaseSubordinate:CheckRunning()
	return self.__running
end

function BehavState_ChaseSubordinate:Clear()
	self:Stop()
	self.__behavCom = nil
	self.__unitTarget = nil
	self.__actionManagerTarget = nil
	self.__chaseType = nil
	self.__running = nil
	self:__Clear()
end

return BehavState_ChaseSubordinate