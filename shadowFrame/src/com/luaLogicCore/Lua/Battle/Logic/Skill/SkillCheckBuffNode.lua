---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/10/13 16:49

require "Lib/class"
require "Battle/Logic/Skill/SkillBaseNode"

---@class SkillCheckBuffNode : SkillBaseNode
---@field nodeId number 节点id
---@field nextNodes SkillNodeExitData[] 子节点
SkillCheckBuffNode = class(SkillBaseNode, 'SkillCheckBuffNode');

---@param _nodeId number 节点id
---@param _once boolean 只执行一次
---@param _nextNodes SkillNodeExitData[] 子节点
---@param _specialExit SkillNodeExitData[] 特殊出口
function SkillCheckBuffNode:ctor(_nodeId, _once, _nextNodes, _specialExit,_buffId,_matchNodeId,_otherNodeId)
    self.nodeId = _nodeId;
    self.once = _once;
    self.nextNodes = _nextNodes;
    self.specialExit = _specialExit;
    self.buffId = _buffId;
    self.matchNodeId = _matchNodeId;
    self.otherNodeId = _otherNodeId;
end

---执行技能节点
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _skillModel SkillModel 技能配置
---@return boolean,table 是否执行结束,执行行为输出数据
function SkillCheckBuffNode:DoAction(_actionStateManager, _dt, _netId, _skillModel)
    self.currentObject = _actionStateManager:GetUnit():GetCurrentHeroObject();
    return true, nil;
end

---检测进入的子节点
---@public
---@param _runTime number 节点持续时间
---@param _netId number 战斗单位id
---@return number[] 可进入的子节点Id
function SkillCheckBuffNode:CheckNextNodes(_runTime,_netId)
    local nextNode = {};
    ---@type BattleObjCom_Buff
    local componentBuff = self.currentObject:GetComponent(BattleObjectComponentType.Buff);
    ---@type BattleObjCom_PlayMode
    local playModeComp = self.currentObject:GetComponent(BattleObjectComponentType.PlayMode);
    if componentBuff:CheckBuffExist(self.buffId) then
        table.insert(nextNode,self.matchNodeId)
    else
        table.insert(nextNode,self.otherNodeId)
    end
    return nextNode;
end

---返回节点类型
---@public
---@return number 节点类型
function SkillCheckBuffNode:GetType()
    return 48;
end

return SkillCheckBuffNode;