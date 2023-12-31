---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/3/10 16:14
-- 掉落物管理器

require "Lib/class"
require "Battle/Logic/Room/Fall/PickUp/PickUpTypeEnum"

---@class FallObjectManager : table
FallObjectManager = class(nil, 'FallObjectManager');

function FallObjectManager:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
end

function FallObjectManager:__Init()
    ---@type table<number,FallObjectUnit> 掉落单位实体
    self.fallObjUnitDic = {}

    ---@type BattleDefault
    local _inOutFormationRatio = self.battleRoom.inputDataSource:GetDict("BattleDefault", BATTLE_ELEMENT_CONST.ELEMENT_JIZOU_ENERGY_IN_OUI_FORMATION)
    ---@type number 阵上掉落系数
    self.inFormationRatio = _inOutFormationRatio.value6[1]
    ---@type number 阵下掉落系数
    self.outFormationRatio = _inOutFormationRatio.value6[2]

end

function FallObjectManager:__Clear()
    self.fallObjUnitDic = nil
end

function FallObjectManager:Init()
    self:__Init()
end

-- 移除掉落物体单位
---@protected
---@param _fallObjUnitId number 掉落物单位id
---@return FallObjectUnit 掉落单位
function FallObjectManager:__RemoveFallObjectUnit(_fallObjUnitId)
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "__RemoveFallObjectUnit", "_fallObjUnitId", _fallObjUnitId)
    local _fallObjUnit = self.fallObjUnitDic[tostring(_fallObjUnitId)]
    self.fallObjUnitDic[tostring(_fallObjUnitId)] = nil
    return _fallObjUnit
end

-- 添加掉落物体单位
---@protected
---@param _fallObjectUnit FallObjectUnit 掉落物单位
function FallObjectManager:__AddFallObjectUnit(_fallObjectUnit)
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "__AddFallObjectUnit", "_fallObjUnitId", dumpTableEx(_fallObjectUnit.fallUnitId))
    self.fallObjUnitDic[tostring(_fallObjectUnit.fallUnitId)] = _fallObjectUnit
end

-- 拾取掉落物体
---@protected
---@param _unit BattleUnitBase 拾取者
---@param _fallObjectUnit FallObjectUnit 掉落物单位实体
function FallObjectManager:__PickUpFallObject(_unit, _fallObjectUnit)
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "__PickUpFallObject", "_fallObjUnit", dumpTableEx(_fallObjectUnit))
    ---@type FallObject
    local fallObject = self.battleRoom.inputDataSource:GetDict("FallObject", _fallObjectUnit.fallObjectId)
    if not fallObject then
        return
    end

    -- 修改unit属性
    ---@type BattleUnitCom_UnitProp
    local _unitPropCom = _unit:GetComponent(BattleUnitComponentType.UnitProp)
    for index = 1, #fallObject.propIds do
        ---@type number
        local _propId = fallObject.propIds[index]
        ---@type number
        local _propValue = fallObject.propValues[index]
        local _propKey = ProtoEnumTool.GetPropertyKey(_propId)
        if _unitPropCom:CheckUnitProp(_propKey) then
            -- 修改当前属性值
            _unitPropCom:IncreasePropByName(_propKey, _propValue)
        end
    end

    for _, _object in pairs(_unit:GetAllObjectDic()) do
        ---@type BattleObjCom_Property
        local comProp = _object:GetComponent(BattleObjectComponentType.Property)
        ---@type BattleObjCom_Buff
        local comBuff = _object:GetComponent(BattleObjectComponentType.Buff)

        -- 阵上阵下系数
        local _formationRatio = 1
        if _unit:GetCurrentHeroObjectId() == _object:GetObjectId() then
            -- 阵上
            if fallObject.isStateCorrect == 1 then
                _formationRatio = self.inFormationRatio
            end
        else
            -- 阵下
            if fallObject.isStateCorrect == 1 then
                _formationRatio = self.outFormationRatio
            else
                _formationRatio = 0
            end
        end

        -- 元素修正值
        local _elementRatio = 1
        if fallObject.isElementCorrect == 1 then
            ---@type ElementCorrect
            local elementCorrect = self.battleRoom.inputDataSource:GetDict("ElementCorrect", _object:GetElementType())
            ---@type function
            local getFallRatioFunc = GetBattleElementTypeById(fallObject.elementType):GetFallRatioFunc()
            if getFallRatioFunc and elementCorrect then
                _elementRatio = getFallRatioFunc(elementCorrect)
            end
        end

        for index = 1, #fallObject.propIds do
            ---@type number
            local _propId = fallObject.propIds[index]
            ---@type number
            local _propValue = fallObject.propValues[index]
            local _propKey = ProtoEnumTool.GetPropertyKey(_propId)
            if not _unitPropCom:CheckUnitProp(_propKey) then
                -- 修改obj属性
                -- 能量值 * （1+恢复系数）* 阵上阵下系数 * 元素修正值
                _propValue = _propValue * _formationRatio * _elementRatio

                local _oldJizouEn = comProp:GetPropertyByName(BattlePropertyEnum.Jizou_Cur)
                -- 修改当前属性值
                if comProp:CheckIsConsumeProp(_propId) then
                    comProp:ChangeConsumeProp(_propId, _propValue)
                else
                    comProp:AddBaseValueById(_propId, _propValue)
                end

                if CheckLogLevel(LogLevel.log) then
                    local _curJizouEn = comProp:GetPropertyByName(BattlePropertyEnum.Jizou_Cur)
                    local _maxJizouEn = comProp:GetPropertyByName(BattlePropertyEnum.Jizou_Max)
                    LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "PickUpFallObject", "netId", _unit:GetNetId(), _object:GetInstanceXls().id,
                            tostring(_oldJizouEn) .. "/" .. tostring(_maxJizouEn) .. " +" .. tostring(_propValue) .. " --> " .. tostring(_curJizouEn) .. "/" .. tostring(_maxJizouEn),
                            "_formationRatio", _formationRatio, "_elementRatio", _elementRatio)
                end
            end
        end
        -- 获得buff
        if fallObject.pickupBuff and #fallObject.pickupBuff > 0 then
            for index = 1, #fallObject.pickupBuff do
                local _buffGroupId = fallObject.pickupBuff[index]
                comBuff:AddBattleBuffById(_buffGroupId)
            end
        end
        ---@type Leader
        local _leader = _object:GetInstanceXls()
        if fallObject.elementType == _leader.property then
            -- 元素匹配额外获得buff
            if fallObject.typeAdditionalBuff and #fallObject.typeAdditionalBuff > 0 then
                for index = 1, #fallObject.typeAdditionalBuff do
                    local _buffGroupId = fallObject.typeAdditionalBuff[index]
                    comBuff:AddBattleBuffById(_buffGroupId)
                end
            end
        end
        if fallObject.leaderId == _leader.id then
            -- leaderId匹配额外获得buff
            if fallObject.leaderAddBuff and #fallObject.leaderAddBuff > 0 then
                for index = 1, #fallObject.leaderAddBuff do
                    local _buffGroupId = fallObject.leaderAddBuff[index]
                    comBuff:AddBattleBuffById(_buffGroupId)
                end
            end
        end
        if _unit:GetCurrentHeroObjectId() == _object:GetObjectId() then
            -- 阵上角色获得额外buff
            if fallObject.curLeaderAddBuff and #fallObject.curLeaderAddBuff > 0 then
                for index = 1, #fallObject.curLeaderAddBuff do
                    local _buffGroupId = fallObject.curLeaderAddBuff[index]
                    comBuff:AddBattleBuffById(_buffGroupId)
                end
            end
        end
    end
    -- 移除
    self:__RemoveFallObjectUnit(_fallObjectUnit.fallUnitId)
    self:__OnPickUpFallObject(_unit, _fallObjectUnit)
end

-- 检测掉落物消失
---@protected
function FallObjectManager:__CheckFallObjectDisappear()
    for _, _fallObjUnit in pairs(self.fallObjUnitDic) do
        if _fallObjUnit.disappearTime > 0 and TimeUtils.battleNow(self.battleId) >= _fallObjUnit.disappearTime then
            self:__RemoveFallObjectUnit(_fallObjUnit.fallUnitId)
        end
    end
end


-- 检测拾取掉掉落物
---@protected
---@param _unit BattleUnitBase 拾取人
---@param _fallObjUnitId number 掉落物id
---@return FallObjectUnit 掉落物
function FallObjectManager:__CheckPickUpFallObject(_unit, _fallObjUnitId)
    local fallObjectUnit = self.fallObjUnitDic[tostring(_fallObjUnitId)]
    if not fallObjectUnit then
        -- 掉落物没了
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "FallObjectManager", "CheckPickUpFallObject", "netId", _unit:GetNetId(), "fallObject", "fallObjUnitId", _fallObjUnitId, "fallObjUnitId not exist")
        end
        return
    end
    if TimeUtils.battleNow(self.battleId) >= fallObjectUnit.disappearTime then
        -- 掉落物超时消失了
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "FallObjectManager", "CheckPickUpFallObject", "netId", _unit:GetNetId(), "fallObject", "fallObjUnitId", _fallObjUnitId, "fallObjectId", fallObjectUnit.fallObjectId, "timeout disappear")
        end
        self:__RemoveFallObjectUnit(_fallObjUnitId)
        return
    end
    ---@type FallObject
    local _fallObject = self.battleRoom.inputDataSource:GetDict("FallObject", fallObjectUnit.fallObjectId)
    if not _fallObject then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "FallObjectManager", "CheckPickUpFallObject", "netId", _unit:GetNetId(), "fallObject", "fallObjUnitId", _fallObjUnitId, "fallObject not exist")
        end
        return
    end
    ---@type PickUpType
    local pickUpType = GetPickUpTypeById(_fallObject.pickupType)
    if not pickUpType then
        -- 缺配置，默认单个单位拾取
        pickUpType = PICK_UP_TYPE_ENUM.SINGLE_UNIT
    end
    if not pickUpType:GetCheckFunc()(fallObjectUnit, _fallObject, _unit) then
        return
    end
    return fallObjectUnit
end

-- 拾取物体
---@protected
---@param _unit BattleUnitBase 拾取者
---@param _fallObjectUnit FallObjectUnit 掉落物单位实体
function FallObjectManager:__OnPickUpFallObject(_unit, _fallObjectUnit)
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "__OnPickUpFallObject", "_fallObjectUnit", dumpTableEx(_fallObjectUnit))
    local _pickUpFallObject = {
        fallObjUnitId = _fallObjectUnit.fallUnitId,
        ownerNetId = _unit:GetNetId(),
        ownerObjId = _unit:GetCurrentHeroObjectId(),
    }

    local _pickUpFallObjectList = {}
    table.insert(_pickUpFallObjectList, _pickUpFallObject)

    local _fallObjectChange = {
        pickUpFallObjects = { _pickUpFallObject },
    }

    -- 输出数据
    local outputData = {
        netId = _unit:GetNetId(),
        objId = _unit:GetCurrentHeroObjectId(),
        fallObjectChange = _fallObjectChange
    }

    self.battleRoom.outputDataSource:AddBattleUnitKeyData(outputData)
end

function FallObjectManager:__OnUpdate(_deltaTime)
    if IsClient() then
        -- 客户端处理掉落物消失通知显示层
        self:__CheckFallObjectDisappear()
    end
end

------------------------------------------------------------------------------------------------------------------------

function FallObjectManager:OnUpdate(_deltaTime)
    self:__OnUpdate(_deltaTime)
end

-- 根据unit掉落
---@public
---@param _fallObjectId number 掉落物id
---@param _fallObjectCount number 掉落物数量
---@param _ownerNetId number 掉落物所属者netId
---@param _ownerObjId number 掉落物所属者objId
---@param _dropUnitNetId number 掉落物单位netId
---@param _dropForAllPlayer boolean 是否所有人都掉落
function FallObjectManager:DropFallObjectByUnit(_fallObjectId, _fallObjectCount, _ownerNetId, _ownerObjId, _dropUnitNetId, _dropForAllPlayer)
    -- 根据unit单位掉落，掉落物位置和朝向取单位的位置和朝向
    self:DropFallObject(_fallObjectId, _fallObjectCount, _ownerNetId, _ownerObjId, _dropUnitNetId, nil, nil, _dropForAllPlayer)
end

-- 根据位置掉落
---@public
---@param _fallObjectId number 掉落物id
---@param _fallObjectCount number 掉落物数量
---@param _ownerNetId number 掉落物所属者netId
---@param _ownerObjId number 掉落物所属者objId
---@param _position Vector3 掉落物位置
---@param _rotation Quaternion 掉落物朝向
---@param _dropForAllPlayer boolean 是否所有人都掉落
function FallObjectManager:DropFallObjectByPosition(_fallObjectId, _fallObjectCount, _ownerNetId, _ownerObjId, _position, _rotation, _dropForAllPlayer)
    -- 根据位置掉落，凭空掉落，跟unit无关
    if _rotation == nil then
        -- 默认朝向
        _rotation = Quaternion.New(0, 0, 0, 1)
    end
    self:DropFallObject(_fallObjectId, _fallObjectCount, _ownerNetId, _ownerObjId, 0, _position, _rotation, _dropForAllPlayer)
end

-- 根据单位位置掉落偏移
---@public
---@param _fallObjectId number 掉落物id
---@param _fallObjectCount number 掉落物数量
---@param _ownerNetId number 掉落物所属者netId
---@param _ownerObjId number 掉落物所属者objId
---@param _dropUnit BattleUnitBase 掉落单位
---@param _offSetPosition number[] 偏移位置xyz
---@param _dropForAllPlayer boolean 是否所有人都掉落
function FallObjectManager:DropFallObjectByUnitPositionOffset(_fallObjectId, _fallObjectCount, _ownerNetId, _ownerObjId, _dropUnit, _offSetPosition, _dropForAllPlayer)
    if not _dropUnit then
        return
    end
    -- 根据unit的位置偏移掉落
    local _unitPosition = _dropUnit:GetActionManager().position
    local _unitRotation = _dropUnit:GetActionManager().rotation
    local offset = Quaternion.MulVec3(_unitRotation, Vector3.New(_offSetPosition[1], _offSetPosition[2], _offSetPosition[3]))
    offset.Add(offset, _unitPosition)
    self:DropFallObject(_fallObjectId, _fallObjectCount, _ownerNetId, _ownerObjId, _dropUnit:GetNetId(), offset, _unitRotation, _dropForAllPlayer)
end

-- 掉落
---@public
---@param _fallObjectId number 掉落物id
---@param _fallObjectCount number 掉落物数量
---@param _ownerNetId number 掉落物所属者netId
---@param _ownerObjId number 掉落物所属者objId
---@param _dropUnitNetId number 掉落物单位netId
---@param _position Vector3 掉落物位置
---@param _rotation Quaternion 掉落物朝向
---@param _dropForAllPlayer boolean 是否所有人都掉落
function FallObjectManager:DropFallObject(_fallObjectId, _fallObjectCount, _ownerNetId, _ownerObjId, _dropUnitNetId, _position, _rotation, _dropForAllPlayer)
    --if CheckLogLevel(LogLevel.log) then
	--	LogTools.LogByLevel(LogLevel.log, "FallObjectManager:DropFallObject", "_fallObjectId", _fallObjectId, "_fallObjectCount", _fallObjectCount, "_ownerNetId", _ownerNetId, "_ownerObjId", _ownerObjId, "_dropUnitNetId", _dropUnitNetId, "_position", _position, "_rotation", _rotation, "_dropForAllPlayer", _dropForAllPlayer)
	--end
    if not _fallObjectId then
        return
    end
    if not _fallObjectCount then
        _fallObjectCount = 1
    end

    local _fallObject = self.battleRoom.inputDataSource:GetDict("FallObject", _fallObjectId)
    if not _fallObject then
        return
    end

    -- 如果有召唤物的component，取玩家netId
    ---@type BattleObjectBase
    local _object
    if _ownerObjId then
        _object = self.battleRoom.battleObjectManager:GetObject(_ownerObjId)
    elseif _ownerNetId then
        local _attackerUnit = self.battleRoom.battleUnitManager:GetUnit(_ownerNetId, true)
        if _attackerUnit then
            _object = _attackerUnit:GetCurrentHeroObject()
            _ownerObjId = _object:GetObjectId()
        end
    end

    if _object and _object:CheckObjectType(BattleObjectType.SummonedMons) then
        local _parentUnit = _object:GetParentUnit()
        if _parentUnit then
            ---@type BattleUnitCom_Subordination
            local _subordinationCom = _parentUnit:GetComponent(BattleUnitComponentType.Subordination)
            _ownerNetId = _subordinationCom:GetSubordinatedNetId()
        end
    end

    local _dropUnit = self.battleRoom.battleUnitManager:GetUnit(_dropUnitNetId, true)
    if not _position and _dropUnit then
        -- 没指定位置，取掉落者的位置
        _position = _dropUnit:GetActionManager().position
    end
    if not _rotation and _dropUnit then
        -- 没指定朝向，取掉落者的朝向
        _rotation = _dropUnit:GetActionManager().rotation
    end

    -- 创建实体
    ---@type number
    local disappearTime = self:GetFallObjectDisappearTimeFromNow(_fallObjectId)

    local fallObjectUnits = {}

    if _dropForAllPlayer then
        -- 掉落的掉落物属于所有玩家 2023/1/13 (仅针对掉落配置文件归属于攻击者有效)
        local unitPlayers = self.battleRoom.battleUnitManager:GetUnitListByUnitType(BattleUnitType.Player)
        if unitPlayers then
            -- 掉落的掉落物属于所有玩家 2023/1/13
            for _, _unitPlayer in pairs(unitPlayers) do
                local dropOwnerNetId = _unitPlayer:GetNetId()
                local dropOwnerObjectId = _unitPlayer:GetCurrentHeroObjectId()
                -- 创建掉落物单位实体
                for _ = 1, _fallObjectCount do
                    local fallObjId = self.battleRoom.idCreator:GetAndIncreaseFallObjId()
                    local fallObjectUnit = self:CreateFallObjectUnit(fallObjId, _fallObjectId, _dropUnit, dropOwnerNetId, dropOwnerObjectId, disappearTime, _position, _rotation)
                    table.insert(fallObjectUnits, fallObjectUnit)
                end
            end
        end
    else
        -- 创建掉落物单位实体
        for _ = 1, _fallObjectCount do
            local fallObjId = self.battleRoom.idCreator:GetAndIncreaseFallObjId()
            local fallObjectUnit = self:CreateFallObjectUnit(fallObjId, _fallObjectId, _dropUnit, _ownerNetId, _ownerObjId, disappearTime, _position, _rotation)
            table.insert(fallObjectUnits, fallObjectUnit)
        end
    end
    self:__OnDropFallObject(fallObjectUnits, _ownerNetId, _ownerObjId, _dropUnitNetId, _position, _rotation)
end

-- 获取掉落物消失时间点，从当前时间开始计时
---@protected
---@param _fallObjectId number 掉落物id
---@return number 掉落物消失时间点
function FallObjectManager:GetFallObjectDisappearTimeFromNow(_fallObjectId)
    ---@type FallObject
    local _fallObject = self.battleRoom.inputDataSource:GetDict("FallObject", _fallObjectId)
    if not _fallObject then
        return 0
    end
    ---@type FallObjectPrefab
    local fallObjPrefab = self.battleRoom.inputDataSource:GetDict("FallObjectPrefab", tonumber(_fallObject.fallObjectPrefabid))
    if not fallObjPrefab then
        return 0
    end
    return TimeUtils.battleNow(self.battleId) + fallObjPrefab.durationTime * 1000
end

-- 掉落物体
---@protected
---@param _fallObjectUnits FallObjectUnit[] 掉落物单位实体
---@param _attackerNetId number 攻击者netId
---@param _attackerObjId number 攻击者objId
---@param _dropUnitNetId number 掉落者netId
---@param _position Vector3 掉落物位置
---@param _rotation Quaternion 掉落物角度
function FallObjectManager:__OnDropFallObject(_fallObjectUnits, _attackerNetId, _attackerObjId, _dropUnitNetId, _position, _rotation)
    local dropFallObjects = {}
    for _, fallObjectUnit in pairs(_fallObjectUnits) do
        local dropFallObject = {
            fallObjUnitId = fallObjectUnit.fallUnitId,
            parentUnitId = _dropUnitNetId,
            fallObjId = fallObjectUnit.fallObjectId,
            ownerNetId = fallObjectUnit.attackerNetId,
            ownerObjId = fallObjectUnit.attackerObjId,
            position = _position,
            rotation = _rotation,
        }
        table.insert(dropFallObjects, dropFallObject)
    end

    local fallObjectChange = {
        dropFallObjects = dropFallObjects,
    }

    local _netId = _attackerNetId
    local _objectId = _attackerObjId
    if not _netId or _netId == 0 then
        _netId = _dropUnitNetId
        local _unit = self.battleRoom.battleUnitManager:GetUnit(_netId, true)
        if _unit then
            _objectId = _unit:GetCurrentHeroObjectId()    
        end
    end
    -- 输出数据
    local outputData = {
        netId = _netId,
        objId = _objectId,
        fallObjectChange = fallObjectChange
    }
    self.battleRoom.outputDataSource:AddBattleUnitKeyData(outputData)
end

-- 添加掉落物体单位
---@public
---@param _fallObjUnitId number 掉落物单位id
---@param _fallObjectId number 掉落物id
---@param _parentUnit BattleUnitBase 父单位
---@param _attackerNetId number 攻击者netId
---@param _attackerObjectId number 攻击者objectId
---@param _disappearTime number 消失时间
---@param _position Vector3
---@param _rotation Quaternion
---@return FallObjectUnit 掉落物体
function FallObjectManager:CreateFallObjectUnit(_fallObjUnitId, _fallObjectId, _parentUnit, _attackerNetId, _attackerObjectId, _disappearTime, _position, _rotation)
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "CreateFallObjectUnit", "_fallObjUnitId", _fallObjUnitId, "_fallObjectId", _fallObjectId, "_attackerNetId", _attackerNetId, "_disappearTime", _disappearTime)
    ---@type FallObjectUnit
    local fallObjectUnit = FallObjectUnit.New(_fallObjUnitId, _fallObjectId, _parentUnit, _disappearTime, _attackerNetId, _attackerObjectId, _position, _rotation)
    self:__AddFallObjectUnit(fallObjectUnit)
    return fallObjectUnit
end

-- 移除掉落物体单位
---@public
---@param _fallObjUnitId number 掉落物单位id
---@return FallObjectUnit 掉落单位
function FallObjectManager:RemoveFallObjectUnit(_fallObjUnitId)
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "RemoveFallObjectUnit", "_fallObjUnitId", _fallObjUnitId)
    return self:__RemoveFallObjectUnit(_fallObjUnitId)
end

---@param _targetNetId number
---@param _battleLogicEvent BattleLogicEventV2
function FallObjectManager:OnTriggerBeDamageEvent(_targetNetId, _battleLogicEvent)
    ---@type BattleUnitBase
    local _targetUnit = self.battleRoom.battleUnitManager:GetUnit(_targetNetId, true);
    if not _targetUnit then
        return
    end
    -- 1.血量掉落物
    ---@type FallCondition_BeDamageHpPercent
    local _fallConditionOper = FallConditionEnum.OBJECT_HP:GetOper()
    _fallConditionOper:OnTriggerEvent(_targetUnit, _battleLogicEvent)
    -- 2.弱点死亡随机掉落物
    if _battleLogicEvent.eventTriggerParam.isWeakness and _battleLogicEvent.eventTriggerParam.targetDead then
        if _targetUnit:CheckUnitType(BattleUnitType.Monster, false) then
            ---@type MonsterInstance
            local _monsterInstance = _targetUnit:GetDataInstanceXls()
            local _randomFallArr = _monsterInstance.preciseKillRandomFall
            local _weightArr = _monsterInstance.pkrProbability
            local _randomFallObjectCount = _monsterInstance.pkrCount

            for _ = 1, _randomFallObjectCount do
                ---@type number
                local _fallObjectId = self.battleRoom.randomUtil:RandomByWeight(_randomFallArr, _weightArr)
                if _fallObjectId then
                    self.battleRoom.fallObjectManager:DropFallObjectByUnit(_fallObjectId, 1, _battleLogicEvent.eventTriggerParam.sourceNetId, _battleLogicEvent.eventTriggerParam.sourceObjectId, _targetUnit:GetNetId(), false)
                end
            end
        end
    end
end

------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------
---服务器逻辑核生成用于发送给前端逻辑核的全量信息
---@public
function FallObjectManager:GetCreateSyncMessage_S2C()
    local _fallObjectChange = {}
    local _dropFallObjects = {}
    for _, _fallObjUnit in pairs(self.fallObjUnitDic) do
        local _dropFallObject = {}
        _dropFallObject.fallObjUnitId = _fallObjUnit.fallUnitId
        if _fallObjUnit.parentUnit then
            _dropFallObject.parentUnitId = _fallObjUnit.parentUnit:GetNetId()
        end
        _dropFallObject.fallObjId = _fallObjUnit.fallObjectId
        _dropFallObject.ownerNetId = _fallObjUnit.attackerNetId
        _dropFallObject.position = _fallObjUnit.position
        _dropFallObject.rotation = _fallObjUnit.rotation
        table.insert(_dropFallObjects, _dropFallObject)
    end
    _fallObjectChange.dropFallObjects = _dropFallObjects
    return _fallObjectChange
end

---前端逻辑核用服务器发来的全量信息刷新自身数据
---@public
function FallObjectManager:OnReceiveCreateSyncMessage_S2C(_message)
    if _message.dropFallObjects then
        for _, _fallObjUnit in pairs(_message.dropFallObjects) do
            ---@type number
            local _disappearTime = self.battleRoom.fallObjectManager:GetFallObjectDisappearTimeFromNow(_fallObjUnit.fallObjId)
            ---@type number
            local _parentUnit = self.battleRoom.battleUnitManager:GetUnit(_fallObjUnit.parentUnitId, true)
            -- 创建掉落物实体
            self:CreateFallObjectUnit(_fallObjUnit.fallObjUnitId, _fallObjUnit.fallObjId, _parentUnit, _fallObjUnit.ownerNetId, _fallObjUnit.ownerObjId, _disappearTime, _fallObjUnit.position, _fallObjUnit.rotation)
        end
    end
end

------------------------------------------------------------------------------------------------------------------------
-- 客户端Logic和服务端Logic交互
------------------------------------------------------------------------------------------------------------------------

-- 客户端通知服务端拾取物体
---@public
---@param _uid number 玩家id
---@param _fallObjUnitIds number 掉落物id
function FallObjectManager:PickUpFallObject(_uid, _fallObjUnitIds)
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "PickUpFallObject", "_uid", _uid, "_fallObjUnitId", _fallObjUnitId)
    local _unit = self.battleRoom.battleUnitManager:GetUnitByPlayerId(_uid, true)
    if not _unit then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "FallObjectManager", "PickUpFallObject", "_unit nil", "_uid", _uid)
        end
        return
    end
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "PickUpFallObject", "_fallObjUnitIds", dumpTableEx(_fallObjUnitIds))
    if _fallObjUnitIds then
        for _, _fallObjUnitId in pairs(_fallObjUnitIds) do
            local fallObjectUnit = self:__CheckPickUpFallObject(_unit, _fallObjUnitId)
            if fallObjectUnit then
                self:__PickUpFallObject(_unit, fallObjectUnit)
            end
        end
    end
end
------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------
-- 客户端Logic和客户端View交互
------------------------------------------------------------------------------------------------------------------------

-- 客户端View层通知Logic拾取
---@public
---@param _fallObjUnitIds number 掉落物id
---@param _uid number 拾取人
function FallObjectManager:OnClientPickUpFallObject(_uid, _fallObjUnitIds)
    --LogTools.LogByLevel(LogLevel.log, "FallObjectManager", "OnClientPickUpFallObject", "_uid", _uid, "_fallObjUnitId", _fallObjUnitId)
    -- FIXME CBT2之后去掉客户端逻辑核转发逻辑
    -- 通知服务端Logic拾取
    local msg = {
        fallObjUnitIds = _fallObjUnitIds
    }
    self.battleRoom.outputDataSource:PickUpDropFallObject(msg)
end

------------------------------------------------------------------------------------------------------------------------

function FallObjectManager:Clear()
    self:__Clear()
end

return FallObjectManager;