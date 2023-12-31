---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/2/23 11:37

require "Lib/class"
require "Battle/Logic/Skill/SkillBaseNode"

---@class SkillBuffNode : SkillBaseNode 技能buff节点
---@field nodeId number 节点id
---@field nextNodes SkillNodeExitData[] 子节点
SkillBuffNode = class(SkillBaseNode, 'SkillBuffNode');

---@param _nodeId number 节点id
---@param _once boolean 只执行一次
---@param _nextNodes SkillNodeExitData[] 子节点
---@param _specialExit SkillNodeExitData[] 特殊出口
function SkillBuffNode:ctor(_nodeId,_once, _nextNodes,_specialExit,_addBuffId,_removeBuffId,_selfAll,_playerBuff)
    self.nodeId = _nodeId;
    self.once = _once;
    self.nextNodes = _nextNodes;
    self.specialExit = _specialExit;
    self.addBuffId = _addBuffId;
    self.removeBuffId = _removeBuffId;
    self.selfAll = _selfAll;
    self.playerBuff = _playerBuff;
end

---执行技能节点
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _skillModel SkillModel 技能配置
---@param _currentSkillState SkillActionState 当前技能状态
---@return boolean,table 是否执行结束,执行行为输出数据
function SkillBuffNode:DoAction(_actionStateManager, _dt, _netId,_skillModel,_currentSkillState)

    --LogTools.LogByLevel(LogLevel.log, "skillAddBuff", _skillModel.skillId)
    ---触发技能加BUFF事件
    _actionStateManager.battleRoom.battleLogicEventService:OnTriggerSkillAddBuffEvent(_skillModel.skillId, self.addBuffId, self.removeBuffId)
    
    local unit = _actionStateManager:GetUnit();
    if self.playerBuff then
        ---@type BattleUnitCom_Buff
        local buffComp = unit:GetComponent(BattleUnitComponentType.Buff);
        if not buffComp then
            return true,nil;
        end
        for i, v in pairs(self.addBuffId) do
            ---@type BuffGroup
            local addBuffGroup = _actionStateManager.battleRoom.inputDataSource:GetDict("BuffGroup",tonumber(v))
            if addBuffGroup == nil then
                return true,nil;
            end
            local battleBuffCastTemplate = BattleBuffService:GenerateUnitCastBuffTemplate(tonumber(v),unit,unit:GetCurrentHeroObjectId());
            buffComp:AddBattleBuff(battleBuffCastTemplate);
        end

        for i, v in pairs(self.removeBuffId) do
            buffComp:RemoveBuffByGroupId(tonumber(v));
        end
        return true,nil;
    end

    for i, battleObject in pairs(unit:GetAllObjectDic()) do
        if self.selfAll or battleObject:GetObjectId() == unit:GetCurrentHeroObjectId() then
            ---@type BattleObjCom_Buff
            local buffCompo = battleObject:GetComponent(BattleObjectComponentType.Buff);
            if buffCompo == nil then
                return true,nil;
            end
            for i, v in pairs(self.addBuffId) do
                ---@type BuffGroup
                local addBuffGroup = _actionStateManager.battleRoom.inputDataSource:GetDict("BuffGroup",tonumber(v))
                if addBuffGroup == nil then
                    return true,nil;
                end
                local battleBuffCastTemplate = BattleBuffService:GenerateCastBuffTemplate(tonumber(v),_actionStateManager:GetUnit():GetCurrentHeroObject(),_skillModel.skillId,nil)
                buffCompo:AddBattleBuff(battleBuffCastTemplate);
            end

            for i, v in pairs(self.removeBuffId) do
                buffCompo:RemoveBuffByGroupId(tonumber(v));
            end
        end
    end

    return true,nil;
end

---返回节点类型
---@public
---@return number 节点类型
function SkillBuffNode:GetType()
    return 14;
end

return SkillBuffNode;