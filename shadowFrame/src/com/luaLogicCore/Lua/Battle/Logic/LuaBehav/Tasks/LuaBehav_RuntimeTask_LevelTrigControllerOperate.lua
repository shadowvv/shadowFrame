---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/06/06 19:05
--- Describe: 关卡触发玩家控制器操作
---

---@class LuaBehav_RuntimeTask_LevelTrigControllerOperate : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelTrigControllerOperate = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelTrigControllerOperate")

function LuaBehav_RuntimeTask_LevelTrigControllerOperate:OnStart()
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.LevelTrigControllerOperate(self.battleId, self.configTask.controllerIdList, self.configTask.operType)
end

return LuaBehav_RuntimeTask_LevelTrigControllerOperate