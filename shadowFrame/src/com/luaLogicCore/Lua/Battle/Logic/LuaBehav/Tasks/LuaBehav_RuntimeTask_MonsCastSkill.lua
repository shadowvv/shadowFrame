---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/03/10 16:49
--- Describe: 怪物施放技能
---

---@class LuaBehav_MonsCastSkillParam : table
LuaBehav_MonsCastSkillParam = class(nil, "LuaBehav_MonsCastSkillParam")
function LuaBehav_MonsCastSkillParam:ctor(_battleRoom, _netId, _configTask)
	self.netId = _netId
	self.skillId = _configTask.value
	if _configTask.idDescType == LuaBehav_Define_SkillIdDescType.Position then
		---@type BattleUnitBase
		local _unit = _battleRoom.battleUnitManager:GetUnit(_netId)
		---@type MonsterInstance
		local _instance =_unit:GetDataInstanceXls()
		self.skillId = _instance.skills[_configTask.value]
	end
	self.forceBreak = _configTask.forceBreak
end

---@class LuaBehav_RuntimeTask_MonsCastSkill : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_MonsCastSkill = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_MonsCastSkill")

function LuaBehav_RuntimeTask_MonsCastSkill:OnStart()
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_MonsCastSkill", "OnStart", "self.configTask", dumpTableEx(self.configTask))
	self:__OnStart()
	self.__timeTotal = self.configTask.time
	self.__startTime = self.battleRoom.behaviorManager:GetUnitTimeCnt()
	self.__callRet, self.__getToken = BEHAVIOR_ACTION.MonsCastSkill(self.battleId, LuaBehav_MonsCastSkillParam.New(self.battleRoom, self.netId, self.configTask))
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_MonsCastSkill", "self.__callRet", self.__callRet, "self.netId", self.netId)
end

function LuaBehav_RuntimeTask_MonsCastSkill:OnUpdate(_deltaTime)
	if not self.__getToken then
		self:__SetTaskState(LuaBehav_Define_TaskState.Success)
		return LuaBehav_Define_TaskState.Success
	end
	
	if not self.__callRet then
		self:__SetTaskState(LuaBehav_Define_TaskState.Failure)
		return LuaBehav_Define_TaskState.Failure
	end
	
	local _timeDis = self.battleRoom.behaviorManager:GetUnitTimeCnt() - self.__startTime
	if _timeDis > self.__timeTotal then
		self:__PushSkillToken()
		self:__SetTaskState(LuaBehav_Define_TaskState.Success)
		return LuaBehav_Define_TaskState.Success
	end
	
	self:__SetTaskState(LuaBehav_Define_TaskState.Running)
	return LuaBehav_Define_TaskState.Running
end

-- 节点被打断时调用
function LuaBehav_RuntimeTask_MonsCastSkill:OnAbort()
	self:__PushSkillToken()
	self:__OnAbort()
end

---返还技能令牌
---@private
function LuaBehav_RuntimeTask_MonsCastSkill:__PushSkillToken()
	local _battleUnitManger = self.battleRoom.battleUnitManager
	if not self.unit then
		self.unit = _battleUnitManger:GetUnit(self.netId)
	end
	if self.unit then
		_battleUnitManger:GetSkillTokenManager():PushSkillToken(self.unit)
	end
end

return LuaBehav_RuntimeTask_MonsCastSkill