---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/15 15:50
--- Describe: 怪物指定转向
---

---@class LuaBehav_RuntimeTask_MonsRotateTowards : table
LuaBehav_RuntimeTask_MonsRotateTowards = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_MonsRotateTowards")

function LuaBehav_RuntimeTask_MonsRotateTowards:OnStart()
	self:__OnStart()
	local _posShift = self.configTask.posShift
	local _vector = Vector3.New(_posShift.x, _posShift.y, _posShift.z)
	self.__callRet = LuaBehav_Interfaces.MonsRotateTowards(self.netId, self.configTask.spaceType, _vector)
end

return LuaBehav_RuntimeTask_MonsRotateTowards