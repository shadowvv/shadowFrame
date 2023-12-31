---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/08/04 19:26
--- Describe:
---

---@class LuaBehav_RuntimeTask_UnitCallSummoned : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_UnitCallSummoned = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_UnitCallSummoned")

function LuaBehav_RuntimeTask_UnitCallSummoned:OnStart()
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_UnitCallSummoned", "OnStart", "self.configTask", dumpTableEx(self.configTask))
	self:__OnStart()
	
	local _unit = self.__unit
	if not _unit then
		self.__unit = self.battleRoom.battleUnitManager:GetUnit(self.netId, true)
		_unit = self.__unit
	end
	if not _unit then return end
	
	self.__callRet = BEHAVIOR_ACTION.UnitCallSummoned(self.battleId, self.configTask.dicId, self.netId, _unit:GetCurrentHeroObjectId(), nil)
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_UnitCallSummoned end", "self.__callRet", self.__callRet, "self.netId", self.netId)
end

return LuaBehav_RuntimeTask_UnitCallSummoned