---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/7/22 17:44

require "Lib/class"
require "Battle/Logic/Skill/SkillBaseNode"

---@class CheckTransferAreaNode : SkillBaseNode
---@field nodeId number 节点id
---@field nextNodes SkillNodeExitData[] 子节点
CheckTransferAreaNode = class(SkillBaseNode, 'CheckTransferAreaNode');

---@param _nodeId number 节点id
---@param _once boolean 只执行一次
---@param _nextNodes SkillNodeExitData[] 子节点
---@param _specialExit SkillNodeExitData[] 特殊出口
function CheckTransferAreaNode:ctor(_nodeId,_once, _nextNodes,_specialExit,_transferId)
    self.nodeId = _nodeId;
    self.once = _once;
    self.nextNodes = _nextNodes;
    self.specialExit = _specialExit;
    self.transferId = _transferId;
end

---执行技能节点
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _skillModel SkillModel 技能配置
---@return boolean,table 是否执行结束,执行行为输出数据
function CheckTransferAreaNode:DoAction(_actionStateManager, _dt, _netId, _skillModel)
    local battleRoom = GetBattleRoom(_actionStateManager.battleId)
    ---@type BattleUnit_AreaTrigger
    local areaUnit = battleRoom.battleUnitManager:GetAreaByFromNetIdAndDicId(_netId,self.transferId);
    if not areaUnit then
        _actionStateManager:ExitSkill(false,true);
        return false,nil;
    end
    return true, nil;
end

---返回节点类型
---@public
---@return number 节点类型
function CheckTransferAreaNode:GetType()
    return 38;
end

return CheckTransferAreaNode;