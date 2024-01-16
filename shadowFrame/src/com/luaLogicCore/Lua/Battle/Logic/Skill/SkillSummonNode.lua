---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/2/22 11:54

require "Lib/class"
require "Battle/Logic/Skill/SkillBaseNode"

---@class SkillSummonNode : SkillBaseNode 技能召唤节点
---@field nodeId number 节点id
---@field nextNodes SkillNodeExitData[] 子节点
SkillSummonNode = class(SkillBaseNode, 'SkillSummonNode');

---@param _nodeId number 节点id
---@param _once boolean 只执行一次
---@param _nextNodes SkillNodeExitData[] 子节点
---@param _specialExit SkillNodeExitData[] 特殊出口
function SkillSummonNode:ctor(_nodeId,_once, _nextNodes,_specialExit,_summonType,_summonId)
    self.nodeId = _nodeId;
    self.once = _once;
    self.nextNodes = _nextNodes;
    self.specialExit = _specialExit;
    self.summonType = _summonType;
    self.summonId = _summonId;
end

---执行技能节点
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _skillModel SkillModel 技能配置
---@param _currentSkillState SkillActionState 当前技能状态
---@return boolean,table 是否执行结束,执行行为输出数据
function SkillSummonNode:DoAction(_actionStateManager, _dt, _netId,_skillModel,_currentSkillState)
    local battleRoom = GetBattleRoom(_actionStateManager.battleId)
    local _unit = battleRoom.battleUnitManager:GetUnit(_netId)
    if not _unit then return end
    if LogTools.SummondLog and CheckLogLevel(LogLevel.log) then
        LogTools.LogByLevel(LogLevel.log, "CheckSummonedMons", "SkillSummonNode:DoAction", "_netId", _netId, "self.summonId", self.summonId)
    end
    battleRoom.behaviorProcessor:CreateSummonedMonsUnit(self.summonId, _netId, _unit:GetCurrentHeroObjectId(), _skillModel.skillId)
    return true,nil;
end

---返回节点类型
---@public
---@return number 节点类型
function SkillSummonNode:GetType()
    return 23;
end

return SkillSummonNode;