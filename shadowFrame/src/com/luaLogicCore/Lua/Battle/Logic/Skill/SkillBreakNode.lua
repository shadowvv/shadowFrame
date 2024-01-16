---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/4/14 12:04

require "Lib/class"
require "Battle/Logic/Skill/SkillBaseNode"

---@class SkillBreakNode : SkillBaseNode
---@field nodeId number 节点id
---@field nextNodes SkillNodeExitData[] 子节点
---@field isForceBreak boolean 是否为被动打断
SkillBreakNode = class(SkillBaseNode, 'SkillBreakNode');

---@param _nodeId number 节点id
---@param _once boolean 只执行一次
---@param _nextNodes SkillNodeExitData[] 子节点
---@param _specialExit SkillNodeExitData[] 特殊出口
---@param _isForceBreak boolean 是否为被动打断
function SkillBreakNode:ctor(_nodeId,_once, _nextNodes,_specialExit,_isForceBreak)
    self.nodeId = _nodeId;
    self.once = _once;
    self.nextNodes = _nextNodes;
    self.specialExit = _specialExit;
    self.isForceBreak = _isForceBreak;
end

---执行技能节点
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _skillModel SkillModel 技能配置
---@param _currentSkillState SkillActionState 当前技能状态
---@return boolean,table 是否执行结束,执行行为输出数据
function SkillBreakNode:DoAction(_actionStateManager, _dt, _netId,_skillModel,_currentSkillState)
    local doCurrentNode = {};
    doCurrentNode.nodeId = self.nodeId;
    return true,doCurrentNode;
end

---返回节点类型
---@public
---@return number 节点类型
function SkillBreakNode:GetType()
    return 4;
end

return SkillBreakNode;