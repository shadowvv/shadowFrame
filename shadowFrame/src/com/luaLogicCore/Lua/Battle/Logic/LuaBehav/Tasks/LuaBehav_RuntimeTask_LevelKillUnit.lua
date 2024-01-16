---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/03/21 16:10
--- Describe: 关卡强制杀死单位
---

---@class LuaBehav_LevelKillUnitParam : table
LuaBehav_LevelKillUnitParam = class(nil, "LuaBehav_LevelKillUnitParam")
function LuaBehav_LevelKillUnitParam:ctor(_aiOpereateParam)
	self.targetType = _aiOpereateParam.targetType
	self.idList = _aiOpereateParam.idList
	self.deadType = _aiOpereateParam.deadType
	self.forceKiller = _aiOpereateParam.forceKiller
end

---@class LuaBehav_RuntimeTask_LevelKillUnit : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelKillUnit = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelKillUnit")

function LuaBehav_RuntimeTask_LevelKillUnit:OnStart()
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.LevelKillUnit(self.battleId, LuaBehav_LevelKillUnitParam.New(self.configTask))
end

return LuaBehav_RuntimeTask_LevelKillUnit