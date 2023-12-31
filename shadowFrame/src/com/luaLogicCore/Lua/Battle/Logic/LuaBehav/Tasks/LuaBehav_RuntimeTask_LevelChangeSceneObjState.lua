---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/06/10 18:33
--- Describe: 关卡切换场景物件状态
---

---@class LuaBehav_RuntimeTask_LevelChangeSceneObjState : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelChangeSceneObjState = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelChangeSceneObjState")

---@private
function LuaBehav_RuntimeTask_LevelChangeSceneObjState:__InitConfigTaskVariables(_variableDic, _treeVariableDic)
	---@type LuaBehav_RuntimeVariableBase[]
	self.variables = {}
	if not _variableDic then
		self.variables.levelUnitId = LuaBehav_RuntimeVariableBase.New()
		self.variables.levelUnitId:Init({variableType = LuaBehav_Define_TaskVariableType.SampleVariable, variableValue = self.configTask.levelUnitId}, _treeVariableDic)
		self.variables.stateId = LuaBehav_RuntimeVariableBase.New()
		self.variables.stateId:Init({variableType = LuaBehav_Define_TaskVariableType.SampleVariable, variableValue = self.configTask.stateId}, _treeVariableDic)
	else
		for _key, _configVariable in pairs(_variableDic) do
			self.variables[_key] = LuaBehav_RuntimeVariableBase.New()
			self.variables[_key]:Init(_configVariable, _treeVariableDic)
		end
	end
end

function LuaBehav_RuntimeTask_LevelChangeSceneObjState:OnStart()
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "LuaBehav_RuntimeTask_LevelChangeSceneObjState", "OnStart")
	self:__OnStart()
	self.__callRet = BEHAVIOR_ACTION.LevelChangeSceneObjState(self.battleId, self.variables.levelUnitId:GetValue(), self.variables.stateId:GetValue())
end

return LuaBehav_RuntimeTask_LevelChangeSceneObjState