---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/3/28 22:37

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class DamageBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam table 最终目标参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
DamageBattleBuffEffect = class(BattleBuffEffect, 'DamageBattleBuffEffect');

---@type boolean 伤害类buff
DamageBattleBuffEffect.hurtBuff = true

function DamageBattleBuffEffect:ctor(_buffInstanceId)

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
function DamageBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum,_isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end

    local inputDataSource = _battleObject:GetBattleRoom().inputDataSource
    ---@type BuffAndActionInstance
    local buffAndActionInstance = inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId);
    ---@type BuffAndActionTemplate
    local buffAndActionTemplate = inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId);
    local _elementId = buffAndActionTemplate.behindParam[3]; --元素类型
    local _hatredParam = buffAndActionInstance.buffHatredValue --仇恨系数
    
    local _addElementStrenthId = buffAndActionInstance.elementStrengthId
    local _addElementId = 0
    local _addElementRand = 0
    local _addElementNum = 0
    ---@type ElementStrength
    local _elementStrenth = inputDataSource:GetDict("ElementStrength", _addElementStrenthId)
    if _elementStrenth then
        _addElementId = _elementStrenth.elementId
        _addElementNum = _elementStrenth.addNum
        _addElementRand = _elementStrenth.chance
    end
    
    local _blockId = 0
    if buffAndActionInstance.isWeaknessHurt == 1 then
        _blockId = _battleBuff.bodyPartId
    end

    ---@type SnapShotData
    local _snapShotData = self:GetCustomParam(_battleObject)
    local currentCastParam = self:GetCastParam(_battleObject)*(1+_battleBuff.upPercent[buffAndActionTemplate.metaType]);

    ---@type BattleObjCom_Property
    local _propertyCom = _battleObject:GetComponent(BattleObjectComponentType.Property)
    _snapShotData:SetOriginalHeroSkillId(_battleBuff.castSkillId, _battleBuff.generateStackInfo)
    _snapShotData:SetSourceId(_battleBuff.buffGroupId)
    _snapShotData:SetCanTriggerElementReact(buffAndActionInstance.elementtrigger == 1)
	_snapShotData:SetEleSpreadHurtFix(_battleBuff:GetEleBallSpreadHurtFix())
    if LogTools.HurtLog and CheckLogLevel(LogLevel.log) then
        LogTools.LogByLevel(LogLevel.log, "CheckHurt", "触发伤害buff", "来源NetId", _snapShotData:GetNetId(), "来源ObjId", _snapShotData:GetObjId(), "目标NetId", _battleObject:GetParentUnit():GetNetId(), "目标ObjId", _battleObject:GetObjectId(), "buffGroupId", _battleBuff.buffGroupId, "buffInstanceId", self.buffInstanceId, "buffTemplateId", buffAndActionInstance.templateId, "BuffInstance表skillPara参数", dumpTableEx(buffAndActionInstance.skillPara), "BuffTemplate表frontParam参数", dumpTableEx(buffAndActionTemplate.frontParam), "BuffInstance表param参数1", buffAndActionInstance.param[1], "最终伤害系数", currentCastParam, "堆叠层数", _stackNum, "buffAndActionInstance.isWeaknessHurt", buffAndActionInstance.isWeaknessHurt, "_battleBuff.bodyPartId", _battleBuff.bodyPartId, "最终分块ID", _blockId)
    end
    _snapShotData:InitBuffParams(_propertyCom, _elementId, _addElementId, _addElementRand, _addElementNum, currentCastParam, _hatredParam, 1)
   
    --20类buff可用指定ID的属性替换计算伤害时的攻击力
    local _atkUsePropId = buffAndActionTemplate.frontParam[1]
    if _atkUsePropId and _atkUsePropId > 0 then
        local _calcUseAtk = _propertyCom:GetPropertyById(_atkUsePropId)
        if _calcUseAtk then
            _snapShotData:SetCalcUseAtk(_calcUseAtk)
            if LogTools.HurtLog and CheckLogLevel(LogLevel.log) then
                LogTools.LogByLevel(LogLevel.log, "CheckHurt", "20类伤害buff，攻击力被其他属性替换", "buffAndActionTemplate.frontParam[1]", buffAndActionTemplate.frontParam[1], "_calcUseAtk", _calcUseAtk)
            end
        end
    end
    
    
    local battleRoom = _battleObject:GetBattleRoom()
    local _hurtStackData = battleRoom.hurtManager:PopHurtStackData()
    _hurtStackData.defUnit = _battleObject:GetParentUnit()
	_hurtStackData.defObj = _battleObject
	_hurtStackData.defBlockId = _blockId
	_hurtStackData.reactId = 0
	_hurtStackData.checkCamp = false
	_hurtStackData.stackNum = _stackNum
	_hurtStackData.directHurtNum = nil
	--_hurtStackData.disReduceParam = _disReduceParam
	--_hurtStackData.disReduceEnum = _hurtDisReduceEnum
	_hurtStackData.trigEvent = (buffAndActionTemplate.behindParam[5] ~= 1)
	_hurtStackData.isAccumulatedAtk = false
	_hurtStackData.barrageSkillId = nil
	_hurtStackData.hurtCollision = ""
    battleRoom.hurtManager:OnBuffHurt(_snapShotData, _hurtStackData)
    battleRoom.hurtManager:PushStackData(_hurtStackData)
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
function DamageBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum)

end

---@public
---@return number buff类型Id
function DamageBattleBuffEffect:GetId()
    return 20;
end

---生成施法者自定义参数
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function DamageBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase,_buffInstanceId,_param)
    local _unit = _battleObjectBase:GetParentUnit()
    if _unit then
        local battleRoom = _unit:GetBattleRoom()
        return battleRoom.hurtManager:CreateSnapShot(_battleObjectBase:GetObjectId(), 2)
    end
    return nil;
end

return DamageBattleBuffEffect;