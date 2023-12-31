---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/06/27 13:49
--- Describe: 单位关闭护盾
---

---@class LuaBehav_RuntimeTask_UnitCloseShield : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_UnitCloseShield = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_UnitCloseShield")

function LuaBehav_RuntimeTask_UnitCloseShield:OnStart()
	--LogTools.LogByLevel(LogLevel.logErr, "LuaBehav_RuntimeTask_UnitCloseShield:OnStart", "self.netId", self.netId)
	self:__OnStart()
	
	if not self.__subordinationCom then
		local _unit = self.battleRoom.battleUnitManager:GetUnit(self.netId, true)
		---@type BattleUnitCom_Subordination
		local _subordinationCom = _unit:GetComponent(BattleUnitComponentType.Subordination)
		if not _subordinationCom then
			self.__callRet = true
			return
		end
		---@private
		---@type BattleUnitCom_Subordination
		self.__subordinationCom = _subordinationCom
	end
	
	--LogTools.LogByLevel(LogLevel.logErr, "LuaBehav_RuntimeTask_UnitCloseShield:OnStart", "self.configTask", dumpTableEx(self.configTask))
	local _shieldId = self.configTask.shieldId
	if -1 == _shieldId then
		local _objList = self.__subordinationCom:GetManagedObjListByObjType(BattleObjectType.Shield)
		for _, _obj in pairs(_objList) do
			local _monsDeadParam = LuaBehav_MonsDeadParam.New(_obj:GetParentUnit():GetNetId(), self.configTask)
			--LogTools.LogByLevel(LogLevel.logErr, "LuaBehav_RuntimeTask_UnitCloseShield 1", "_monsDeadParam", dumpTableEx(_monsDeadParam))
			BEHAVIOR_ACTION.MonsDeath(self.battleId, _monsDeadParam)
		end
	else
		local _objIdList = self.__subordinationCom:GetManagedObjList(_shieldId, BattleObjectType.Shield)
		for _, _objId in pairs(_objIdList) do
			local _obj = self.battleRoom.battleObjectManager:GetObject(_objId)
			local _monsDeadParam = LuaBehav_MonsDeadParam.New(_obj:GetParentUnit():GetNetId(), self.configTask)
			--LogTools.LogByLevel(LogLevel.logErr, "LuaBehav_RuntimeTask_UnitCloseShield 2", "_monsDeadParam", dumpTableEx(_monsDeadParam))
			BEHAVIOR_ACTION.MonsDeath(self.battleId, _monsDeadParam)
		end
	end
	
	
	self.__callRet = true
end

return LuaBehav_RuntimeTask_UnitCloseShield