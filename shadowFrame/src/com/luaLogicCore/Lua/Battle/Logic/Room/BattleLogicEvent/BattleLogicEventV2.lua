---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/6/8 17:03

require "Lib/class"

---@type number[]
BATTLE_LOGIC_EVENT_ENUM = {
    --一般事件 eventParam = 事件id
    COMMON_EVENT = 1;
    --按钮事件 eventParam = 按键_按键方式
    KEY_EVENT = 2;
    --动画事件 eventParam = 动画事件id
    ANIMATION_EVENT = 3;
    --怪物出生状态结束 eventParam = 怪物netId
    MONSTER_SPAWN_EVENT = 4;
    --怪物死亡状态结束 eventParam = 怪物netId
    MONSTER_DEAD_EVENT = 5;
    --副本倒计时结束
    COUNT_DOWN_TIME_OUT = 6;
    --关卡单位死亡 compareParam = {levelUnitId} triggerParam={levelUnitId,levelUnitType,unitNetId}
    LEVEL_UNIT_DEAD = 7;
    --关卡单位创建 eventParam = 关卡单位id
    LEVEL_UNIT_CREATE = 8;
    --战斗单位到达目标点 eventParam = 战斗单位netId
    UNIT_REACH_POINT = 10;
    --开始使用技能 eventParam = skillId eventExtParam={[1]=battleObjectId}
    USE_SKILL_START = 11;
    --使用技能结束 eventParam = skillId eventExtParam = {[1]=battleObjectId,[2] = isBreak是否为打断退出}
    USE_SKILL_END = 12;
    --战斗单位到达最后一个目标点 eventParam = 战斗单位netId
    UNIT_REACH_LAST_POINT = 13,
    --受伤 eventExtParam = {[1] = oldHp, [2] = newHp, [3] = 攻击者netId, [4] = 伤害的元素类型}
    BE_DAMAGED = 14;
    --所有关键单位死亡
    ALL_KEY_UNIT_DEAD = 15;
    --守护目标死亡 eventParam = 守护目标的LevelUnit id
    PROTECT_TARGET_UNIT_DEAD = 16;
    --某类别的所有单位死亡 eventParam = 关卡单位类型LevelUnitTypeEnum
    ALL_TYPE_UNIT_DEAD = 17;
    --所有守护目标死亡
    ALL_PROTECT_TARGET_UNIT_DEAD = 18;
    --关键单位死亡 eventParam = 关键目标的LevelUnit id
    KEY_UNIT_DEAD = 19;
    --BOSS目标死亡 eventParam = 守护目标的LevelUnit id
    BOSS_UNIT_DEAD = 20;
    --所有BOSS目标死亡
    ALL_BOSS_UNIT_DEAD = 21;
    --战斗结束 eventParam = BattleResult number
    BATTLE_OVER = 22;
    --战斗开始
    BATTLE_RUN_START = 23;
    --元素反应触发 compareParam = elementReactId triggerParam = {sourceNetId,sourceObjectId,targetUnit}
    ELEMENT_REACT = 24;
    --切换角色 eventParam = newObjId eventExtParam = {[1] = oldObjId, [2] = newObjId}
    CHANGE_LEADER = 25;
    --object死亡  eventParam = objId
    OBJECT_DEAD = 26;
    --战斗单位创建  eventParam = netId
    BATTLE_UNIT_CREATE = 27;
    --战斗单位死亡  eventParam = netId
    BATTLE_UNIT_DEAD = 28;
    --BOSS动画
    BOSS_ANIMATION = 29;
    --元素附着 compareParam = elementId triggerParam = {sourceNetId,sourceObjectId,targetUnit,elementValue}
    ELEMENT_ATTACH = 30;
    --元素移除 compareParam = elementId triggerParam = {targetUnit}
    ELEMENT_REMOVE = 31;
    --武器能量消耗
    WEAPON_ENERGY_COST = 32;
    --触发关卡条件
    TRIGGER_LEVEL_CONDITION = 33;
    --关卡通用tag变化 compareParam = tag
    LEVEL_TAG_VALUE_CHANGE = 34;
    --单位进入单位 triggerParam = {levelUnitId,enterLevelUnitId}
    LEVEL_UNIT_ENTER_LEVEL_UNIT = 35;
    --object血量变化 compareParam = {netId, objectId} triggerParam = {oldHp, newHp}
    BATTLE_OBJECT_HP_CHANGE = 36;
    --buff结束
    BUFF_OVER = 37;
    --消弹
    DESTROY_BULLET = 38;
    --采集成功 
    BATTLE_COLLECT_SUCCESS = 39;
    --UnitTag改变
    UNIT_TAG_VALUE_CHANGE = 40;
    --切换状态
    CHANGE_STATE = 41;
    --技能添加BUFF
    SKILL_ADD_BUFF = 42;
    --装弹结束事件
    RELOAD_END_EVENT = 43;
    --改变目标勇士状态事件
    CHANGE_WARRIOR_STATUS = 44;
    --击中目标
    HIT_TARGET = 45;
    --弱点击破
    WEAK_POINT_BREAK = 46;
    --治疗目标
    HEAL_TARGET = 47;
    --元素效果触发 compareParam = elementId triggerParam = {sourceNetId,sourceObjectId,targetUnit}
    ELEMENT_EFFECT = 48;
    --元素附着 compareParam = elementId triggerParam = {sourceNetId,sourceObjectId,targetUnit,elementValue}
    ELEMENT_ADD = 49;
    --属性改变 compareParam = elementId triggerParam = {sourceNetId,sourceObjectId,targetUnit,elementValue}
    PROP_CHANGE = 50;
    --添加buff(事件方是受击者)
    BUFF_ADD = 51;
    --收集金币
    COLLECT_COIN = 52;
    --闪电链
    ELEMENT_LIGHTNING_BALL = 53;
    --修改元素效果时间
    CHANGE_ELEMENT_EFFECT_TIME = 54;
    --添加buff(事件方是施法者)
    CASTER_BUFF_ADD = 55;
    --buff层数改变(事件方是施法者)
    CASTER_BUFF_STACK_CHANGE = 56;
    --单位碰撞
    UNIT_COLLIDE = 57;
}

---@class BattleLogicEventV2 : table
---@field eventType number 事件类型
---@field battleId number 战斗id
---@field eventCompareParam table 事件参数
---@field eventTriggerParam table 事件透传参数
---@field netId number 事件产出单位Id
---@field objectId number 事件产出物体Id
BattleLogicEventV2 = class(nil, 'BattleLogicEventV2');

---@param _eventType number 事件类型
---@param _battleId number 战斗id
---@param _eventCompareParam table 事件参数
---@param _eventTriggerParam table 事件透传参数
---@param _netId number 事件产出单位Id
---@param _objectId number 事件产出物体Id
function BattleLogicEventV2:ctor(_eventType, _eventCompareParam, _eventTriggerParam, _netId, _objectId, _battleId)

    self.eventType = _eventType;
    self.eventCompareParam = _eventCompareParam;
    self.eventTriggerParam = _eventTriggerParam;
    self.netId = _netId;
    self.objectId = _objectId;
    self.survival = 0;
    self.battleId = _battleId

end

---检测事件触发，默认没有比较参数
---@public
---@param _eventCompareParam table 比较参数
function BattleLogicEventV2:CheckEventTrigger(_eventCompareParam)
    return true;
end

---事件回调，默认为空
---@public
function BattleLogicEventV2:FireEvent()
    if self.survival == 0 then

    end
end

---@public
---检测互斥事件
---@param _event BattleLogicEventV2 新事件
---@return boolean 是否互斥
function BattleLogicEventV2:CheckMutexEvent(_event)
    return false;
end

---检测移除事件，默认事件会在trigger之后的下一帧被移除
---@public
function BattleLogicEventV2:CheckRemoveEvent()
    self.survival = self.survival + 1;
    if self.survival > 1 then
        return true;
    end
    return false;
end

---生成比较参数
---@public
function BattleLogicEventV2:GenerateCompareParam(_param)
    local compareParam = {};
    return compareParam;
end

return BattleLogicEventV2;