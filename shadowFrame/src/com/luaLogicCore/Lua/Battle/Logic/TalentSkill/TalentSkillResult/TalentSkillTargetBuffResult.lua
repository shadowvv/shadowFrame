---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/6/11 16:01

require "Lib/class"

---@class TalentSkillTargetBuffResult : TalentSkillResultBase
TalentSkillTargetBuffResult = class(TalentSkillResultBase, 'TalentSkillTargetBuffResult');

function TalentSkillTargetBuffResult:ctor(_battleId)
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
end

---触发被动技能
---@public
---@param _battleObjectBase BattleObjectBase
---@param _count number
---@param _talentSkillConfig TalentSkill
---@param _skillResult SkillResult
---@param _talentSkill BattlePlayerTalentSkill 被动技能
---@param _isReTrigger boolean 重新触发
function TalentSkillTargetBuffResult:Trigger(_battleObjectBase,_count,_talentSkillConfig,_skillResult,_talentSkill,_isReTrigger)
    local customParam = _talentSkill:GetTriggerParam(TalentSkillDamageTrigger:GetType()) or 0
    
    local battleRoom = _battleObjectBase:GetBattleRoom()
    ---@type BattleObjCom_Buff
    local buffCompTemp = _battleObjectBase:GetComponent(BattleObjectComponentType.Buff);
    local upPercent = {};
    upPercent[0] = buffCompTemp:GetTalentSkillUpPercent(_talentSkillConfig.sourceType);
    for objectId, count in pairs(_talentSkill.triggerTargetList) do
        ---@type BattleObjectBase
        local targetObject = battleRoom.battleObjectManager:GetObject(objectId);
        if targetObject then
            ---@type BattleObjCom_Buff
            local buffComp = targetObject:GetComponent(BattleObjectComponentType.Buff);
            if buffComp then
                if _skillResult.parm3 and _skillResult.parm3 ~= 0 and buffComp:CheckBuffExist(_skillResult.parm3) == false then
                    return;
                end
                if _skillResult.multTrigger == 0 and buffComp:CheckBuffExist(_skillResult.parm1) then
                    return;
                end
                local _generateStackInfo = {originalHurt = customParam, elementBallCount = 0, eleBallSpreadHurtFix = 1 }
                local _buffCastTemplate = BattleBuffService:GenerateCastBuffTemplate(_skillResult.parm1,_battleObjectBase,nil,customParam,upPercent)
                _buffCastTemplate.generateStackInfo = _generateStackInfo
                for i = 1, count do
                    buffComp:AddBattleBuff(_buffCastTemplate);
                end
                _talentSkill:AddTriggeredObject(objectId,count);
            end
        end
    end
end

---释放被动技能
---@public
---@param _skillResult SkillResult
---@param _targetObjectId number 伤害目标objectId
---@param _count number 触发次数
---@param _talentSkill BattlePlayerTalentSkill
function TalentSkillTargetBuffResult:Release(_skillResult, _targetObjectId,_count,_talentSkill)
    ---@type BattleObjectBase
    local targetObject = self.battleRoom.battleObjectManager:GetObject(_targetObjectId);
    if targetObject then
        ---@type BattleObjCom_Buff
        local buffComp = targetObject:GetComponent(BattleObjectComponentType.Buff);
        if buffComp then
            buffComp:RemoveBuffStackNum(_skillResult.parm1,_count);
        end
    end
end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillTargetBuffResult:GetType()
    return 3;
end

return TalentSkillTargetBuffResult;