---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/07 11:51
--- Describe: 关卡投放玩家英雄
---

---@class LuaBehav_RuntimeTask_LevelDropPlayerHero : LuaBehav_RuntimeTask
LuaBehav_RuntimeTask_LevelDropPlayerHero = class(LuaBehav_RuntimeTask, "LuaBehav_RuntimeTask_LevelDropPlayerHero")

-- 
function LuaBehav_RuntimeTask_LevelDropPlayerHero:OnStart()
	self:__OnStart()
	local _id = self.configTask.id
	if _id == -1 then _id = nil end
	self.__callRet = BEHAVIOR_ACTION.LevelDropAllPlayerHeroes(self.battleId, _id)
end

return LuaBehav_RuntimeTask_LevelDropPlayerHero