---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/07/30 18:39
--- Describe:
---

---@class LuaBehav_RuntimeTask_LevelRemoveTargetPoint : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelRemoveTargetPoint = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelRemoveTargetPoint")

function LuaBehav_RuntimeTask_LevelRemoveTargetPoint:OnStart()
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.LevelRemoveTargetPoint(self.battleId, self.configTask.levelUnitId, self.configTask.forceKiller)
end

return LuaBehav_RuntimeTask_LevelRemoveTargetPoint