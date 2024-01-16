---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/7/5 16:41

require "Lib/class"
require "Battle/Logic/TalentSkill/TalentSkillResult/TalentSkillResultBase"

---@class TalentSkillAreaTimeResult : TalentSkillResultBase
TalentSkillAreaTimeResult = class(TalentSkillResultBase, 'TalentSkillAreaTimeResult');

function TalentSkillAreaTimeResult:ctor(_battleId)
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
    self.max = 0;
end

---触发被动技能
---@public
---@param _battleObjectBase BattleObjectBase
---@param _count number
---@param _talentSkillConfig TalentSkill
---@param _skillResult SkillResult
---@param _talentSkill BattlePlayerTalentSkill 被动技能
---@param _isReTrigger boolean 重新触发
function TalentSkillAreaTimeResult:Trigger(_battleObjectBase,_count,_talentSkillConfig,_skillResult,_talentSkill,_isReTrigger)
    local battleRoom = _battleObjectBase:GetBattleRoom()
    local _areaUnit = battleRoom.battleUnitManager:GetAreaByFromNetIdAndDicId(_battleObjectBase:GetParentUnit():GetNetId(), _skillResult.parm1);
    if not _areaUnit then
        self.max = 0;
        return;
    end
    local _currentObj = _areaUnit:GetCurrentHeroObject()

    ---@type BattleObjCom_BoundaryTrigger
    local _boundaryTriggerCom = _currentObj:GetComponent(BattleObjectComponentType.BoundaryTrigger)
    if not _boundaryTriggerCom then
        self.max = 0;
        return;
    end
    if _skillResult.parm3 and self.max >= _skillResult.parm3 then
        self.max = 0;
        return;
    end

    ---@type BattleObjCom_Buff
    local _buffCom = _battleObjectBase:GetComponent(BattleObjectComponentType.Buff)
    local time = _skillResult.parm2 * (1 + _buffCom:GetTalentSkillUpPercent(_talentSkillConfig.sourceType)) * _count;
    self.max = self.max + time;
    
    _boundaryTriggerCom:ChangeCloseTimeTotal(time)
    _talentSkill:AddTriggeredObject(_currentObj:GetObjectId(),_count);
    return
end

---释放被动技能
---@public
---@param _skillResult SkillResult
---@param _targetObjectId number 伤害目标objectId
---@param _count number 触发次数
---@param _talentSkill BattlePlayerTalentSkill
function TalentSkillAreaTimeResult:Release(_skillResult, _targetObjectId,_count,_talentSkill)
    self.max = 0;
end


---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillAreaTimeResult:GetType()
    return 8;
end

return TalentSkillAreaTimeResult;