---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/07/28 15:43
--- Describe:
---

---@class RogueUnitSkillTrigger : table
RogueUnitSkillTrigger = class(nil, "RogueUnitSkillTrigger")
function RogueUnitSkillTrigger:ctor(_data) end

---@public
---@return BattleRoom
function RogueUnitSkillTrigger:GetBattleRoom()
	return self.__battleRoom
end

---@public
---@return number
function RogueUnitSkillTrigger:GetBattleId()
	return self.__battleId
end
------------------------------------------------------------------------------------------------------------------------

---@public
---@param _action RogueUnitSkillActionBase
function RogueUnitSkillTrigger:Init(_action)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    RogueUnitSkillTrigger:Init", "trigger初始化开始")
	end
	
	---@private
	---@type RogueUnitSkillActionBase
	self.__action = _action
	---@private
	---@type BattleRoom
	self.__battleRoom = _action:GetBattleRoom()
	---@private
	---@type number
	self.__battleId = _action:GetBattleId()

	local _RogueUnitSkillActionXls = _action:GetXlsData()
	---@private
	self.__maxTrigCnt = _RogueUnitSkillActionXls.maxTrig
	---@private
	self.__curTrigCnt = 0
	---@private
	self.__trigCd = _RogueUnitSkillActionXls.trigCD * 1000
	---@private
	self.__firstTrigDelay = _RogueUnitSkillActionXls.firstTrigDelay * 1000
	---@private
	self.__lastTrigTime = TimeUtils.battleNow(self:GetBattleId())
	
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    RogueUnitSkillTrigger:Init", "trigger初始化结束", "最大触发次数", self.__maxTrigCnt, "是否限制触发次数", self.__maxTrigCnt > 0, "触发间隔/毫秒", self.__trigCd, "首次触发延迟/毫秒", self.__firstTrigDelay)
	end
end

---@protected
function RogueUnitSkillTrigger:__OnRemove()
	
end

---@public
function RogueUnitSkillTrigger:OnRemove()
	self:__OnRemove()
end

---@public
---@param _cdInSeconds number cd/秒
function RogueUnitSkillTrigger:ChangeTrigCd(_cdInSeconds)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    RogueUnitSkillTrigger:ChangeTrigCd start", "self.__trigCd", self.__trigCd, "_cdInSeconds", _cdInSeconds)
	end
	self.__trigCd = _cdInSeconds * 1000
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    RogueUnitSkillTrigger:ChangeTrigCd End", "self.__trigCd", self.__trigCd)
	end
end

---@public
---@param _valueInSeconds number cd/秒
function RogueUnitSkillTrigger:AddTrigCd(_valueInSeconds)
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    RogueUnitSkillTrigger:AddTrigCd start", "self.__trigCd", self.__trigCd, "_valueInSeconds", _valueInSeconds)
	end
	self.__trigCd = self.__trigCd + _valueInSeconds * 1000
	if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
		LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    RogueUnitSkillTrigger:AddTrigCd End", "self.__trigCd", self.__trigCd)
	end
end

---@public
---@param _max number
function RogueUnitSkillTrigger:ChangeTrigMax(_max)
	self.__maxTrigCnt = _max
end

---@public
---@return boolean 是否触发
function RogueUnitSkillTrigger:CheckTrig()

	local _curTime = TimeUtils.battleNow(self:GetBattleId())
	local _checkCd = self.__curTrigCnt == 0 and self.__firstTrigDelay or self.__trigCd

	---正常CD
	if _curTime - self.__lastTrigTime >= _checkCd then
		self.__lastTrigTime = _curTime
		self.__curTrigCnt = self.__curTrigCnt + 1 
		if CheckLogLevel(LogLevel.log) and LogTools.RogueUnitSkillLog then
			LogTools.LogByLevel(LogLevel.log, "肉鸽主公技", "    RogueUnitSkillTrigger:CheckTrig", "成功触发", "ActionId", self:GetAction():GetId(), "当前触发次数", self.__curTrigCnt, "最大触发次数", self.__maxTrigCnt)
		end
		return true
	end
	
	return false
end

---@public
---@return boolean 是否已经达到最大触发次数
function RogueUnitSkillTrigger:CheckTrigMax()
	return self.__maxTrigCnt > 0 and self.__curTrigCnt >= self.__maxTrigCnt
end

---@public
---@return RogueUnitSkillActionBase
function RogueUnitSkillTrigger:GetAction()
	return self.__action
end

return RogueUnitSkillTrigger