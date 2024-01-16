---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2023/5/30 18:54

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class WindElementBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam table 施法者参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
---@field castObjId number 施法者objId
---@field castUnitId number 施法者unitId
WindElementBattleBuffEffect = class(BattleBuffEffect, 'WindElementBattleBuffEffect');

function WindElementBattleBuffEffect:ctor(_buffInstanceId)

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
---@param _isUnitChangeLeader boolean 是否为玩家buff换人操作
function WindElementBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum, _isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end

    local inputDataSource = _battleObject:GetBattleRoom().inputDataSource
    ---@type BuffAndActionInstance
    local buffAndActionInstance = inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId);
    ---@type BuffAndActionTemplate
    local buffAndActionTemplate = inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId);
    local _elementId = buffAndActionTemplate.behindParam[3]; --元素类型
    --local _elementId = BattleElementTypeEnum.STORM:GetId()
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
        LogTools.LogByLevel(LogLevel.log, "CheckHurt", "触发元素击破风伤害buff", "来源NetId", _snapShotData:GetNetId(), "来源ObjId", _snapShotData:GetObjId(), "目标NetId", _battleObject:GetParentUnit():GetNetId(), "目标ObjId", _battleObject:GetObjectId(), "buffGroupId", _battleBuff.buffGroupId, "buffInstanceId", self.buffInstanceId, "buffTemplateId", buffAndActionInstance.templateId, "堆叠层数", _stackNum, "_battleBuff.bodyPartId", _battleBuff.bodyPartId, "最终分块ID", _blockId, "_elementId", _elementId, "_addElementId", _addElementId, "_snapShotData:GetCalcUseAtk()", _snapShotData:GetCalcUseAtk())
    end
    _snapShotData:InitBuffParams(_propertyCom, _elementId, _addElementId, _addElementRand, _addElementNum, currentCastParam, _hatredParam, 1)
    
    
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
---@param _isTimeOver boolean 是否时间到
function WindElementBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum, _isTimeOver)

end

---@public
---@return number buff类型Id
function WindElementBattleBuffEffect:GetId()
    return 70;
end

---静态方法,生成施法者自定义参数
---指定元素类型英雄中最高的攻击力
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function WindElementBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase, _buffInstanceId, _param)
    local _unit = _battleObjectBase:GetParentUnit()
    if _unit then
        local battleRoom = _unit:GetBattleRoom()
        local _snapshotData = battleRoom.hurtManager:CreateSnapShot(_battleObjectBase:GetObjectId(), 2)

        ---@type BuffAndActionInstance
        local buffAndActionInstance = battleRoom.inputDataSource:GetDict("BuffAndActionInstance", _buffInstanceId)
        ---@type BuffAndActionTemplate
        local buffAndActionTemplate = battleRoom.inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId);
        local _checkElementId = buffAndActionTemplate.behindParam[3]
        
        ---@type BattleObjCom_Property
        local _propCom
        ---@type BattleObjCom_Config
        local _configCom
        local _atk = 0
        local _atkTmp = 0

        ---@type BattleUnitCom_Camp
        local _campCom = _battleObjectBase:GetParentUnit():GetComponent(BattleUnitComponentType.Camp)
        if _campCom:CheckFirstCamp(BattleUnitCampType.Player) then
            local _unitList = battleRoom.battleUnitManager:GetUnitListByCampType(BattleUnitCampType.Player)
            local _heroList
            for _, _checkUnit in pairs(_unitList) do
                _heroList = _checkUnit:GetHeroList()
                for _, _hero in pairs(_heroList) do
                    _configCom = _hero:GetComponent(BattleObjectComponentType.Config)
                    if _configCom:GetElementId() == _checkElementId then
                        _propCom = _hero:GetComponent(BattleObjectComponentType.Property)
                        _atkTmp = _propCom:GetPropertyByName(BattlePropertyEnum.Atk)
                        if _atkTmp > _atk then
                            _atk = _atkTmp
                        end
                    end
                end
            end
        else
            _propCom = _battleObjectBase:GetComponent(BattleObjectComponentType.Property)
            _atk = _propCom:GetPropertyByName(BattlePropertyEnum.Atk)
        end

        ---@type BattleObjCom_Buff
        local buffCom = _battleObjectBase:GetComponent(BattleObjectComponentType.Buff);

        _snapshotData:SetCalcUseAtk(_atk * buffCom:GetBuffInstanceParam(_buffInstanceId,1,buffAndActionInstance.param[1]))
        return _snapshotData
    end
    return nil;
end

return WindElementBattleBuffEffect;