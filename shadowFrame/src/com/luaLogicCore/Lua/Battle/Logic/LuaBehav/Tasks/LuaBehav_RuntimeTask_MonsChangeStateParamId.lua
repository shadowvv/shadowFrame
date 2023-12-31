---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/07/15 17:02
--- Describe: 修改单位的stateParamId
---

---@class LuaBehav_MonsChangeStateParamIdParam : table
LuaBehav_MonsChangeStateParamIdParam = class(nil, "LuaBehav_MonsChangeStateParamIdParam")
function LuaBehav_MonsChangeStateParamIdParam:ctor(_netId, _stateParamId)
	self.netId = _netId
	self.stateParamId = _stateParamId
end

---@class LuaBehav_RuntimeTask_MonsChangeStateParamId : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_MonsChangeStateParamId = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_MonsChangeStateParamId")

function LuaBehav_RuntimeTask_MonsChangeStateParamId:OnStart()
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.MonsChangeStateParamId(self.battleId, LuaBehav_MonsChangeStateParamIdParam.New(self.netId, self.configTask.stateParamId))
end

return LuaBehav_RuntimeTask_MonsChangeStateParamId