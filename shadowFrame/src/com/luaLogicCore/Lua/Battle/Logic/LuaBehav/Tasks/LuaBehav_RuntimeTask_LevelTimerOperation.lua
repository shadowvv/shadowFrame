---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/07 11:40
--- Describe: 开始关卡计时器操作
---

---@class LuaBehav_RuntimeTask_LevelTimerOperation : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelTimerOperation = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelTimerOperation")

-- 
function LuaBehav_RuntimeTask_LevelTimerOperation:OnStart()
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.LevelTimerOperation(self.battleId, self.configTask.operationType)
end

return LuaBehav_RuntimeTask_LevelTimerOperation