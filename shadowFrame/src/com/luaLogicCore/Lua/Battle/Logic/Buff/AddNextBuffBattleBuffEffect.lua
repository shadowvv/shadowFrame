---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/7/8 18:34

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class AddNextBuffBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam number 施法者参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
---@field castObjId number 施法者objId
---@field castUnitId number 施法者unitId
AddNextBuffBattleBuffEffect = class(BattleBuffEffect, 'AddNextBuffBattleBuffEffect');

function AddNextBuffBattleBuffEffect:ctor(_buffInstanceId)

    self.buffInstanceId = _buffInstanceId;
    self.castParam = nil;
    self.customParam = nil;
    self.nextTriggerTime = 0;
    self.triggerCount = 0;

end

---触发buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
---@param _isUnitChangeLeader boolean 是否为玩家buff换人操作
function AddNextBuffBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum,_isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
---@param _isTimeOver boolean 是否时间到
function AddNextBuffBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum,_isTimeOver)
    if _isTimeOver then
        ---@type BuffAndActionInstance
        local buffAndActionInstance = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId);
        ---@type BuffAndActionTemplate
        local buffAndActionTemplate = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId);

        ---@type BattleUnitBase
        local castUnit = _battleObject:GetBattleRoom().battleUnitManager:GetUnit(_battleBuff.castUnitId,true);
        if castUnit then
            ---@type BattleObjectBase
            local castObject = castUnit:GetHeroObject(_battleBuff.castObjId);
            if castObject then
                ---@type BattleObjCom_Buff
                local buffCom = _battleObject:GetComponent(BattleObjectComponentType.Buff);
                local buffId,_ = math.modf(buffAndActionTemplate.behindParam[4])
                local stackNumType = 0;
                if buffAndActionTemplate.behindParam[5] then
                    stackNumType = math.modf(buffAndActionTemplate.behindParam[5]);
                end
                local stackNum = 1;
                if stackNumType == 1 then
                    stackNum = _battleBuff.stackNum;
                end
                if buffCom then
                    buffCom:AddBattleBuff(BattleBuffService:GenerateCastBuffTemplate(buffId,castObject,_battleBuff.castSkillId, nil,_battleBuff.upPercent,stackNum))
                end
            end
        end
    end
end

---@public
---@return number buff类型Id
function AddNextBuffBattleBuffEffect:GetId()
    return 37;
end

---生成施法者自定义参数
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function AddNextBuffBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase,_buffInstanceId,_param)
    return _param;
end

return AddNextBuffBattleBuffEffect;