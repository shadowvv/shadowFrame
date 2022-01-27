---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/13 10:58
--- Describe: 关卡逻辑阶段基类
---

---@class BattleLevelStageBase : table
BattleLevelStageBase = class(nil, "BattleLevelStageBase")
function BattleLevelStageBase:ctor() end
------------------------------------------------------------------------------------------------------------------------
function BattleLevelStageBase:__Init(_battleStageManager)
	---@type BattleLevelStageManager
	self.battleStageManager = _battleStageManager
	
end

function BattleLevelStageBase:__OnUpdate(_deltaTime)
	
end

 
function BattleLevelStageBase:__OnEnter()
	
end
 
function BattleLevelStageBase:__OnPause()
	
end

function BattleLevelStageBase:__OnResume()
	
end

function BattleLevelStageBase:__OnStageEnd()
	self.battleStageManager:GoNextStage()
end

function BattleLevelStageBase:__OnExit()
	
end

function BattleLevelStageBase:__Clear()
	self.battleStageManager = nil
end
------------------------------------------------------------------------------------------------------------------------
function BattleLevelStageBase:Init(_battleStageManager)
	self:__Init(_battleStageManager)
end

function BattleLevelStageBase:OnUpdate(_deltaTime)
	self:__OnUpdate(_deltaTime)
end

function BattleLevelStageBase:OnEnter()
	self:__OnEnter()
end

function BattleLevelStageBase:OnPause()
	self:__OnPause()
end

function BattleLevelStageBase:OnResume()
	self:__OnResume()
end

function BattleLevelStageBase:OnStageEnd()
	self:__OnStageEnd()
end

function BattleLevelStageBase:OnExit()
	self:__OnExit()
end

function BattleLevelStageBase:Clear()
	self:__Clear()
end

return BattleLevelStageBase