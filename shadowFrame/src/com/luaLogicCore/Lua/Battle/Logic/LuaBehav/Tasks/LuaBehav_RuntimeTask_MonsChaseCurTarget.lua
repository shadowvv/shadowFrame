---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/15 15:03
--- Describe: 怪物追逐当前目标
---

---@class LuaBehav_RuntimeTask_MonsChaseCurTarget : table
LuaBehav_RuntimeTask_MonsChaseCurTarget = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_MonsChaseCurTarget")

function LuaBehav_RuntimeTask_MonsChaseCurTarget:OnStart()
	self:__OnStart()
	self.__callRet = LuaBehav_Interfaces.MonsChaseCurTarget(self.netId)
end


return LuaBehav_RuntimeTask_MonsChaseCurTarget