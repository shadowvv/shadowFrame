---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/06/06 16:50
--- Describe: 关卡触发一般UI操作
--- 

---@class LuaBehav_RuntimeTask_LevelTrigNormalUIOperate : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelTrigNormalUIOperate = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelTrigNormalUIOperate")

function LuaBehav_RuntimeTask_LevelTrigNormalUIOperate:OnStart()
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.LevelTrigNormalUIOperate(self.battleId, self.configTask.uiId, self.configTask.textId, self.configTask.operType, self.configTask.duration, self.variables.placeholder and self.variables.placeholder:GetValue())
end

return LuaBehav_RuntimeTask_LevelTrigNormalUIOperate