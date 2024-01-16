---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/8/18 15:25

require "Lib/class"
require "Battle/Logic/Skill/SkillBaseNode"

---@class SkillResetAimHoldTimeNode : SkillBaseNode
---@field nodeId number 节点id
---@field nextNodes SkillNodeExitData[] 子节点
SkillResetAimHoldTimeNode = class(SkillBaseNode, 'SkillResetAimHoldTimeNode');

---@param _nodeId number 节点id
---@param _once boolean 只执行一次
---@param _nextNodes SkillNodeExitData[] 子节点
---@param _specialExit SkillNodeExitData[] 特殊出口
function SkillResetAimHoldTimeNode:ctor(_nodeId, _once, _nextNodes, _specialExit)
    self.nodeId = _nodeId;
    self.once = _once;
    self.nextNodes = _nextNodes;
    self.specialExit = _specialExit;
end

---执行技能节点
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _skillModel SkillModel 技能配置
---@return boolean,table 是否执行结束,执行行为输出数据
function SkillResetAimHoldTimeNode:DoAction(_actionStateManager, _dt, _netId, _skillModel)
    local currentObject = _actionStateManager:GetUnit():GetCurrentHeroObject();
    ---@type BattleObjCom_PlayMode
    local playModeComp = currentObject:GetComponent(BattleObjectComponentType.PlayMode);
    if playModeComp then
        playModeComp:ResetHoldTime();
    end
    return true, nil;
end

---返回节点类型
---@public
---@return number 节点类型
function SkillResetAimHoldTimeNode:GetType()
    return 41;
end

return SkillResetAimHoldTimeNode;