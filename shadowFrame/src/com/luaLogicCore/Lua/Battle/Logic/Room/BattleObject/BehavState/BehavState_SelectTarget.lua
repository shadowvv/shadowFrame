---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/02/28 15:52
--- Describe:
---

---@class BehavState_SelectTarget : table
BehavState_SelectTarget = class(nil, "BehavState_SelectTarget")
function BehavState_SelectTarget:ctor(_data) end

---@param _behavCom BattleUnitCom_Behav
function BehavState_SelectTarget:Init(_behavCom)
	---@private
	---@type BattleUnitCom_Behav
	self.__behavCom = _behavCom
	---@private
	---@type BattleUnitBase
	self.__unit = _behavCom:GetUnit()
	---@private
	---@type BattleRoom
	self.__battleRoom = self.__unit:GetBattleRoom()
	---@private
	---@type ActionStateManage
	self.__actionManager = self.__unit:GetActionManager()
	self:__InitXlsParams(self.__unit)
	self:__InitFovActionManager()
	self:__InitStateUse()

	---@private
	---@type BattleUnitCom_Camp
	self.__campCom = self.__unit:GetComponent(BattleUnitComponentType.Camp)
	---@private
	self.__firstCamp = self.__campCom:GetFirstCamp()
	---@private
	self.__secCamp = self.__campCom:GetSecCamp()
	self:__InitCampUnits()

	---@private
	---@type BattleUnitCom_Hatred
	self.__hatredCom = self.__unit:GetComponent(BattleUnitComponentType.Hatred)
	
	---@private
	self.__targetNedId = nil
	---@private
	self.__targetObjId = nil
	---@private
	self.__getList = {}
end

---@private
---@param _unit BattleUnitBase
function BehavState_SelectTarget:__InitXlsParams(_unit)
	---@type MonsterInstance
	local _xls = _unit:GetDataInstanceXls()
	local _alertDis = _xls.alertDis or 0
	local _atkDis = _xls.atkDis or 0
	local _escapeDis = _xls.escDis or 0
	local _atkAngle = _xls.attackRangeAngle or 0
	
	self.__alertDis = _alertDis * _alertDis
	--if _unit:GetNetId() == ActionStateManage.checkNetId then
	--	LogTools.LogByLevel(LogLevel.log, "CheckAiMove", "CheckLuaBehav", "BehavState_SelectTarget", "_xls.alertDis", _xls.alertDis, "_xls.id", _xls.id)
	--end
	self.__atkDis = _atkDis * _atkDis
	self.__escapeDis = _escapeDis * _escapeDis
	self.__atkRadCos = math.cos(math.rad(_atkAngle))
	self.__atkAngle = self.__behavCom:GetAtkAngle()
	
	
	self.__selectTargetAngle = _xls.aimDis
	if not self.__selectTargetAngle or 0 == self.__selectTargetAngle then
		self.__selectTargetAngle = 180
	end
	--self.__selectCheckDot = math.abs(math.sin(math.rad(self.__selectTargetAngle)) * 0.5)
end

---@private
function BehavState_SelectTarget:__InitFovActionManager()
	self.__fovActionManager = self.__actionManager
	self.__fovNetId = self.__unit:GetNetId()
	if self.__unit:CheckUnitType(BattleUnitType.SummonedMons) then
		---@type BattleUnitCom_Subordination
		local _subordinationCom = self.__unit:GetComponent(BattleUnitComponentType.Subordination)
		local _subordinationUnit = _subordinationCom:GetSubordinatedUnit()
		--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "CheckSummonedMons", "BehavState_SelectTarget", "_subordinationUnit", _subordinationUnit)
		if _subordinationUnit then
			self.__fovActionManager = _subordinationUnit:GetActionManager()
			self.__fovNetId = _subordinationUnit:GetNetId()
		end
	end
end

---@private
function BehavState_SelectTarget:__InitStateUse()
	---@private
	---@type BattleUnitBase
	self.__subordinatedUnit = nil
	---@private
	---@type BattleUnitCom_Behav
	self.__subordinatedBehavCom = nil
	if self.__unit:CheckUnitType(BattleUnitType.SummonedMons) then
		---@type BattleUnitCom_Subordination
		local _subordinationCom = self.__unit:GetComponent(BattleUnitComponentType.Subordination)
		if not _subordinationCom then return end
		self.__subordinatedUnit = _subordinationCom:GetSubordinatedUnit()
		if not self.__subordinatedUnit then return end
		self.__subordinatedBehavCom = self.__subordinatedUnit:GetComponent(BattleUnitComponentType.Behav)
	end
end

------------------------------------------------------------------------------------------------------------------------
---@private
function BehavState_SelectTarget:__InitCampUnits(_selfFirstCamp, _selfSecCamp)

	local _battleUnitManager = self.__battleRoom.battleUnitManager
	local _selfNetId = self.__unit:GetNetId()
	local _dic = {}
	---@type BattleUnitBase[]
	local _getList
	for _, _camp in pairs(BattleUnitCampType) do
		local _tempList = {}
		_getList = _battleUnitManager:GetUnitListByCampType(_camp)
		if _getList then
			for i = 1, #_getList do
				local _unit = _getList[i]
				if _unit:GetNetId() ~= _selfNetId then
					table.insert(_tempList, _unit)
				end
			end
		end
		_dic[_camp] = _tempList
	end

	---@type BattleUnitBase[][]
	self.__campUnitDic = _dic
end

---@public
function BehavState_SelectTarget:OnUnitCreateEvent(_netId)
	if _netId == self.__unit:GetNetId() then return end
	local _unit = self.__battleRoom.battleUnitManager:GetUnit(_netId, true)
	---@type BattleUnitCom_Camp
	local _campCom = _unit:GetComponent(BattleUnitComponentType.Camp)
	if not _campCom then return end
	local _list = self.__campUnitDic[_campCom:GetFirstCamp()]
	if not _list then return end
	table.insert(_list, _unit)
end

---@public
function BehavState_SelectTarget:OnUnitDeadEvent(_netId)
	if _netId == self.__unit:GetNetId() then return end
	local _unit = self.__battleRoom.battleUnitManager:GetUnit(_netId, true)
	---@type BattleUnitCom_Camp
	local _campCom = _unit:GetComponent(BattleUnitComponentType.Camp)
	if not _campCom then return end
	local _list = self.__campUnitDic[_campCom:GetFirstCamp()]
	if not _list then return end
	for i = 1, #_list do
		if _list[i]:GetNetId() == _netId then
			table.remove(_list, i)
			return
		end
	end
end

---@private
---@return BattleUnitBase[]
function BehavState_SelectTarget:__GetUnitListSameWithCamp(_camp)
	local _list = self.__getList
	local _units = self.__campUnitDic[_camp]
	for i = 1, #_units do
		table.insert(_list, _units[i])
	end
end

---@private
---@return BattleUnitBase[]
function BehavState_SelectTarget:__GetUnitListDiffWithCamp(_camp)
	local _list = self.__getList
	for _key, _units in pairs(self.__campUnitDic) do
		if _key ~= _camp then
			for i = 1, #_units do
				table.insert(_list, _units[i])
			end
		end
	end
end
------------------------------------------------------------------------------------------------------------------------

---@public
---@param _param LuaBehav_MonsSelectTargetParam
function BehavState_SelectTarget:Select(_param)
	--if self.__unit:GetNetId() == 3 then
	--	LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "BehavState_SelectTarget", "_param", dumpTableEx(_param))
	--end
	local _newTargetNetId
	local _newTargetObjId
	
	if _param.selectCampType == LuaBehav_Define_SelectCampType.SelfOwn then
		_newTargetNetId = self.__unit:GetNetId()
		_newTargetObjId = self.__unit:GetCurrentHeroObjectId()
	else
		_newTargetNetId, _newTargetObjId = self:__Select(_param)
	end
	
	if _newTargetNetId ~= self.__targetNedId or _newTargetObjId ~= self.__targetObjId then
		self:__OnTargetChange(_newTargetNetId, _newTargetObjId)
	end

	--if self.__unit:CheckUnitType(BattleUnitType.SummonedMons) then
	--	LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "CheckSummonedMons", "BehavState_SelectTarget", "self.netId", self.__unit:GetNetId(), "_newTargetNetId", _newTargetNetId, "self.__targetNedId", self.__targetNedId, "_newTargetObjId", _newTargetObjId, "self.__targetObjId", self.__targetObjId)
	--	LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav")
	--end
end

---@private
---@param _selectTargetParam LuaBehav_MonsSelectTargetParam
function BehavState_SelectTarget:__Select(_selectTargetParam)
	---@type BattleUnitBase[]
	local _unitList = self.__getList

	for _key, _ in pairs(self.__getList) do
		_unitList[_key] = nil
	end

	self:__GetWithCampType(_selectTargetParam)
	if 0 == #_unitList then return nil end

	_unitList = self:__CheckCanBeAimed(_unitList)
	--if self.__fovNetId == ActionStateManage.checkNetId then
	--	LogTools.LogByLevel(LogLevel.log, "CheckAiMove", "CheckLuaBehav", "BehavState_SelectTarget", "__CheckCanBeAimed ret", #_unitList)
	--end
	if 0 == #_unitList then return nil end
	
	_unitList = self:__CheckInFOV(_unitList)
	--if self.__fovNetId == ActionStateManage.checkNetId then
	--	LogTools.LogByLevel(LogLevel.log, "CheckAiMove", "CheckLuaBehav", "BehavState_SelectTarget", "__CheckInFOV ret", #_unitList)
	--end
	if 0 == #_unitList then return nil end

	if _selectTargetParam.firstSelectCondition ~= LuaBehav_Define_SelectTargetType.None then
		_unitList = self:__SelectWithSelectCondition(_unitList, _selectTargetParam.firstSelectCondition, _selectTargetParam.firstSelectConditionParam)
	end
	--if self.__fovNetId == ActionStateManage.checkNetId then
	--	LogTools.LogByLevel(LogLevel.log, "CheckAiMove", "CheckLuaBehav", "BehavState_SelectTarget", "firstSelectCondition ret", #_unitList, dumpTableEx(_unitList))
	--end
	if 0 == #_unitList then return nil end

	if _selectTargetParam.secSelectCondition ~= LuaBehav_Define_SelectTargetType.None then
		_unitList = self:__SelectWithSelectCondition(_unitList, _selectTargetParam.secSelectCondition, _selectTargetParam.secSelectConditionParam)
	end
	--if self.__fovNetId == ActionStateManage.checkNetId then
	--	LogTools.LogByLevel(LogLevel.log, "CheckAiMove", "CheckLuaBehav", "BehavState_SelectTarget", "secSelectCondition ret", #_unitList)
	--end
	if 0 == #_unitList then return nil end

	_unitList = self:__SelectWithAlertDis(_unitList)
	--if self.__fovNetId == ActionStateManage.checkNetId then
	--	LogTools.LogByLevel(LogLevel.log, "CheckAiMove", "CheckLuaBehav", "BehavState_SelectTarget", "SelectWithAlertDis ret", #_unitList)
	--end
	if 0 == #_unitList then return nil end

	return _unitList[1]:GetNetId(), _unitList[1]:GetCurrentHeroObjectId()
end

---@private
---@param _selectTargetParam LuaBehav_MonsSelectTargetParam
---@return BattleUnitBase[] 
function BehavState_SelectTarget:__GetWithCampType(_selectTargetParam)
	local _selectCampType = _selectTargetParam.selectCampType
	if _selectTargetParam.includeSelf then
		table.insert(self.__getList, self.__unit)
	end
	if _selectCampType == LuaBehav_Define_SelectCampType.DiffCamp then
		self:__GetUnitListDiffWithCamp(self.__firstCamp)
	elseif _selectCampType == LuaBehav_Define_SelectCampType.SameCamp then
		self:__GetUnitListSameWithCamp(self.__firstCamp)
	elseif _selectCampType == LuaBehav_Define_SelectCampType.SpecificCamps then
		for _, _campType in pairs(_selectTargetParam.selectCampTable) do
			self:__GetUnitListSameWithCamp(_campType)
		end
	end
end

---检查对象是否可以作为瞄准的目标
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__CheckCanBeAimed(_unitList)
	for i = #_unitList, 1, -1 do
		local _unit = _unitList[i]
		if not _unit:GetCurrentHeroObject():CheckCanBeAimed() then
			table.remove(_unitList, i)
		end
	end
	return _unitList
end

---检查对象是否在视野范围内
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__CheckInFOV(_unitList)
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "BehavState_SelectTarget", "__CheckInFOV self.__selectTargetAngle", self.__selectTargetAngle)
	if self.__selectTargetAngle == 180 then return _unitList end
	
	local _selfNetId = self.__fovActionManager:GetUnit():GetNetId()
	local _transUtil = self.__battleRoom.transUtil
	local _angleRecord
	local _checkAngle = self.__selectTargetAngle
	for i = #_unitList, 1, -1 do
		_angleRecord = _transUtil:GetAngleBetweenUnits(_selfNetId, _unitList[i]:GetNetId())
		if _angleRecord[1] > _checkAngle and _angleRecord[2] > _checkAngle then
			table.remove(_unitList, i)
		end
	end
	return _unitList
end

---@private
function BehavState_SelectTarget:__SelectWithSelectCondition(_unitList, _selectType, _conditionParam)
	if _selectType == LuaBehav_Define_SelectTargetType.MostHatred then
		return self:__Select_MostHatred(_unitList, _conditionParam)
	elseif _selectType == LuaBehav_Define_SelectTargetType.SmallestHatred then
		return self:__Select_SmallestHatred(_unitList, _conditionParam)
	elseif _selectType == LuaBehav_Define_SelectTargetType.MostDis then
		return self:__Select_MostDis(_unitList, _conditionParam)
	elseif _selectType == LuaBehav_Define_SelectTargetType.SmallestDis then
		return self:__Select_SmallestDis(_unitList, _conditionParam)
	elseif _selectType == LuaBehav_Define_SelectTargetType.MostProp then
		return self:__Select_MostProp(_unitList, _conditionParam)
	elseif _selectType == LuaBehav_Define_SelectTargetType.SmallestProp then
		return self:__Select_SmallestProp(_unitList, _conditionParam)
	elseif _selectType == LuaBehav_Define_SelectTargetType.UseWeaponType then
		return self:__Select_UseWeaponType(_unitList, _conditionParam)
	elseif _selectType == LuaBehav_Define_SelectTargetType.UnitType then
		return self:__Select_UnitType(_unitList, _conditionParam)
	elseif _selectType == LuaBehav_Define_SelectTargetType.SubordinatedTarget then
		return self:__Select_SubordinationTarget(_unitList, _conditionParam)
	end
	
	return {}
end

---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__SelectWithAlertDis(_unitList)

	local _selfNetId = self.__unit:GetNetId()
	local _transUtil = self.__battleRoom.transUtil
	local _fDistance
	for i = #_unitList, 1, -1 do
		_fDistance = _transUtil:GetDisBetweenUnits(_selfNetId, _unitList[i]:GetNetId(), BattleUnitDisRecordType.CollisionDis)
		if _fDistance > self.__alertDis then
			table.remove(_unitList, i)
		end
	end
	
	return _unitList
end

---目标改变
---@private
function BehavState_SelectTarget:__OnTargetChange(_newTargetNetId, _newTargetObjId)
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "BehavState_SelectTarget", "目标改变", "monster netId", self.__unit:GetNetId(), "old targetNetId", self.__targetNedId, "net targetNetId", _newTargetNetId)
	self.__targetNedId = _newTargetNetId
	self.__targetObjId = _newTargetObjId
	
	local _targetObjId = -1
	if _newTargetNetId and -1 ~= _newTargetNetId then
		local _targetUnit = self.__battleRoom.battleUnitManager:GetUnit(_newTargetNetId)
		if _targetUnit then
			_targetObjId = _targetUnit:GetCurrentHeroObjectId()
		end
	end
	
	local _BattleUnitTargetInfo = {}
	_BattleUnitTargetInfo.netId = self.__unit:GetNetId()
	_BattleUnitTargetInfo.objectId = self.__unit:GetCurrentHeroObjectId()
	_BattleUnitTargetInfo.timeStamp = TimeUtils.battleNow(self.__battleRoom.battleId)
	_BattleUnitTargetInfo.target = {}
	_BattleUnitTargetInfo.target.netId = _newTargetNetId or -1
	_BattleUnitTargetInfo.target.objectId = _newTargetObjId or -1
	_BattleUnitTargetInfo.target.blockId = 1
	
	local _changeData = {}
	_changeData.netId = self.__unit:GetNetId()
	_changeData.objId = self.__unit:GetCurrentHeroObjectId()
	_changeData.unitTargetChange = _BattleUnitTargetInfo
	
	self.__battleRoom.outputDataSource:AddBattleUnitChangeData(_changeData)
end

------------------------------------------------------------------------------------------------------------------------
---筛选最大仇恨值
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_MostHatred(_unitList, _conditionParam)
	local _hatredCom = self.__hatredCom
	local _mostHatred = _hatredCom:GetMostHatredValue()
	for i = #_unitList, 1, -1 do
		if _hatredCom:GetHatred(_unitList[i]:GetNetId()) < _mostHatred then
			table.remove(_unitList, i)
		end
	end
	return _unitList
end

---筛选最小仇恨值
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_SmallestHatred(_unitList, _conditionParam)
	local _hatredCom = self.__hatredCom
	local _smallestHatred = _hatredCom:GetSmallestHatredValue()
	for i = #_unitList, 1, -1 do
		if _hatredCom:GetHatred(_unitList[i]:GetNetId()) > _smallestHatred then
			table.remove(_unitList, i)
		end
	end
	return _unitList
end

---筛选最远距离
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_MostDis(_unitList, _conditionParam)
	local _fDistance
	local _fMaxDistance
	local _selfNetId = self.__unit:GetNetId()
	local _transUtil = self.__battleRoom.transUtil
	for i = #_unitList, 1, -1 do
		_fDistance = _transUtil:GetDisBetweenUnits(_selfNetId, _unitList[i]:GetNetId(), BattleUnitDisRecordType.CollisionDis)
		if _fMaxDistance and _fDistance < _fMaxDistance then
			table.remove(_unitList, i)
		else
			_fMaxDistance = _fDistance
		end
	end
	return _unitList
end

---筛选最近距离
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_SmallestDis(_unitList, _conditionParam)
	local _fDistance
	local _fMinDistance
	local _selfNetId = self.__unit:GetNetId()
	local _transUtil = self.__battleRoom.transUtil
	for i = #_unitList, 1, -1 do
		_fDistance = _transUtil:GetDisBetweenUnits(_selfNetId, _unitList[i]:GetNetId(), BattleUnitDisRecordType.CollisionDis)
		if _fMinDistance and _fDistance > _fMinDistance then
			table.remove(_unitList, i)
		else
			_fMinDistance = _fDistance
		end
	end
	return _unitList
end

---筛选指定属性最大值
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_MostProp(_unitList, _conditionParam)
	table.sort(_unitList, function(a, b)
		return a:GetPropertyById(_conditionParam) > b:GetPropertyById(_conditionParam)
	end)
	
	local _maxProp
	local _curProp
	for i = #_unitList, 1, -1 do
		_curProp = _unitList[i]:GetPropertyById(_conditionParam)
		if _maxProp and _curProp < _maxProp then
			table.remove(_unitList, i)
		else
			_maxProp = _curProp
		end
	end
	
	return _unitList
end

---筛选指定属性最小值
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_SmallestProp(_unitList, _conditionParam)
	table.sort(_unitList, function(a, b)
		return a:GetPropertyById(_conditionParam) < b:GetPropertyById(_conditionParam)
	end)
	
	local _minProp
	local _curProp
	for i = #_unitList, 1, -1 do
		_curProp = _unitList[i]:GetPropertyById(_conditionParam)
		if _minProp and _curProp > _minProp then
			table.remove(_unitList, i)
		else
			_minProp = _curProp
		end
	end
	
	return _unitList
end

---筛选指定武装类型
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_UseWeaponType(_unitList, _conditionParam)
	for i = #_unitList, 1, -1 do
		local _instanceXls = _unitList[i]:GetDataInstanceXls()
		if not _instanceXls or _instanceXls.useWeaponType ~= _conditionParam then
			table.remove(_unitList, i)
		end
	end
	
	return _unitList
end

---筛选指定单位类型
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_UnitType(_unitList, _conditionParam)
	for i = #_unitList, 1, -1 do
		if not _unitList[i]:CheckUnitType(_conditionParam) then
			table.remove(_unitList, i)
		end
	end
	
	return _unitList
end

---筛选所属召唤者的当前目标
---@private
---@param _unitList BattleUnitBase[]
function BehavState_SelectTarget:__Select_SubordinationTarget(_unitList, _conditionParam)
	TableUtil.ClearTable(_unitList)
	
	if not self.__subordinatedBehavCom then
		return _unitList
	end
	
	local _targetNetId = self.__subordinatedBehavCom:GetTarget()
	if not _targetNetId or -1 == _targetNetId then
		return _unitList
	end
	
	table.insert(_unitList, self.__battleRoom.battleUnitManager:GetUnit(_targetNetId))
	return _unitList
end

------------------------------------------------------------------------------------------------------------------------
---@public
function BehavState_SelectTarget:GetTargetNetId()
	--if self.__unit:CheckUnitType(BattleUnitType.SummonedMons) then
	--	LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "CheckSummonedMons", "BehavState_SelectTarget GetTargetNetId", "self.netId", self.__unit:GetNetId(), "self.__targetNedId", self.__targetNedId, "self.__targetObjId", self.__targetObjId)
	--	LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav")
	--end
	return self.__targetNedId
end

---@public
function BehavState_SelectTarget:SetTargetNetId(_netId)
	--LogTools.LogByLevel(LogLevel.log, "BehavState_SelectTarget:SetTargetNetId", "self", self.__unit:GetNetId(), "target", _netId)
	self.__targetNedId = _netId
end

---是否在警戒范围内
---@public
function BehavState_SelectTarget:CheckTargetInAlertRange(_scale)
	if not self.__targetNedId then return false end

	local _fDistance = self.__battleRoom.transUtil:GetDisBetweenUnits(self.__unit:GetNetId(), self.__targetNedId, BattleUnitDisRecordType.CollisionDis)
	return _fDistance and _fDistance < self.__alertDis * _scale * _scale
end

---是否在攻击范围内
---@public
function BehavState_SelectTarget:CheckTargetInAtkRange(_scale)
	if not self.__targetNedId then return false end
	
	local _fDistance = self.__battleRoom.transUtil:GetDisBetweenUnits(self.__unit:GetNetId(), self.__targetNedId, BattleUnitDisRecordType.CollisionDis)
	return _fDistance and _fDistance < self.__atkDis * _scale * _scale
end

---是否在逃离范围内
---@public
function BehavState_SelectTarget:CheckTargetInEscapeRange(_scale)
	if not self.__targetNedId then return false end
	
	local _fDistance = self.__battleRoom.transUtil:GetDisBetweenUnits(self.__unit:GetNetId(), self.__targetNedId, BattleUnitDisRecordType.CollisionDis)
	--LogTools.LogByLevel(LogLevel.log, "BehavState_SelectTarget", "CheckTargetInEscapeRange", "_fDistance", _fDistance, "self.__escapeDis", self.__escapeDis, "_scale", _scale)
	return _fDistance and _fDistance < self.__escapeDis * _scale * _scale
end

---是否在攻击角度内
---@public
---@param _axisType LuaBehav_Define_CheckAxisType
function BehavState_SelectTarget:CheckTargetInAtkAngle(_axisType)
	--if self.__fovNetId == ActionStateManage.checkNetId then
	--	LogTools.LogByLevel(LogLevel.log, "CheckAiMove", "BehavState_SelectTarget:CheckTargetInAtkAngle 1", "self.__targetNedId", self.__targetNedId,"netId", self.__behavCom:GetUnit():GetNetId())
	--end
	if not self.__targetNedId then return false end
	if self.__atkAngle == 360 then return true end

	local _angleRecord = self.__battleRoom.transUtil:GetAngleBetweenUnits(self.__unit:GetNetId(), self.__targetNedId)
	if not _angleRecord then return false end
	
	--if self.__fovNetId == ActionStateManage.checkNetId then
	--	LogTools.LogByLevel(LogLevel.log, "CheckAiMove", "BehavState_SelectTarget:CheckTargetInAtkAngle 1", "self.__atkAngle", self.__atkAngle, "_angleRecord", dumpTableEx(_angleRecord),"netId", self.__behavCom:GetUnit():GetNetId())
	--end
	if _axisType == LuaBehav_Define_CheckAxisType.Horizontal then
		return _angleRecord[1] and _angleRecord[1] <= self.__atkAngle
	elseif _axisType == LuaBehav_Define_CheckAxisType.Vertical then
		return _angleRecord[2] and _angleRecord[2] <= self.__atkAngle
	else
		return _angleRecord[1] and _angleRecord[1] <= self.__atkAngle and _angleRecord[2] and _angleRecord[2] <= self.__atkAngle
	end
end

---@public
function BehavState_SelectTarget:Clear()
	self.__behavCom = nil
	self.__unit = nil
	self.__campCom = nil
	self.__firstCamp = nil
	self.__hatredCom = nil
	self.__targetNedId = nil
	self.__battleRoom = nil
	self.__selectTargetAngle = nil
end

return BehavState_SelectTarget