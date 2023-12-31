---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/06/09 15:15
--- Describe: 关卡检查玩家技能状态
---

---@class LuaBehav_RuntimeTask_LevelCheckPlayerSkillState : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelCheckPlayerSkillState = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelCheckPlayerSkillState")

function LuaBehav_RuntimeTask_LevelCheckPlayerSkillState:IsConditionalTask()
	return true
end

-- 
function LuaBehav_RuntimeTask_LevelCheckPlayerSkillState:__Check(_configTask)
	local _unitList = self.battleRoom.battleUnitManager:GetUnitListByUnitType(BattleUnitType.Player)
	local _unit = _unitList[1]
	if not _unit then self.__callRet = false end
	local _objId = _unit:GetCurrentHeroObjectId()
	if _configTask.pos > 0 then
		local _objList = _unit:GetTypeObjectList(BattleObjectType.LeaderHero)
		local _cnt = 0
		for i = 1, #_objList do
			local _obj = _objList[i]
			if _objId ~= _obj:GetObjectId() then
				---@type BattleObjCom_Property
				local _propCom = _obj:GetComponent(BattleObjectComponentType.Property)
				if _propCom and _propCom:GetHp() > 0 then
					_cnt = _cnt + 1
					if _cnt == _configTask.pos then
						_objId = _obj:GetObjectId()
						break
					end
				end
			end
		end
	end
	
	self.__callRet = BEHAVIOR_CHECK.LevelCheckUnitSkillState(self.battleId, _objId, _configTask.selectSkillType, _configTask.skillId, _configTask.state)
end

function LuaBehav_RuntimeTask_LevelCheckPlayerSkillState:OnUpdate(_deltaTime)
	self:__Check(self.configTask)
	if self.__callRet then
		self:__SetTaskState(LuaBehav_Define_TaskState.Success)
		return LuaBehav_Define_TaskState.Success
	end
	self:__SetTaskState(LuaBehav_Define_TaskState.Failure)
	return LuaBehav_Define_TaskState.Failure
end

return LuaBehav_RuntimeTask_LevelCheckPlayerSkillState