---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/06/11 10:49
--- Describe: 关卡删除场景物件
---

---@class LuaBehav_RuntimeTask_LevelRemoveSceneObj : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelRemoveSceneObj = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelRemoveSceneObj")

function LuaBehav_RuntimeTask_LevelRemoveSceneObj:OnStart()
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_LevelRemoveSceneObj", "OnStart")
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.LevelRemoveSceneObj(self.battleId, self.configTask.levelUnitId, self.configTask.forceKiller)
end

return LuaBehav_RuntimeTask_LevelRemoveSceneObj