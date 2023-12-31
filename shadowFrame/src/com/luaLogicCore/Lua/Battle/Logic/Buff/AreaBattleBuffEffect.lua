---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/3/28 22:44

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class AreaBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam table 最终目标参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
AreaBattleBuffEffect = class(BattleBuffEffect, 'AreaBattleBuffEffect');

function AreaBattleBuffEffect:ctor(_buffInstanceId)

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
function AreaBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum,_isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end

    local _unit = _battleObject:GetParentUnit()
    if not _unit then return end
    local _actionManager = _unit:GetActionManager()
    if not _actionManager then return end

    local _battleRoom = _battleObject:GetBattleRoom()
    ---@type BattleObjCom_Buff
    local buffComp = _battleObject:GetComponent(BattleObjectComponentType.Buff)
    ---@type BuffAndActionInstance
    local buffAndActionInstance = _battleRoom.inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId)

    local _areaId = buffComp:GetBuffInstanceParam(self.buffInstanceId,1,math.floor(buffAndActionInstance.param[1]));

    ---@type SnapShotData
    local _snapShotData = self:GetCustomParam(_battleObject)
    _snapShotData:SetOriginalHeroSkillId(_battleBuff.castSkillId, _battleBuff.generateStackInfo)
    _snapShotData:SetSourceId(_battleBuff.buffGroupId)
    _snapShotData:SetCanTriggerElementReact(buffAndActionInstance.elementtrigger == 1)

    local _hurtParamFix = _snapShotData:GetHurtParam()

    local buffs = {}
    if buffComp and buffComp.buffCom then
        local _areaBuffList = buffComp.buffCom.areaBuffList
        if _areaBuffList[0] then
            for i, v in pairs(_areaBuffList[0]) do
                local _subBattleBuff = BattleBuffService:GenerateCastBuffTemplate(v.buffGroupId,_battleObject,_battleBuff.castSkillId, nil, v.upPercent, _stackNum)
                _subBattleBuff.generateStackInfo = _battleBuff.generateStackInfo
                table.insert(buffs, _subBattleBuff);
            end
        end
        if _areaBuffList[self.areaId] then
            for i, v in pairs(_areaBuffList[self.areaId]) do
                local _subBattleBuff = BattleBuffService:GenerateCastBuffTemplate(v.buffGroupId,_battleObject,_battleBuff.castSkillId, nil, v.upPercent, _stackNum)
                _subBattleBuff.generateStackInfo = _battleBuff.generateStackInfo
                table.insert(buffs, _subBattleBuff);
            end
        end
    end

    _battleRoom.behaviorProcessor:CreateAreaTriggerUnit(_areaId, _snapShotData, CreateAreatriggerSourceType.Buff, _battleBuff.buffGroupId, -1, _actionManager:GetPosition(), _actionManager:GetRotation(), buffs, -1, TimeUtils.battleNow(_battleObject:GetBattleId()), _battleBuff.bodyPartId, _battleBuff.generateStackInfo, _stackNum)
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
function AreaBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum)

end

---@public
---@return number buff类型Id
function AreaBattleBuffEffect:GetId()
    return 34;
end

---生成施法者自定义参数
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function AreaBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase,_buffInstanceId,_param)
    local _unit = _battleObjectBase:GetParentUnit()
    if _unit then
        local battleRoom = _unit:GetBattleRoom()
        return battleRoom.hurtManager:CreateSnapShot(_battleObjectBase:GetObjectId(), 2, nil, nil, nil, nil, nil, _param, nil)
    end
    return nil;
end

return AreaBattleBuffEffect;