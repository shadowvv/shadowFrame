---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/08/02 11:36
--- Describe: 设置关卡波次
---

---@class LuaBehav_RuntimeTask_LevelSetWaveValue : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelSetWaveValue = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelSetWaveValue")

function LuaBehav_RuntimeTask_LevelSetWaveValue:OnStart()
	----LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_LevelSetWaveValue", "OnStart")
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.LevelSetWaveValue(self.battleId, self.configTask.wave)
end

return LuaBehav_RuntimeTask_LevelSetWaveValue