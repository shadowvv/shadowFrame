---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/07/04 11:42
--- Describe: 战场区域obj
---

---@class BattleObject_AreaTrigger : BattleObjectBase
BattleObject_AreaTrigger = class(BattleObjectBase, "BattleObject_AreaTrigger")

---@public
---@param _battleId number
---@param _parentUnit BattleUnitBase
---@param _createBattleUnitParam BattleCreateUnitParam
function BattleObject_AreaTrigger:Init(_battleId, _objectId, _parentUnit, _createBattleUnitParam)
    ----LogTools.LogByLevel(LogLevel.log, "BattleObject_AreaTrigger", "Init")
	self:__Init(_battleId, _parentUnit, _objectId, _createBattleUnitParam.dicId)
    self:__InitComponents(_createBattleUnitParam)
end

---@protected
---@param _createBattleUnitParam BattleCreateUnitParam
function BattleObject_AreaTrigger:__InitComponents(_createBattleUnitParam)
    ---@type BattleObjectComponentCreator
	local componentCreator = self:GetBattleRoom().battleObjectManager:GetObjectComponentCreator()

    ---@type BattleObjCom_Config
	local _cfgCom = componentCreator:__CreateComponent(BattleObjectComponentType.Config)
	_cfgCom:Init(self)
    self:AddComponent(_cfgCom)
	
	---@type BattleObjCom_AreaTrigger
	local _areaCom = componentCreator:__CreateComponent(BattleObjectComponentType.AreaTrigger)
	_areaCom:Init(self, _createBattleUnitParam)
	self:AddComponent(_areaCom)

    -----@type BattleObjCom_Property
	local _propCom = componentCreator:__CreateComponent(BattleObjectComponentType.Property)
	_propCom:Init(self, _cfgCom:GetInstanceXls(), _createBattleUnitParam) --区域的属性暂时需要先读区域自身的Instance表
    self:AddComponent(_propCom)
	
	---@type BattleObjCom_LifeCtrl
    local _lifeCom = componentCreator:__CreateComponent(BattleObjectComponentType.LifeCtrl)
    _lifeCom:Init(self, _createBattleUnitParam)
    self:AddComponent(_lifeCom)
	
	---@type BattleObjCom_Block
	local _blockCom = componentCreator:__CreateComponent(BattleObjectComponentType.Block)
	_blockCom:Init(self)
	self:AddComponent(_blockCom)

    -----@type BattleObjCom_Element_V2
    local _elementCom = componentCreator:__CreateComponent(BattleObjectComponentType.Element)
    _elementCom:Init(self)
    self:AddComponent(_elementCom)
	--
    -----@type BattleObjCom_Buff
    local _buffCom = componentCreator:__CreateComponent(BattleObjectComponentType.Buff)
    _buffCom:Init(self)
    self:AddComponent(_buffCom)
	
	---@type BattleObjCom_BoundaryListener
	local _boundaryListener = componentCreator:__CreateComponent(BattleObjectComponentType.BoundaryListener)
	_boundaryListener:Init(self, _createBattleUnitParam)
	self:AddComponent(_boundaryListener)
	
	---@type BattleObjCom_BoundaryTrigger
	local _boundaryTrigger = componentCreator:__CreateComponent(BattleObjectComponentType.BoundaryTrigger)
	_boundaryTrigger:Init(self, _createBattleUnitParam)
	self:AddComponent(_boundaryTrigger)
	
	--
    -----@type BattleObjCom_HitValue
    --local _hitValueCom = componentCreator:__CreateComponent(BattleObjectComponentType.HitValue)
    --_hitValueCom:Init(self, _leaderBattleInfo)
    --self:AddComponent(_hitValueCom)
	--
    -----@type BattleObjCom_Drop
    --local _dropCom = componentCreator:__CreateComponent(BattleObjectComponentType.Drop)
    --_dropCom:Init(self, {})
    --self:AddComponent(_dropCom)
end

function BattleObject_AreaTrigger:GetStateParamId()
	---@type BattleObjCom_Config
	local _cfgCom = self:GetComponent(BattleObjectComponentType.Config)
	---@type AreaColliderTemplate
	local _areaTemplate = _cfgCom:GetTemplateXls()
	---@type MonsterInstance
	local _monsterInstance = self:GetBattleRoom().inputDataSource:GetDict("MonsterInstance", _areaTemplate.monsterInstanceId)
	return _monsterInstance.stateParameterId
end

-- 
function BattleObject_AreaTrigger:SetDead()
	self:__SetDead()
	---@type BattleObjCom_BoundaryTrigger
	local _bondaryCom = self:GetComponent(BattleObjectComponentType.BoundaryTrigger)
	_bondaryCom:OnDestroy()
	-----@type BattleObjCom_AreaTrigger
	--local _triggerCom = self:GetComponent(BattleObjectComponentType.AreaTrigger)
	--_triggerCom:OnDestroy()
end

------------------------------------------------------------------------------------------------------------------------
function BattleObject_AreaTrigger:GetL2SMessageData()
	local _areaTriggerObjectInfo_L2V = {}
    _areaTriggerObjectInfo_L2V.objectId = self:GetObjectId()
	_areaTriggerObjectInfo_L2V.alive = not self.__isDead
	---@type BattleObjCom_LifeCtrl
	local _lifeCom = self:GetComponent(BattleObjectComponentType.LifeCtrl)
	_areaTriggerObjectInfo_L2V.createTime = _lifeCom:GetCreateTime()
	_areaTriggerObjectInfo_L2V.dicId = self:GetDicId()
	---@type BattleObjCom_Property
	local _propCom = self:GetComponent(BattleObjectComponentType.Property)
	_areaTriggerObjectInfo_L2V.property = _propCom:GetProtoHash()
	_areaTriggerObjectInfo_L2V.eleWeakTypeList = _propCom:GetEleWeakTypeList()
	_areaTriggerObjectInfo_L2V.blockInfoList = self:__CollectBlockDataList()
	return _areaTriggerObjectInfo_L2V
end

return BattleObject_AreaTrigger