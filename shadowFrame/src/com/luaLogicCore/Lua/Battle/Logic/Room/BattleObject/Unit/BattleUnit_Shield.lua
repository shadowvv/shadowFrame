---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/08/09 14:14
--- Describe:
---

---@class BattleUnit_Shield : BattleUnitBase
BattleUnit_Shield = class(BattleUnitBase, "BattleUnit_Shield")

---@public
---@param _battleCreateUnitParam BattleCreateUnitParam
---@param _shieldObjectDic BattleObjectBase[]
function BattleUnit_Shield:Init(_battleCreateUnitParam, _shieldObjectDic, _currentObjectId)
	self:__Init(BattleUnitType.Shield, _battleCreateUnitParam, _shieldObjectDic, _currentObjectId)
	self:__InitComponents(_battleCreateUnitParam)
	self:__AddToSubordinatedUnit()
	--LogTools.LogByLevel(LogLevel.logErr, "BattleUnit_Shield:Init", "_netId", _battleCreateUnitParam.netId)
end

---@private
---@param _battleCreateUnitParam BattleCreateUnitParam
function BattleUnit_Shield:__InitComponents(_battleCreateUnitParam)
	---@type BattleUnitComponentManager
	local _comManager = self.battleRoom.battleUnitManager:GetUnitComponentManager()
	
	---@type BattleUnitCom_TagSelector
	local _tagCom = _comManager:AddComponent(self, BattleUnitComponentType.TagSelector)
	_tagCom:Init(self, _battleCreateUnitParam)
	
	---@type BattleUnitCom_UnitProp
	local _unitPropCom = _comManager:AddComponent(self, BattleUnitComponentType.UnitProp)
	_unitPropCom:Init(self)
	
	---@type BattleUnitCom_Subordination
	local _subordinationCom = _comManager:AddComponent(self, BattleUnitComponentType.Subordination)
	_subordinationCom:Init(self, _battleCreateUnitParam)
	
	---@type BattleUnitCom_Camp
	local _campCom = _comManager:AddComponent(self, BattleUnitComponentType.Camp)
	_campCom:Init(self, _battleCreateUnitParam.firstCamp, _battleCreateUnitParam.secCamp)
	
	-----@type BattleUnitCom_Hatred
	--local _hatredCom = _comManager:AddComponent(self, BattleUnitComponentType.Hatred)
	--_hatredCom:Init(self)
	--
	-----@type BattleUnitCom_PathFind
	--local _pathFindCom = _comManager:AddComponent(self, BattleUnitComponentType.PathFind)
	--_pathFindCom:Init(self)
	--
	-----@type BattleUnitCom_Rotate
	--local _rotateCom = _comManager:AddComponent(self, BattleUnitComponentType.Rotate)
	--_rotateCom:Init(self)
	
	-----@type BattleUnitCom_Behav
	--local _behavCom = _comManager:AddComponent(self, BattleUnitComponentType.Behav)
	--_behavCom:Init(self)
end

---@public
function BattleUnit_Shield:AddUnitDefaultBuff()
	---@type BattleUnitCom_Subordination
	local _subordinationCom = self:GetComponent(BattleUnitComponentType.Subordination)
	---@type BattleObjectBase
	local _subordinationObj = _subordinationCom:GetSubordinatedObject()
	---@type BattleObjCom_Buff
	local _subordinationBuffCom = _subordinationObj:GetComponent(BattleObjectComponentType.Buff)
	
	local _objectList = self:GetTypeObjectList(BattleObjectType.Shield)
	for _, _shieldObj in pairs(_objectList) do
		---@type Shield
		local _shieldXls = _shieldObj:GetInstanceXls()
		
		---护盾表里配置的天生BUFF
		---@type BattleObjCom_Buff
		local _buffCom = _shieldObj:GetComponent(BattleObjectComponentType.Buff)
		if _buffCom then
			local _buffGroupList = _shieldXls.defaultBuff
			if #_buffGroupList > 0 then
				for _, _buffGroupId in pairs(_buffGroupList) do
					if _buffGroupId and _buffGroupId ~= 0 then
						_buffCom:AddBattleBuff(BattleBuffService:GenerateCastBuffTemplate(_buffGroupId, _shieldObj, nil, nil))
					end
				end
			end
		end
		
		--添加给持有者的buff
		if _subordinationBuffCom then
			local _buffGroupList = _shieldXls.defaultTargetAddBuff
			if #_buffGroupList > 0 then
				for _, _buffGroupId in pairs(_buffGroupList) do
					if _buffGroupId and _buffGroupId ~= 0 then
						_subordinationBuffCom:AddBattleBuff(BattleBuffService:GenerateCastBuffTemplate(_buffGroupId, _subordinationObj, nil, nil))
					end
				end
			end
		end
		
	end
end

---将自身添加到召唤者的从属列表中
---@private
function BattleUnit_Shield:__AddToSubordinatedUnit()
	---@type BattleUnitCom_Subordination
	local _subordinateCom = self:GetComponent(BattleUnitComponentType.Subordination)
	---@type BattleUnitCom_Subordination
	local _parentSubordinateCom = _subordinateCom:GetSubordinatedUnitComponent(BattleUnitComponentType.Subordination)
	
	for _, _obj in pairs(self:GetTypeObjectList(BattleObjectType.Shield)) do
		_parentSubordinateCom:AddManagedObj(_obj:GetDicId(), _obj:GetObjectId(), _obj:GetObjectType())
	end
end

---@public
--function BattleUnit_Shield:SetDead(_deadType)
--	if not self.__alive then return end
--	
--	---@type BattleUnitCom_Subordination
--	local _subordinationCom = self:GetComponent(BattleUnitComponentType.Subordination)
--	---@type BattleObjectBase
--	local _subordinationObj = _subordinationCom:GetSubordinatedObject()
--	---@type BattleObjCom_Buff
--	local _subordinationBuffCom = _subordinationObj:GetComponent(BattleObjectComponentType.Buff)
--	
--	local _objectList = self:GetTypeObjectList(BattleObjectType.Shield)
--	for _, _shieldObj in pairs(_objectList) do
--		---@type Shield
--		local _shieldXls = _shieldObj:GetInstanceXls()
--		
--		--死亡时从持有者移除的buff
--		if _subordinationBuffCom then
--			local _removeBuffGroupList = _shieldXls.endTargetReduceBuff
--			--LogTools.LogByLevel(LogLevel.log, "shieldDeadRemove", "_removeBuffGroupList", dumpTableEx(_removeBuffGroupList))
--			if #_removeBuffGroupList > 0 then
--				for _, _buffGroupId in pairs(_removeBuffGroupList) do
--					if _buffGroupId and _buffGroupId ~= 0 then
--						_subordinationBuffCom:RemoveBuffByGroupId(_buffGroupId)
--					end
--				end
--			end
--		end
--		
--		--死亡时添加给持有者的buff
--		if _subordinationBuffCom then
--			local _addBuffGroupList = _shieldXls.endTargeAddBuff
--			--LogTools.LogByLevel(LogLevel.log, "shieldDeadAdd", "_addBuffGroupList", dumpTableEx(_addBuffGroupList))
--			if #_addBuffGroupList > 0 then
--				for _, _buffGroupId in pairs(_addBuffGroupList) do
--					if _buffGroupId and _buffGroupId ~= 0 then
--						_subordinationBuffCom:AddBattleBuff(BattleBuffService:GenerateCastBuffTemplate(_buffGroupId, _subordinationObj, nil, nil))
--					end
--				end
--			end
--		end
--		
--	end
--	
--	self:__SetDead(_deadType)
--end

---护罩按照召唤者位置进行同步
---@public
function BattleUnit_Shield:DoAction(_dt)
	self:__DoAction(_dt, self.__netId, self.__currentHeroObjectId)
	if not self:CheckAlive() then return end

	local _actionManager = self:GetActionManager()
	---@type BattleUnitCom_Subordination
	local _subordinationCom = self:GetComponent(BattleUnitComponentType.Subordination)
	if not _subordinationCom then return end
	local _subordinatedActionManager = _subordinationCom:GetSubordinatedActionManager()
	if not _subordinatedActionManager then return end
		
	local _pos = _subordinatedActionManager:GetPosition()
	local _rot = _subordinatedActionManager:GetRotation()
	if _pos ~= _actionManager:GetPosition() or _rot ~= _actionManager:GetRotation() then
		_actionManager:SetPosition(_pos)
		_actionManager:SetRotation(_rot)

		local battleUnitMoveOutput = {}
		battleUnitMoveOutput.v = _subordinatedActionManager:GetVelocity()
		battleUnitMoveOutput.position = _pos
		battleUnitMoveOutput.rotation = _rot
		battleUnitMoveOutput.accelerate = Vector3.zero_global()
		battleUnitMoveOutput.moveParam = Vector3.zero_global()
		battleUnitMoveOutput.cameraParam = Vector3.zero_global()
		battleUnitMoveOutput.type = 2

		local battleUnitMoveData = {}
		battleUnitMoveData.netId = self.__netId
		battleUnitMoveData.objId = self.__currentHeroObjectId
		battleUnitMoveData.moveInfo = battleUnitMoveOutput

		self.battleRoom.outputDataSource:AddBattleUnitMoveData(battleUnitMoveData)
		--LogTools.LogByLevel(LogLevel.log, "护罩",dumpTableEx(battleUnitMoveData))
	end
end
------------------------------------------------------------------------------------------------------------------------
function BattleUnit_Shield:GetL2SMessageData()
	local _ShieldUnitInfo_L2V = {}
    _ShieldUnitInfo_L2V.netId = self:GetNetId()
	_ShieldUnitInfo_L2V.alive = self.__alive
	_ShieldUnitInfo_L2V.createTime = self.__createTime
	---@type BattleUnitCom_Subordination
	local _subordinationCom = self:GetComponent(BattleUnitComponentType.Subordination)
	_ShieldUnitInfo_L2V.SubordinateNetId = _subordinationCom:GetSubordinatedNetId()
	_ShieldUnitInfo_L2V.SubordinateObjId = _subordinationCom:GetSubordinatedObjId()
	
	---@type BattleUnitCom_Camp
	local _campCom = self:GetComponent(BattleUnitComponentType.Camp)
	_ShieldUnitInfo_L2V.firstCamp = _campCom:GetFirstCamp()
	_ShieldUnitInfo_L2V.secCamp = _campCom:GetSecCamp()
    _ShieldUnitInfo_L2V.currentObjectId = self:GetCurrentHeroObjectId()

	local _objectInfoList = {}
	---@type BattleObject_Shield[]
	local _objectList = self:GetTypeObjectList(BattleObjectType.Shield)
	for i = 1, #_objectList do
		local _obj = _objectList[i]
		table.insert(_objectInfoList, _obj:GetL2SMessageData())
	end
	_ShieldUnitInfo_L2V.objectList = _objectInfoList

	local _moveInfo = {}
	---@type ActionStateManage
	local _actionManager = self:GetActionManager()
	_moveInfo.position = _actionManager:GetPosition()
	_moveInfo.rotation = _actionManager:GetRotation()
	_moveInfo.v = _actionManager:GetVelocity()
	_moveInfo.accelerate = Vector3.zero_local()
	_moveInfo.moveParam = Vector3.zero_local()
	_moveInfo.cameraParam = Vector3.zero_local()
	_moveInfo.type = 0
	_ShieldUnitInfo_L2V.moveInfo = _moveInfo

	_ShieldUnitInfo_L2V.scale = _actionManager:GetScale()
	
	---@type BattleUnitCom_UnitProp
	local _unitPropCom = self.__componentDic[BattleUnitComponentType.UnitProp]
	_ShieldUnitInfo_L2V.UnitProps = _unitPropCom and _unitPropCom:GetCreateSyncMessage_L2V() or {}
	
	_ShieldUnitInfo_L2V.ShieldDicId = self:GetCurrentHeroObject():GetDicId()
	_ShieldUnitInfo_L2V.targetPointId = self:GetOriginalGenerateInfo().targetPointId
	return _ShieldUnitInfo_L2V
end
return BattleUnit_Shield