---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/3/8 15:34

-- 被主动技能命中【怪物使用】

require "Lib/class"

---@class FallCondition_HitByActiveSkill : FallConditionBase
FallCondition_HitByActiveSkill = class(FallConditionBase, 'FallCondition_HitByActiveSkill');

function FallCondition_HitByActiveSkill:ctor()
end

-- 事件回调
---@public
---@param _unit BattleUnitBase
---@param _battleLogicEvent BattleLogicEventV2
function FallCondition_HitByActiveSkill:OnTriggerEvent(_unit, _battleLogicEvent)
end

return FallCondition_HitByActiveSkill;