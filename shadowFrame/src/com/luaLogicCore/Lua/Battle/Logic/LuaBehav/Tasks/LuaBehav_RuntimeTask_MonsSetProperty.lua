---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/03/21 16:54
--- Describe: 设置属性
---

---@class LuaBehav_MonsSetPropertyParam : table
LuaBehav_MonsSetPropertyParam = class(nil, "LuaBehav_MonsSetPropertyParam")
function LuaBehav_MonsSetPropertyParam:ctor(_netId, _setPropTask)
	self.netId = _netId
	self.propId = _setPropTask.propKey
	self.valueDescType = _setPropTask.valueDescType
	self.value = _setPropTask.value
end

---@class LuaBehav_RuntimeTask_MonsSetProperty : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_MonsSetProperty = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_MonsSetProperty")

function LuaBehav_RuntimeTask_MonsSetProperty:OnStart()
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.SetMonsProp(self.battleId, LuaBehav_MonsSetPropertyParam.New(self.netId, self.configTask))
end

return LuaBehav_RuntimeTask_MonsSetProperty