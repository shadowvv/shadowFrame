---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/10/26 16:35
--- Describe: 单位更改分块状态
---

---@class LuaBehav_RuntimeTask_UnitChangeBlockState : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_UnitChangeBlockState = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_UnitChangeBlockState")

function LuaBehav_RuntimeTask_UnitChangeBlockState:OnStart()
	--LogTools.LogByLevel(LogLevel.log, "checkLevelOperateBlock", "LuaBehav_RuntimeTask_UnitChangeBlockState", "self.configTask", dumpTableEx(self.configTask))
	self:__OnStart()
	--self.__callRet = BEHAVIOR_ACTION.MonsChangeBlockState(self.battleId, self.netId, self.variables.levelUnitId:GetValue(), self.variables.stateId:GetValue(), 1)
	self.__callRet = BEHAVIOR_ACTION.MonsChangeBlockState(self.battleId, self.netId, self.variables.blockId:GetValue(), self.configTask.stateId, self.variables.weaknessId:GetValue())
end

return LuaBehav_RuntimeTask_UnitChangeBlockState