---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/01/26 14:20
--- Describe: unit层数据基类
---

---@class BattleUnitOnlineState : table
BattleUnitOnlineState = {
    OffLine = 0,
    OnLine = 1,
}

---@class BattleUnitBase : table
BattleUnitBase = class(nil, "BattleUnitBase")
function BattleUnitBase:ctor(_data) end

------------------------------------------------------------------------------------------------------------------------
---@protected
---@param _createUnitParam BattleCreateUnitParam
function BattleUnitBase:__Init(_unitType, _createUnitParam, _objectDic, _currentObjectId)
    ---@protected
    ---@type BattleCreateUnitParam
    self.__createParam = _createUnitParam
    self.__originalHeroSkillId = _createUnitParam.originalHeroSkillId
    --LogTools.LogByLevel(LogLevel.log, "checkReconnect BattleUnitBase __Init", "_createUnitParam.generateInfo", _createUnitParam.generateInfo, "_createUnitParam.netId", _createUnitParam.netId)
    ---@type number
    self.battleId = _createUnitParam:GetBattleId()
    self.battleRoom = GetBattleRoom(self.battleId)
    ---@private
    ---@type number
    self.__originalBlockId = _createUnitParam:GetOriginalBlockId()
    ---@protected
    ---@type boolean 是否可以换人
    self.__canChangeLeader = true
    ---@protected
    ---@type boolean 活着
    self.__alive = true
    ---@protected
    ---@type number
    self.__createTime = _createUnitParam.timeStamp
    ---@protected
    self.__unitType = _unitType
    ---配置的关卡单位ID(玩家目前默认-1)
    ---@private
    self.__levelUnitId = _createUnitParam.levelUnitId
    ---@protected
    ---@type number
    self.__netId = _createUnitParam.netId
    ---@protected
    ---@type number
    self.__stateParamId = nil
    ---@protected
    ---@type StateParameter
    local _playerStateParam = self.battleRoom.inputDataSource:GetDict("StateParameter", BattleUnitType.Player)
    self.__playerDodgeCast = _playerStateParam.dodgeCast
    ---是否处理按键缓存
    ---@protected
    ---@type boolean
    self.__dealKeyBuff = (_unitType == BattleUnitType.Player)
    ---@type BattleDefault
    local _battleDefault = self.battleRoom.inputDataSource:GetDict("BattleDefault",603);
    ---@protected
    ---@type table
    self.__cachedKeyList = _battleDefault.value4
    ---@protected
    ---@type BattleUnitComponentBase[]
    self.__componentDic = {} --组件字典

    self:__InitObjectDic(_objectDic)
    self:__InitCurrentHeroObject(_currentObjectId)
    --self:__InitUnitProps()


    ---@protected
    self.__playerId = 0

    ---@type ActionStateManage
    ---@protected
    self.__actionManager = ActionStateManage.New(self.battleId)
    self.__bornPos = Vector3.Clone(_createUnitParam.position)
    self.__bornRot = Quaternion.Clone(_createUnitParam.rotation)
    self.__actionManager:Init(self, _createUnitParam.position, _createUnitParam.rotation, _createUnitParam.velocity, _createUnitParam.scale)
    
    self.__initChange = false
    
    ---等待客户端创建成功通知
    ---@private
    ---@type boolean
    self.__clientCreateEnd = false
end

---@param _objectDic BattleObjectBase[]
function BattleUnitBase:__InitObjectDic(_objectDic)
    ---@protected
    self.__allObjectDic = _objectDic
    
    local _typeDic = {}
    for _, v in pairs(BattleObjectType) do
        _typeDic[v] = {}
    end

    for _objectId, _object in pairs(_objectDic) do
        local _table = _typeDic[_object:GetObjectType()]
        table.insert(_table, _object)

        ---连续关卡中初始死亡的情况
        ---@type BattleObjCom_Property
        local _propCom = _object:GetComponent(BattleObjectComponentType.Property)
        if _propCom and _propCom:GetHp() <= 0 then
            _object:SetDead()
        end
    end
    
    ---@protected
    self.__objectTypeDic = _typeDic

    local _heroList = _typeDic[BattleObjectType.LeaderHero]
    if _heroList then
        table.sort(_heroList, function(a, b)
            return a:GetTeamPos() < b:GetTeamPos()
        end)
        self.__heroList = _heroList
        return
    end
    
    ----LogTools.LogByLevel(LogLevel.log, "BattleUnitBase", "__InitObjectDic")
    --for i = 1, #_heroList do
    --    --LogTools.LogByLevel(LogLevel.log, "BattleUnitBase", "__InitObjectDic", "pos", _heroList[i]:GetTeamPos())
    --end
    
    _heroList = _typeDic[BattleObjectType.MonsterHero]
    if _heroList then
        table.sort(_heroList, function(a, b)  
            return a:GetTeamPos() < b:GetTeamPos()
        end)
        self.__heroList = _heroList
        return
    end
    
    _heroList = _typeDic[BattleObjectType.SummonedMons]
    if _heroList then
        --table.sort(_heroList, function(a, b)  
        --    return a:GetTeamPos() < b:GetTeamPos()
        --end)
        self.__heroList = _heroList
        return 
    end
    
    self.__heroList = {}
end

---@protected
function BattleUnitBase:__InitCurrentHeroObject(_objectId)
    ---@protected
    self.__currentHeroObjectId = _objectId
    ---@protected
    self.__currentHeroObject = self.battleRoom.battleObjectManager:GetObject(_objectId)
end

---@protected
function BattleUnitBase:__OnUpdate(_deltaTime)
    --for _, _objectDic in pairs(self.__allObjectDic) do
    --    _objectDic:OnUpdate(_deltaTime)
    --end
end

---@protected
function BattleUnitBase:__GetNetId()
    return self.__netId
end

---@protected
function BattleUnitBase:__GetLevelUnitId()
    return self.__levelUnitId
end

---@protected
---@return BattleUnitType
function BattleUnitBase:__GetUnitType()
    return self.__unitType
end

---@protected
---@param _unitType BattleUnitType
function BattleUnitBase:__CheckUnitType(_unitType, _includeSubordinate)
    if not _includeSubordinate then
        return self.__unitType == _unitType
    else
        if self.__unitType == _unitType then return true end
        if not self.__currentHeroObject then return false end
        ---@type BattleUnitCom_Subordination
        local _subordinatedCom = self:GetComponent(BattleUnitComponentType.Subordination)
        if not _subordinatedCom then return false end
        local _subordinatedUnit = _subordinatedCom:GetSubordinatedUnit()
        if not _subordinatedUnit then return false end
        return _subordinatedUnit:CheckUnitType(_unitType, _includeSubordinate)
    end
end

-- 获取玩家id
---@public
function BattleUnitBase:GetPlayerId()
    ---@type BattleUnitCom_Subordination
    local _subordinatedCom = self:GetComponent(BattleUnitComponentType.Subordination)
    if not _subordinatedCom then
        return self.__playerId
    end
    local _subordinatedUnit = _subordinatedCom:GetSubordinatedUnit()
    if not _subordinatedUnit then
        return self.__playerId
    end
    if _subordinatedUnit:GetUnitType() == BattleUnitType.Player then
        return _subordinatedUnit.__playerId
    end
    return self.__playerId
end

---@protected
function BattleUnitBase:__GetCurrentHeroObjectId()
    return self.__currentHeroObjectId
end

---@protected
---@param _objectId number
function BattleUnitBase:__GetHeroObject(_objectId)
    return self.__allObjectDic[_objectId]
end

---@protected
function BattleUnitBase:__GetCurrentHeroObject()
    return self.__currentHeroObject
end

---@public
---@return BattleObjectBase[]
function BattleUnitBase:GetHeroList()
    return self.__heroList
end

---@protected
function BattleUnitBase:__GetAllObjectDic()
    return self.__allObjectDic
end

---@protected
function BattleUnitBase:__GetTypeObjectList(_objectType)
    return self.__objectTypeDic[_objectType]
end

---@protected
function BattleUnitBase:__CheckHasObjectId(_objectId)
    return self.__allObjectDic[_objectId]
end

---@protected
---@param _unitComponent BattleUnitComponentBase
function BattleUnitBase:__AddComponent(_unitComponent)
    self.__componentDic[_unitComponent:GetComponentType()] = _unitComponent
end

---@protected
function BattleUnitBase:__RemoveComponent(_componentType)
    self.__componentDic[_componentType] = nil
end

--@protected
function BattleUnitBase:__GetComponent(_componentType)
    return self.__componentDic[_componentType]
end

---@protected
---@param _actionState ActionState
function BattleUnitBase:__EnterAction(_actionState)
    self.__actionManager:Enter(_actionState)
end

---@protected
---@param _dt number
---@param _netId number 单位Id
function BattleUnitBase:__DoAction(_dt, _netId, _heroObjId)

    if not self.__initChange then
        ---@type BattleLogicEventServiceV2
	    local _logicEventService = self:GetBattleRoom().battleLogicEventService
        _logicEventService:OnTriggerChangeLeaderEvent(-1, self.__currentHeroObjectId, self.__netId)
        self.__initChange = true
    end
    
    --LuaProfiler.BeginSample("__RecoverSprint")
    --self:__RecoverSprint(_dt)
    --LuaProfiler.EndSample("__RecoverSprint")

    --LuaProfiler.BeginSample("__unitProp")
    --if self.__unitPropDirty then
    --    self:__SnapUnitProps()
    --end
    --LuaProfiler.EndSample("__unitProp")

    --LuaProfiler.BeginSample("__objectUpdate")
    for _, v in pairs(self.__allObjectDic) do
        v:OnUpdate(_dt)
    end
    --LuaProfiler.EndSample("__objectUpdate")

    --LuaProfiler.BeginSample("__unitcComUpdate")
    for _, v in pairs(self.__componentDic) do
        v:Update(_dt)
    end
    --LuaProfiler.EndSample("__unitcComUpdate")

	--LuaProfiler.BeginSample("__actionManager")
    self.__actionManager:DoAction(_dt, _netId, _heroObjId)
    --LuaProfiler.EndSample("__actionManager")

    --LuaProfiler.BeginSample("__DoKeyBuffer")
    if self.__dealKeyBuff then
        self:__DoKeyBuffer()
    end
    --LuaProfiler.EndSample("__DoKeyBuffer")
end

---@protected
---@param _position Vector3 位置
---@param _moveDir Vector3 移动方向
function BattleUnitBase:BattleUnitHitWall(_position,_moveDir)
    self.__actionManager:BattleUnitHitWall(_position,_moveDir)
end

---@protected
---@param _dt number
---@param _netId number 单位Id
function BattleUnitBase:__DoMoveAction(_dt, _netId, _heroObjId)
    self.__actionManager:DoMoveAction(_dt, _netId, _heroObjId)
end

---处理按键缓存
---@protected
function BattleUnitBase:__DoKeyBuffer()
    ---@type BattleUnitCom_UnitProp
    local _unitPropCom = self.__componentDic[BattleUnitComponentType.UnitProp]
    if not _unitPropCom then return end
    
    local sprintCur = _unitPropCom:GetPropByName(BattlePropertyEnum.Sprint_En_Cur)
    local dodgeCast = self.__playerDodgeCast * (1 + self:GetPropertyByName(BattlePropertyEnum.Dash_En_Consume));

    if self.__actionManager:HasExitAction() or
            self:GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Skill):HasSkillCDOver() or sprintCur > dodgeCast then
        for _, key in pairs(self.__cachedKeyList) do
            if self.battleRoom.battleLogicEventService:CheckKeyPressEvent(self:GetNetId(), key,true) then
                self.battleRoom.battleUnitManager:PlayerPressKey(self:GetPlayerId(),key,true,self.moveParam,self.cameraParam,self.__actionManager.hitWall,0,true,nil);
            end
        end
    end
end

---@protected
---@param _frameId number 帧号
---@param _objectId number 角色id
---@param _outputData table 输出数据，对应msg.proto的BattleUnitMoveOutput
function BattleUnitBase:__ClientReceiveUnitMoveData(_frameId, _objectId, _outputData)
    -- 位置信息同步同步
    if _outputData.moveInfo then
        local _actionManager = self.__actionManager
        _actionManager:SetPosition(Vector3.Clone(_outputData.moveInfo.position))
        _actionManager:SetRotation(Quaternion.Clone(_outputData.moveInfo.rotation))
        _actionManager:SetVelocity(Vector3.Clone(_outputData.moveInfo.v))
    end
end

---@protected
---@param _frameId number 帧号
---@param _objectId number 角色id
---@param _outputData table 输出数据，对应msg.proto的BattleUnitChangeData
function BattleUnitBase:__ClientReceiveUnitChangeData(_frameId, _objectId, _outputData)
    -- 玩家层属性同步
    ---@type BattleUnitCom_UnitProp
    local _unitPropCom = self.__componentDic[BattleUnitComponentType.UnitProp]
    if _unitPropCom then
        _unitPropCom:__onReceiveChangeUnitProps(_outputData.changeUnitProps)
    end
    
    -- 属性输出同步
    if _outputData.changeProps then
        ---@type BattleObjectBase
        local _battleObject = self.battleRoom.battleObjectManager:GetObject(_objectId)
        ---@type BattleObjCom_Property
        local _componentProperty = _battleObject:GetComponent(BattleObjectComponentType.Property)
        _componentProperty:ClientReceiveOutputData(_outputData.changeProps)
    end
    
    -- 分块输出同步
    if _outputData.blockState then
        ---@type BattleObjectBase
        local _battleObject = self.battleRoom.battleObjectManager:GetObject(_objectId)
        ---@type BattleObjCom_Block
        local _blockCom = _battleObject:GetComponent(BattleObjectComponentType.Block)
        _blockCom:OnReceiveChangeData(_outputData.blockState)
    end
    
    -- 交互状态同步
    if _outputData.handleState then
        ---@type BattleUnitCom_Collector
        local _collectorCom = self:GetComponent(BattleUnitComponentType.Collector)
        if _collectorCom then
            _collectorCom:OnReceiveChangeData(_outputData.handleState)
        end
    end

    if _outputData.buffTriggerInfo and #_outputData.buffTriggerInfo > 0 then
        local _battleObjectBuffTrigger_L2V = {
            netId = self:GetNetId(),
            objectId = _objectId,
            buffTriggerInfo = _outputData.buffTriggerInfo
        }
        COMMAND.SendCommandToClientView(PROTO_CODE_ENUM.BATTLE_OBJECT_BUFF_TRIGGER_L2V:GetId(), PROTO_CODE_ENUM.BATTLE_OBJECT_BUFF_TRIGGER_L2V:GetName(), _battleObjectBuffTrigger_L2V);
    end

    if _outputData.unitTagChange and #_outputData.unitTagChange > 0 then
        ---@type BattleUnitCom_TagSelector
        local _tagCom = self:GetComponent(BattleUnitComponentType.TagSelector)
        _tagCom:ClientReceiveTagChange(_outputData.unitTagChange)
    end
    
    if _outputData.unitTargetChange then
        self.battleRoom.outputDataSource:UnitTargetChangeL2V({info = _outputData.unitTargetChange})
    end

	if _outputData.unitShieldInfo then
		---@type BattleUnitCom_CoverShield
		local _shieldCom = self:GetComponent(BattleUnitComponentType.CoverShield)
		if _shieldCom then
			_shieldCom:OnClientReceiveSyncInfo(_outputData.unitShieldInfo)
		end
	end

    if _outputData.aimMode then
        local _battleObjectChangeAimMode_L2V = {
            netId = self:GetNetId(),
            objectId = _objectId,
        }
        if _outputData.aimMode.aimMode then
            _battleObjectChangeAimMode_L2V.aimMode = _outputData.aimMode.aimMode;
        end
        if _outputData.aimMode.holdTime then
            _battleObjectChangeAimMode_L2V.holdTime = _outputData.aimMode.holdTime;
        end
        COMMAND.SendCommandToClientView(PROTO_CODE_ENUM.BATTLE_OBJECT_CHANGE_AIM_MODE_L2V:GetId(), PROTO_CODE_ENUM.BATTLE_OBJECT_CHANGE_AIM_MODE_L2V:GetName(), _battleObjectChangeAimMode_L2V);
    end
end

---@protected
---@param _frameId number 帧号
---@param _objectId number 角色id
---@param _outputData table 输出数据，对应msg.proto的BattleUnitChangeData
function BattleUnitBase:__ClientReceiveUnitKeyData(_frameId, _objectId, _outputData)
    -- 元素变化同步
    if _outputData.elementChange then
        ---@type BattleObjectBase
        local _battleObject = self.battleRoom.battleObjectManager:GetObject(_objectId)
        ---@type BattleObjCom_Element_V2
        local _componentElement = _battleObject:GetComponent(BattleObjectComponentType.Element)
        if _componentElement then
            _componentElement:ClientReceiveOutputData(_outputData.elementChange)
        end
    end

    -- 掉落物同步
    if _outputData.fallObjectChange then
        ---@type BattleObjectBase
        local _battleObject = self.battleRoom.battleObjectManager:GetObject(_objectId)
        ---@type BattleObjCom_Drop
        local _dropElement = _battleObject:GetComponent(BattleObjectComponentType.Drop)
        if _dropElement then
            _dropElement:ClientReceiveOutputData(_outputData.fallObjectChange)
        end
    end
    
    -- 弹幕消息
    if _outputData.barrageInfo then
        --LogTools.LogByLevel(LogLevel.log,"CheckBarrage", "BattleUnitBase","__ClientReceiveUnitKeyData", "netId", self:GetNetId(), "_outputData.barrageInfo", dumpTableEx(_outputData.barrageInfo))
        self:GetBattleRoom().ejectorManager:OnCreateEmitterS2C(_outputData.netId, _outputData.objId, _outputData.barrageInfo.CreateEmitterData)
        --self:GetBattleRoom().ejectorManager:OnDestroyEmitterS2C(_outputData.barrageInfo.DestroyEmitterId)
        --self:GetBattleRoom().ejectorManager:OnStopEmitterS2C(_outputData.barrageInfo.StopEmitterId)
        --self:GetBattleRoom().ejectorManager:OnBarrageTrigEventS2C(_outputData.barrageInfo.BarrageEventData)
    end

    -- 技能消息
    if _outputData.skillInfo then
        local skillInfo = {};
        skillInfo.netId = _outputData.netId;
        skillInfo.objId = _outputData.objId;
        skillInfo.skillInfo = _outputData.skillInfo;
        COMMAND.SendCommandToClientView(PROTO_CODE_ENUM.BATTLE_UNIT_SKILL_DATA_L2V:GetId(), PROTO_CODE_ENUM.BATTLE_UNIT_SKILL_DATA_L2V:GetName(),skillInfo);
    end

    -- buff消息
    if _outputData.buffInfo then
        local buffInfo = {};
        buffInfo.netId = _outputData.netId;
        buffInfo.objId = _outputData.objId;
        buffInfo.buffInfo = _outputData.buffInfo;
        COMMAND.SendCommandToClientView(PROTO_CODE_ENUM.BATTLE_UNIT_BUFF_DATA_L2V:GetId(), PROTO_CODE_ENUM.BATTLE_UNIT_BUFF_DATA_L2V:GetName(),buffInfo);
    end

    -- 状态消息
    if _outputData.stateChange then
        local stateChange = {};
        stateChange.netId = _outputData.netId;
        stateChange.objId = _outputData.objId;
        stateChange.stateChange = _outputData.stateChange;
        COMMAND.SendCommandToClientView(PROTO_CODE_ENUM.BATTLE_UNIT_STATE_CHANGE_L2S:GetId(), PROTO_CODE_ENUM.BATTLE_UNIT_STATE_CHANGE_L2S:GetName(),stateChange);

        for i, _state in pairs(_outputData.stateChange) do
            if _state.stateId == ChangeLeaderActionState:GetId() and _state.isLeave == 0 then
                --LogTools.LogByLevel(LogLevel.logErr, "111111111111111111111111111111")
                self:GetBattleRoom().battleUnitManager:PlayerChangeLeaderS2C(_outputData.netId, stateChange.objId)
            end
        end
    end

    -- 技能CD消息
    if _outputData.skillCoolDown then
        local battleUnitSkillCoolDownData_L2V = {};
        battleUnitSkillCoolDownData_L2V.netId = _outputData.netId;
        battleUnitSkillCoolDownData_L2V.objId = _outputData.objId;
        battleUnitSkillCoolDownData_L2V.skillCoolDown = _outputData.skillCoolDown;
        COMMAND.SendCommandToClientView(PROTO_CODE_ENUM.BATTLE_UNIT_SKILL_COOL_DOWN_DATA_L2V:GetId(), PROTO_CODE_ENUM.BATTLE_UNIT_SKILL_COOL_DOWN_DATA_L2V:GetName(),battleUnitSkillCoolDownData_L2V);
    end

    -- 关卡目标消息
    if _outputData.levelTargetData then
        local levelTarget_L2V = {}
        levelTarget_L2V.id = _outputData.levelTargetData.id;
        levelTarget_L2V.index = _outputData.levelTargetData.index;
        levelTarget_L2V.curProgress = _outputData.levelTargetData.curProgress;
        levelTarget_L2V.maxProgress = _outputData.levelTargetData.maxProgress;
        COMMAND.SendCommandToClientView(PROTO_CODE_ENUM.LEVEL_TARGET_L2V:GetId(), PROTO_CODE_ENUM.LEVEL_TARGET_L2V:GetName(), levelTarget_L2V)
    end
end

---@protected
-- 更换当前使用的object
---@param _oldObjectId number
---@param _newObjectId number
function BattleUnitBase:__OnChangeCurrentHeroObject(_oldObjectId, _newObjectId)
end

---@protected
---@return ActionStateManage
function BattleUnitBase:__GetActionManager()
    return self.__actionManager
end

function BattleUnitBase:__SetStateParamId(_id)
    self.__stateParamId = _id
    self.__actionManager:OnStateParamIdChanged(_id)
end

---@protected
function BattleUnitBase:__SetDead(_deadType)
    if not self.__alive then return end
    self.__alive = false
    for i, v in pairs(self.__componentDic) do
        v:OnDead(_deadType)
    end
    
    local _BattleUnitStateChange_L2S = {}
    _BattleUnitStateChange_L2S.netId = self:GetNetId()
    _BattleUnitStateChange_L2S.objId = self:GetCurrentHeroObjectId()
    local _stateChange = {}
    _stateChange.isLeave = 0
    _stateChange.stateId = DeadActionState:GetId()
    _stateChange.param = _deadType
    _BattleUnitStateChange_L2S.stateChange = {_stateChange}
    self.battleRoom.outputDataSource:BattleUnitStateChangeL2V(_BattleUnitStateChange_L2S)
end

---@protected
function BattleUnitBase:__Clear()
    self.__alive = nil
    for i, v in pairs(self.__componentDic) do
        if v.Clear then
            v:Clear()
        end
    end

    self.__unitType = nil
    self.__netId = nil
    self.__originalBlockId = nil
    self.__stateParamId = nil
    self.__levelUnitId = nil
    self.__actionManager = nil
    self.__currentHeroObjectId = nil
    self.__currentHeroObject = nil
    self.__allObjectDic = nil
    self.__objectTypeDic = nil
    self.__componentDic = nil
    --self.__unitPropDic = nil
    --self.__changedPropDic = nil
	self.__createParam = nil
    self.__unitPropDirty = nil
    self.__initChange = nil
end

---------------------------------------------------属性相关--------------------------------------------------------------
-----检查是否是记在Unit层的属性
-----@public
--function BattleUnitBase:CheckUnitProp(_str)
--    -- objectCom的Init设置属性时，还没有unitPropDic
--    if self.__unitPropDic == nil then
--        return false
--    end
--    return self.__unitPropDic[_str] ~= nil
--end

---@public
--function BattleUnitBase:SetUnitPropByName(_str, _value)
--    --LogTools.LogByLevel(LogLevel.log, "check sprint", "BattleUnitBase:SetUnitPropByName 1", "_str", _str, "_value", _value)
--    if _str == BattlePropertyEnum.Sprint_En_Cur then
--        local _maxSprint = self.__unitPropDic[BattlePropertyEnum.Sprint_En_Max]
--        if _value > _maxSprint then _value = _maxSprint end
--        if _value < 0 then _value = 0 end
--    end
--    --LogTools.LogByLevel(LogLevel.log, "check sprint", "BattleUnitBase:SetUnitPropByName 2", "_str", _str, "_value", _value)
--    self.__unitPropDic[_str] = _value
--    self.__changedPropDic[ProtoEnumTool.GetPropertyId(_str)] = _value
--    self.__unitPropDirty = true
--end

-----@public
--function BattleUnitBase:GetUnitPropByName(_str)
--    local _value = self.__unitPropDic[_str]
--    if not _value then return nil end
--    return _value
--end

--
--function BattleUnitBase:IncreaseUnitPropByName(_str, _value)
--    local _prop = self:GetUnitPropByName(_str)
--    self:SetUnitPropByName(_str, _prop + _value)
--end
--
----
--function BattleUnitBase:DecreaseUnitPropByName(_str, _value)
--    local _prop = self:GetUnitPropByName(_str)
--    --LogTools.LogByLevel(LogLevel.log, "check sprint", "BattleUnitBase:DecreaseUnitPropByName", "_prop", _prop, "_value", _value)
--    self:SetUnitPropByName(_str, _prop - _value)
--end

---@public
function BattleUnitBase:GetPropertyByName(_name)
    ----LogTools.LogByLevel(LogLevel.log, "BattleUnitBase GetPropertyByName ", "xxxx", "_name", _name)
    ---@type BattleUnitCom_UnitProp
    local _unitPropCom = self.__componentDic[BattleUnitComponentType.UnitProp]
    if _unitPropCom then
        local _unitProp = _unitPropCom:GetPropByName(_name)
        if _unitProp then return _unitProp end
    end

    if not self.__currentHeroObject then return 0 end
    ----LogTools.LogByLevel(LogLevel.log, "BattleUnitBase GetPropertyByName ", "xxxx", "1")
    ---@type BattleObjCom_Property
    local _propCom = self.__currentHeroObject:GetComponent(BattleObjectComponentType.Property)
    if not _propCom then return 0 end
    return _propCom:GetPropertyByName(_name)
end

---@public
function BattleUnitBase:GetPropertyById(_id)
    local _unitPropCom = self.__componentDic[BattleUnitComponentType.UnitProp]
    if _unitPropCom then
        local _unitProp = _unitPropCom:GetPropByName(ProtoEnumTool.GetPropertyKey(_id))
        if _unitProp then return _unitProp end
    end

    if not self.__currentHeroObject then return 0 end
    ---@type BattleObjCom_Property
    local _propCom = self.__currentHeroObject:GetComponent(BattleObjectComponentType.Property)
    if not _propCom then return 0 end
    return _propCom:GetPropertyById(_id)
end

------------------------------------------------------------------------------------------------------------------------
---@public
---@param _unitType BattleUnitType
---@param _createUnitParam BattleCreateUnitParam
function BattleUnitBase:Init(_unitType, _createUnitParam, _objectDic, _currentObjectId, _levelUnitId)
    self:__Init(_unitType, _createUnitParam, _objectDic, _currentObjectId, _levelUnitId)
end

---添加关卡初始化buff和被动
---@public
function BattleUnitBase:AddLevelInitBuffAndTalent()
end

---添加单位自身携带的默认buff
function BattleUnitBase:AddUnitDefaultBuff()

end

---@public
function BattleUnitBase:OnUpdate(_deltaTime)
    self:__OnUpdate(_deltaTime)
end

---@public
function BattleUnitBase:GetNetId()
    return self:__GetNetId()
end

---@public
function BattleUnitBase:GetLevelUnitId()
    return self:__GetLevelUnitId()
end

---@public
---@return BattleUnitType
function BattleUnitBase:GetUnitType()
    return self:__GetUnitType()
end

---@public
---@param _unitType BattleUnitType
---@param _includeSubordinate boolean 是否包括宿主（二者只要有一个满足就可以）
function BattleUnitBase:CheckUnitType(_unitType, _includeSubordinate)
    return self:__CheckUnitType(_unitType, _includeSubordinate)
end

---@public
---@param _objectId number
-- 根据id获取使用的object
function BattleUnitBase:GetHeroObject(_objectId)
    return self:__GetHeroObject(_objectId)
end

---@public
-- 获取当前使用的object的唯一id
---@return number
function BattleUnitBase:GetCurrentHeroObjectId()
    return self:__GetCurrentHeroObjectId()
end

---@public
-- 获取当前使用的object
---@return BattleObjectBase
function BattleUnitBase:GetCurrentHeroObject()
    return self:__GetCurrentHeroObject()
end

---@public
-- 更换当前使用的object
function BattleUnitBase:ChangeCurrentHeroObject(_objectId)
    local _oldObjectId = self:GetCurrentHeroObjectId()
    self:__InitCurrentHeroObject(_objectId)
    local _newObjectId = self:GetCurrentHeroObjectId()
    self:__OnChangeCurrentHeroObject(_oldObjectId, _newObjectId)
end

---@public
---@return BattleObjectBase[]
function BattleUnitBase:GetAllObjectDic()
    return self:__GetAllObjectDic()
end

---@public
---@param _objectType BattleObjectType
---@return BattleObjectBase[]
function BattleUnitBase:GetTypeObjectList(_objectType)
    return self:__GetTypeObjectList(_objectType)
end

---@public
---@return BattleObjectBase
function BattleUnitBase:CheckHasObjectId(_objectId)
    return self:__CheckHasObjectId(_objectId)
end

---@public
function BattleUnitBase:CheckOnlineState(_onlineState)
    return true
end

---@public
---@return Vector3
function BattleUnitBase:GetBornPos()
    return self.__bornPos
end

---@public
---@return Quaternion
function BattleUnitBase:GetBornRot()
    return self.__bornRot
end

---@public
function BattleUnitBase:GetStateParamId()
    if self.__stateParamId then return self.__stateParamId end
    return self:GetCurrentHeroObject():GetStateParamId()
end

---@public
function BattleUnitBase:GetDataInstanceXls()
	local _heroObj = self:GetCurrentHeroObject()
	return _heroObj and _heroObj:GetDataInstanceXls()
end

---@public
function BattleUnitBase:GetDataTemplateXls()
	local _heroObj = self:GetCurrentHeroObject()
	return _heroObj and _heroObj:GetDataTemplateXls()
end

---获取半径
---@public
function BattleUnitBase:GetCollisionRadius()
    local _currentObject = self:GetCurrentHeroObject()
    if not _currentObject then return 0.1 end
    ---@type BattleObjCom_Config
    local _configCom = _currentObject:GetComponent(BattleObjectComponentType.Config)
    if not _configCom then return 0.1 end
    return _configCom:GetCollisionRadius()
end

---@public
---@param _unitComponent BattleUnitComponentBase
-- 添加组件
function BattleUnitBase:AddComponent(_unitComponent)
    self:__AddComponent(_unitComponent)
end

---@public
---@param _componentType BattleUnitComponentType
-- 删除组件
function BattleUnitBase:RemoveComponent(_componentType)
    self:__RemoveComponent(_componentType)
end

---@public
---@return BattleUnitComponentBase
-- 获取组件
function BattleUnitBase:GetComponent(_componentType)
    return self:__GetComponent(_componentType)
end

---@public
---@param _actionState ActionState
function BattleUnitBase:EnterAction(_actionState)
    self:__EnterAction(_actionState)
end

---@public
---@param _dt number
function BattleUnitBase:DoAction(_dt)
    self:__DoAction(_dt, self.__netId, self.__currentHeroObjectId)
end

---@public
---@param _dt number
function BattleUnitBase:DoMoveAction(_dt)
    self:__DoMoveAction(_dt, self.__netId, self.__currentHeroObjectId)
end

---@public
---@param _frameId number 帧号
---@param _objectId number 角色id
---@param _outputData table 输出数据，对应msg.proto的BattleUnitMoveOutput
function BattleUnitBase:ClientReceiveUnitMoveData(_frameId, _objectId, _outputData)
    self:__ClientReceiveUnitMoveData(_frameId, _objectId, _outputData)
end

---@public
---@param _frameId number 帧号
---@param _objectId number 角色id
---@param _outputData table 输出数据，对应msg.proto的BattleUnitChangeData
function BattleUnitBase:ClientReceiveUnitChangeData(_frameId, _objectId, _outputData)
    self:__ClientReceiveUnitChangeData(_frameId, _objectId, _outputData)
end

---@public
---@param _frameId number 帧号
---@param _objectId number 角色id
---@param _outputData table 输出数据，对应msg.proto的BattleUnitKeyData
function BattleUnitBase:ClientReceiveUnitKeyData(_frameId, _objectId, _outputData)
    self:__ClientReceiveUnitKeyData(_frameId, _objectId, _outputData)
end

---@public
---@return ActionStateManage
function BattleUnitBase:GetActionManager()
    return self:__GetActionManager()
end

---开启AI
---@public
function BattleUnitBase:StartAi()
    ---@type BattleUnitCom_Behav
    local _behavCom = self:GetComponent(BattleUnitComponentType.Behav)
	if not _behavCom then return end
	_behavCom:StartAi()
end

---获取状态参数表ID
---@public
function BattleUnitBase:SetStateParamId(_id)
    self:__SetStateParamId(_id)
end

---@public
---@return BattleCreateUnitParam
function BattleUnitBase:GetCreateParam()
    return self.__createParam
end

---@public
function BattleUnitBase:GetOriginalBlockId()
    return self.__originalBlockId or 0
end

---设置死亡
---@public
function BattleUnitBase:SetDead(_deadType)
    self:__SetDead(_deadType)
end

---检查当前是否存活
---@public
function BattleUnitBase:CheckAlive()
    --LogTools.LogByLevel(LogLevel.log, "BattleUnitBase", "CheckAlive", "self.__alive", self.__alive)
    return self.__alive == true
end

---启用换人
---@public
function BattleUnitBase:EnableChangeLeader()
    self.__canChangeLeader = true
end

---禁用换人
---@public
function BattleUnitBase:DisableChangeLeader()
    self.__canChangeLeader = false
end

---禁用换人
---@public
function BattleUnitBase:CheckChangeLeaderEnable()
    return self.__canChangeLeader
end

---@public
function BattleUnitBase:GetBattleId()
    return self.battleId
end

---@public
---@return BattleRoom
function BattleUnitBase:GetBattleRoom()
    return self.battleRoom
end

---@public
function BattleUnitBase:GetOriginalGenerateInfo()
    return self.__createParam.generateInfo
end

---有些unit是通过技能创建出来的
---@public
function BattleUnitBase:GetOriginalHeroSkillId()
    return self.__originalHeroSkillId
end

---@public
function BattleUnitBase:SetClientCreateEnd()
    self.__clientCreateEnd = true
end

---@public
function BattleUnitBase:CheckClientCreateEnd()
    return self.__clientCreateEnd
end

---@public
function BattleUnitBase:Clear()
    self:__Clear()
end

------------------------------------------------------------------------------------------------------------------------
---
---@public
function BattleUnitBase:GetL2SMessageData()
    return {}
end


---服务器逻辑核生成用于发送给前端逻辑核的全量信息
---@public
---@return table msg.BattleUnitCreateSyncInfo
function BattleUnitBase:GetCreateSyncMessage_S2C()
    return self:__GetCreateSyncMessage_S2C()
end
---@protected
function BattleUnitBase:__GetCreateSyncMessage_S2C()
    local _BattleUnitCreateSyncInfo ={}
    _BattleUnitCreateSyncInfo.netId = self.__netId
	_BattleUnitCreateSyncInfo.originalGenerateInfo = self:GetOriginalGenerateInfo()
    --LogTools.LogByLevel(LogLevel.log, "checkReconnect BattleUnitBase GetCreateSyncMessage_S2C", "_BattleUnitCreateSyncInfo.originalGenerateInfo", _BattleUnitCreateSyncInfo.originalGenerateInfo)
    --可能有一些零散的unit信息
    _BattleUnitCreateSyncInfo.alive = self.__alive
    _BattleUnitCreateSyncInfo.createTime = self.__createTime
    --unit层组件里的信息
    local _unitPropCom = self.__componentDic[BattleUnitComponentType.UnitProp]
    _BattleUnitCreateSyncInfo.unitProps = _unitPropCom and _unitPropCom:GetCreateSyncMessage_S2C()
    local _unitTagCom = self.__componentDic[BattleUnitComponentType.TagSelector]
    _BattleUnitCreateSyncInfo.unitTags = _unitTagCom and _unitTagCom:GetCreateSyncMessage_S2C()
    local _unitBuffCom = self.__componentDic[BattleUnitComponentType.Buff]
    _BattleUnitCreateSyncInfo.unitBuffs = _unitBuffCom and _unitBuffCom:GetCreateSyncMessage_S2C()
    
    --收集actionStateManager的信息
    _BattleUnitCreateSyncInfo.stateChange = self.__actionManager:GetCreateSyncMessage_S2C();

    --收集当前Unit下所有Obj的信息
    _BattleUnitCreateSyncInfo.ObjectInfos = {}
    for _, _obj in pairs(self.__allObjectDic) do
        table.insert(_BattleUnitCreateSyncInfo.ObjectInfos, _obj:GetCreateSyncMessage_S2C())
    end
    
    return _BattleUnitCreateSyncInfo
end

---前端逻辑核用服务器发来的全量信息刷新自身数据
---@public
---@param _BattleUnitCreateSyncInfo table msg.BattleUnitCreateSyncInfo
function BattleUnitBase:OnReceiveCreateSyncMessage_S2C(_BattleUnitCreateSyncInfo)
    self:__OnReceiveCreateSyncMessage_S2C(_BattleUnitCreateSyncInfo)
end
---@protected
function BattleUnitBase:__OnReceiveCreateSyncMessage_S2C(_BattleUnitCreateSyncInfo)
    self.__alive = _BattleUnitCreateSyncInfo.alive
    self.__createTime = _BattleUnitCreateSyncInfo.createTime
    
    --刷新unit层组件里的信息
    local _unitPropCom = self.__componentDic[BattleUnitComponentType.UnitProp]
    if _unitPropCom then
        _unitPropCom:OnReceiveCreateSyncMessage_S2C(_BattleUnitCreateSyncInfo.unitProps)
    end
    local _unitTagCom = self.__componentDic[BattleUnitComponentType.TagSelector]
    if _unitTagCom then
        _unitTagCom:OnReceiveCreateSyncMessage_S2C(_BattleUnitCreateSyncInfo.unitTags)
    end
    local _unitBuffCom = self.__componentDic[BattleUnitComponentType.Buff]
    if _unitBuffCom then
        _unitBuffCom:OnReceiveCreateSyncMessage_S2C(_BattleUnitCreateSyncInfo.unitBuffs)
    end
    
    --刷新actionStateManager的信息B
    self.__actionManager:OnReceiveCreateSyncMessage_S2C(_BattleUnitCreateSyncInfo.stateChange)
    
    --刷新当前Unit下所有Obj的信息
    for _, _battleObjectCreateSyncInfo in pairs(_BattleUnitCreateSyncInfo.ObjectInfos) do
        local _obj = self.__allObjectDic[_battleObjectCreateSyncInfo.objId]
        _obj:OnReceiveCreateSyncMessage_S2C(_battleObjectCreateSyncInfo)
    end
end

---前端逻辑核生成用于发送给表现的层全量信息
---@public
function BattleUnitBase:GetCreateSyncMessage_L2V(_BattleUnitCreateSyncInfo)
    return self:__GetCreateSyncMessage_L2V(_BattleUnitCreateSyncInfo)
end
---@protected
function BattleUnitBase:__GetCreateSyncMessage_L2V(_BattleUnitCreateSyncInfo)
    local _BattleUnitCreateSyncInfo_L2V = {}
    _BattleUnitCreateSyncInfo_L2V.netId = self.__netId
    _BattleUnitCreateSyncInfo_L2V.unitType = self.__unitType
    if self.__unitType == BattleUnitType.Player then
        _BattleUnitCreateSyncInfo_L2V.playerUnitInfo = self:GetL2SMessageData()
    elseif self.__unitType == BattleUnitType.Monster then
        _BattleUnitCreateSyncInfo_L2V.monsterUnitInfo = self:GetL2SMessageData()
    elseif self.__unitType == BattleUnitType.AreaTrigger then
        _BattleUnitCreateSyncInfo_L2V.areaUnitInfo = self:GetL2SMessageData()
    elseif self.__unitType == BattleUnitType.SummonedMons then
        _BattleUnitCreateSyncInfo_L2V.summonedUnitInfo = self:GetL2SMessageData()
    elseif self.__unitType == BattleUnitType.SceneObj then
        _BattleUnitCreateSyncInfo_L2V.sceneObjUnitInfo = self:GetL2SMessageData()
    elseif self.__unitType == BattleUnitType.TargetPoint then
        _BattleUnitCreateSyncInfo_L2V.targetPointUnitInfo = self:GetL2SMessageData()
    elseif self.__unitType == BattleUnitType.Shield then
        _BattleUnitCreateSyncInfo_L2V.shieldUnitInfo = self:GetL2SMessageData()
    end
    _BattleUnitCreateSyncInfo_L2V.objectInfos = {}
    local _objSyncInfos = _BattleUnitCreateSyncInfo.ObjectInfos or {}
    for _objId, _obj in pairs(self.__allObjectDic) do
        local _BattleObjectCreateSyncInfo = self:__choseObjectCreateSyncInfo(_objId, _objSyncInfos)
        table.insert(_BattleUnitCreateSyncInfo_L2V.objectInfos, _obj:GetCreateSyncMessage_L2V(_BattleObjectCreateSyncInfo))
    end
    _BattleUnitCreateSyncInfo_L2V.stateChange = self.__actionManager:GetCreateSyncMessage_L2V(_BattleUnitCreateSyncInfo)
    --unit组件里的信息
    local _tagCom = self.__componentDic[BattleUnitComponentType.TagSelector]
    _BattleUnitCreateSyncInfo_L2V.unitTags = _tagCom and _tagCom:GetCreateSyncMessage_L2V(_BattleUnitCreateSyncInfo)
    --todo:
    local _buffCom = self.__componentDic[BattleUnitComponentType.Buff]
    _BattleUnitCreateSyncInfo_L2V.unitBuffs = _buffCom and _buffCom:GetCreateSyncMessage_L2V(_BattleUnitCreateSyncInfo)
    
    
    return _BattleUnitCreateSyncInfo_L2V
end

---@protected
---@param _BattleObjectCreateSyncInfoList table msg.BattleObjectCreateSyncInfo[]
---@return table msg.BattleObjectCreateSyncInfo
function BattleUnitBase:__choseObjectCreateSyncInfo(_objId, _BattleObjectCreateSyncInfoList)
    for _, _BattleObjectCreateSyncInfo in pairs(_BattleObjectCreateSyncInfoList) do
        if _BattleObjectCreateSyncInfo.objId == _objId then
            return _BattleObjectCreateSyncInfo
        end
    end
    return nil
end

---死亡换人
---暂时只对玩家有效
---@public
---@return boolean
function BattleUnitBase:TryObjectDeadChangeLeader()
    local _list = self:GetTypeObjectList(BattleObjectType.LeaderHero)
    ---@type BattleObjectBase
    local _heroObj
    for i = 1, #_list do
        _heroObj = _list[i]
        ---@type BattleObjCom_Property
        local _subPropCom = _heroObj:GetComponent(BattleObjectComponentType.Property)
        if _subPropCom and _subPropCom:GetPropertyByName(BattlePropertyEnum.Hp_Cur) > 0 then
            self:GetBattleRoom().battleUnitManager:PlayerChangeLeaderInput(self:GetNetId(), _heroObj:GetObjectId(), PlayerChangeLeaderInputType.ObjDead, true)
            return true
        end
    end
    return false
end

return BattleUnitBase