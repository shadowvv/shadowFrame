---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/08/09 15:07
--- Describe:
---

---@class BattleUnitCoverShieldData : Utils_BasePoolData
BattleUnitCoverShieldData = class(Utils_BasePoolData, "BarrageEmitterData")
function BattleUnitCoverShieldData:ctor(_data) end

---@public
function BattleUnitCoverShieldData:Init(_index, _objId, _unitShieldCom, _buffGroupId, _maxValue, _curValue)
	---@private
	---@type number
	self.__index = _index
	---@private
	---@type BattleUnitCom_CoverShield
	self.__unitShieldCom = _unitShieldCom
	---@private
	---@type number 所属Obj的ID	
	self.__objId = _objId
	---@private
	---@type number
	self.__buffGroupId = _buffGroupId
	---@private
	---@type number
	self.__maxValue = _maxValue
	---@private
	---@type number
	self.__curValue = _curValue
end

---@public
function BattleUnitCoverShieldData:OnPush()
	self.__index = nil
	self.__unitShieldCom = nil
	self.__objId = nil
	self.__buffGroupId = nil
	self.__maxValue = nil
	self.__curValue = nil
end

---@public
function BattleUnitCoverShieldData:GetIndex()
	return self.__index
end

---@public
function BattleUnitCoverShieldData:GetMaxValue()
	return self.__maxValue
end

---@public
function BattleUnitCoverShieldData:GetCurValue()
	return self.__curValue
end

---@public
function BattleUnitCoverShieldData:GetObjId()
	return self.__objId
end

---@public
function BattleUnitCoverShieldData:GetBuffGroupId()
	return self.__buffGroupId
end

---扣血
---@public
---@param _hurtValue number 试图扣除的血量
---@return number 实际扣除的血量
---@return number 剩余还需要扣除的血量
function BattleUnitCoverShieldData:OnHurt(_hurtValue)
	if self.__curValue > _hurtValue then
		local _curValueLeft = self.__curValue - _hurtValue
		--if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
		--	LogTools.LogByLevel(LogLevel.log, "CheckShield", "覆盖护罩扣血", "index", self.__index, "扣血前护盾值", self.__curValue,  "扣除值", _hurtValue, "扣血后护盾值", _curValueLeft, "扣除值完全消耗")
		--end
		self.__curValue = _curValueLeft
		return _hurtValue, 0
	else
		local _reduceValue = self.__curValue
		--if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
		--	LogTools.LogByLevel(LogLevel.log, "CheckShield", "覆盖护罩扣血", "index", self.__index, "扣血前护盾值", self.__curValue,  "扣除值", _reduceValue, "扣血后护盾值", 0, "扣除值剩余", _hurtValue - _reduceValue)
		--end
		self.__curValue = 0
		return _reduceValue, _hurtValue - _reduceValue
	end
end

------------------------------------------------------------------------------------------------------------------------

---@class BattleUnitCom_CoverShield : BattleUnitComponentBase
BattleUnitCom_CoverShield = class(BattleUnitComponentBase, "BattleUnitCom_CoverShield")

function BattleUnitCom_CoverShield:ctor(_data)
	self:__ctor(BattleUnitComponentType.CoverShield)
end

---@public
---@param _battleUnit BattleUnitBase
---@param _battleCreateUnitParam BattleCreateUnitParam
function BattleUnitCom_CoverShield:Init(_battleUnit, _battleCreateUnitParam)
	self:__Init(_battleUnit)

	---@private
	---@type number
	self.__indexCnt = 0
	---@private
	---@type boolean
	self.__dirty = false
	---@private
	---@type Utils_BasePool
	self.__shieldDataPool = Utils_BasePool.New()
	self.__shieldDataPool:Init(BattleUnitCoverShieldData, 3, 1)

	---@private
	---@type BattleUnitCoverShieldData[]
	self.__shieldDataDic = {}
	---@private
	---@type BattleUnitCoverShieldData[]
	self.__shieldDataList = {}
	
	---当前覆盖护罩总值
	---@private
	self.__allShieldMaxValue = 0
	---当前覆盖护罩剩余值
	---@private
	self.__allShieldCurValue = 0

	
	
	---@type table Msg.UnitGenerateCoverShieldInfo[]
	local _coverShieldInfoList = _battleCreateUnitParam.generateInfo.coverShieldList
	if not _coverShieldInfoList then return end
	local _coverShieldInfo
    for i = 1, #_coverShieldInfoList do
        _coverShieldInfo = _coverShieldInfoList[i]
        self:__AddCoverShield(_coverShieldInfo.index, _coverShieldInfo.objId, _coverShieldInfo.buffGroupId, _coverShieldInfo.maxValue, _coverShieldInfo.curValue)
    end
end

---@private
function BattleUnitCom_CoverShield:__AddCoverShield(_index, _objId, _buffGroupId, _maxValue, _curValue)
	if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
        LogTools.LogByLevel(LogLevel.log, "CheckShield", "添加覆盖护罩", "netId", self:GetUnit():GetNetId(), "_objId", _objId,  "_buffGroupId",_buffGroupId, "_maxValue", _maxValue, "_curValue", _curValue, "_index", _index)
    end
	
	---@type BattleUnitCoverShieldData
	local _data = self.__shieldDataPool:Pop()
	_data:Init(_index, _objId, self, _buffGroupId, _maxValue, _curValue)
	self.__shieldDataDic[_index] = _data
	table.insert(self.__shieldDataList, _data)
    
    self.__allShieldMaxValue = self.__allShieldMaxValue + _maxValue
    self.__allShieldCurValue = self.__allShieldCurValue + _curValue
end

------------------------------------------------------------------------------------------------------------------------
---@public
function BattleUnitCom_CoverShield:AddCoverShield(_objId, _buffGroupId, _maxValue, _curValue)
	local _index = self.__indexCnt + 1
	self.__indexCnt = _index
	self:__AddCoverShield(_index, _objId, _buffGroupId, _maxValue, _curValue)
	
	if IsServer() then
		local _BattleUnitCoverShieldChangeInfo = {}
		_BattleUnitCoverShieldChangeInfo.removeIndex = nil
		_BattleUnitCoverShieldChangeInfo.generateInfo = {
			index = _index,
			objId = _objId,
			buffGroupId = _buffGroupId,
			maxValue = _maxValue,
			curValue = _curValue
		}
		_BattleUnitCoverShieldChangeInfo.maxValue = self.__allShieldMaxValue
		_BattleUnitCoverShieldChangeInfo.curValue = self.__allShieldCurValue
		
		local _BattleUnitChangeData = {}
		_BattleUnitChangeData.netId = self:GetUnit():GetNetId()
		_BattleUnitChangeData.objId = -1
		_BattleUnitChangeData.unitShieldInfo = _BattleUnitCoverShieldChangeInfo
		self:GetBattleRoom().outputDataSource:AddBattleUnitChangeData(_BattleUnitChangeData)
	else
		self:__SyncSimpleInfoToView()
	end
	
	
	if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
        LogTools.LogByLevel(LogLevel.log, "CheckShield", "添加覆盖护罩结束", "当前覆盖护罩最大值", self.__allShieldMaxValue, "当前覆盖护罩剩余值", self.__allShieldCurValue)
    end
	return _index
end

---@public
function BattleUnitCom_CoverShield:RemoveCoverShield(_index, _syncToBuff)
	local _shieldData = self.__shieldDataDic[_index]
	if not _shieldData then return end

	self.__shieldDataDic[_index] = nil

	if _syncToBuff then
		local _obj = self:GetBattleRoom().battleObjectManager:GetObject(_shieldData:GetObjId())
		local _buffGroupId = _shieldData:GetBuffGroupId()
		
		---@type BattleUnitCom_Buff
		local _unitBuffCom = _obj:GetParentUnit():GetComponent(BattleUnitComponentType.Buff)
		if _unitBuffCom and _unitBuffCom:CheckBuffExist(_buffGroupId) then
			_unitBuffCom:RemoveBuffByGroupId(_buffGroupId)
		else
			---@type BattleObjCom_Buff
			local _objBuffCom = _obj:GetComponent(BattleObjectComponentType.Buff)
			if _objBuffCom then
				_objBuffCom:RemoveBuffByGroupId(_buffGroupId)
			end
		end
	end
	
	local _list = self.__shieldDataList
	for i = 1, #_list do
		_shieldData = _list[i]
		if _shieldData:GetIndex() == _index then
			self.__allShieldMaxValue = self.__allShieldMaxValue - _shieldData:GetMaxValue()
			self.__allShieldCurValue = self.__allShieldCurValue - _shieldData:GetCurValue()
			table.remove(_list, i)
			self.__shieldDataPool:Push(_shieldData)
			break
		end
	end

	if IsServer() then
		local _BattleUnitCoverShieldChangeInfo = {
			removeIndex = _index,
			generateInfo = nil,
			maxValue = self.__allShieldMaxValue,
			curValue = self.__allShieldCurValue
		}
		
		local _BattleUnitChangeData = {}
		_BattleUnitChangeData.netId = self:GetUnit():GetNetId()
		_BattleUnitChangeData.objId = -1
		_BattleUnitChangeData.unitShieldInfo = _BattleUnitCoverShieldChangeInfo
		self:GetBattleRoom().outputDataSource:AddBattleUnitChangeData(_BattleUnitChangeData)
	else
		self:__SyncSimpleInfoToView()
	end

	
	if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
        LogTools.LogByLevel(LogLevel.log, "CheckShield", "移除覆盖护罩结束", "netId", self:GetUnit():GetNetId(), "当前覆盖护罩最大值", self.__allShieldMaxValue, "当前覆盖护罩剩余值", self.__allShieldCurValue)
    end
end

---@public
function BattleUnitCom_CoverShield:OnCoverShieldHurt(_value)
	if 0 == self.__allShieldCurValue then return _value end
	
	if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
		LogTools.LogByLevel(LogLevel.log, "CheckShield", "覆盖护罩尝试扣血", "netId", self:GetUnit():GetNetId(), "self.__allShieldMaxValue", self.__allShieldMaxValue,  "self.__allShieldCurValue", self.__allShieldCurValue, "_value", _value)
	end

	local _coverShieldList = self.__shieldDataList
	local _data = _coverShieldList[1]
	local _realReduceValue = 0
	local _leftReduceValue = _value
	while _data and _leftReduceValue > 0 do
		_realReduceValue, _leftReduceValue = _data:OnHurt(_leftReduceValue)
		self.__allShieldCurValue = self.__allShieldCurValue - _realReduceValue
		if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
			LogTools.LogByLevel(LogLevel.log, "CheckShield", "覆盖护罩扣血", "netId", self:GetUnit():GetNetId(), "_realReduceValue", _realReduceValue,  "_leftReduceValue", _leftReduceValue, "self.__allShieldMaxValue", self.__allShieldMaxValue,  "self.__allShieldCurValue", self.__allShieldCurValue)
		end
		if _data:GetCurValue() == 0 then
			if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
				LogTools.LogByLevel(LogLevel.log, "CheckShield", "覆盖护罩被击破", "netId", self:GetUnit():GetNetId(), "_objId", _data:GetObjId(),  "_buffGroupId", _data:GetBuffGroupId(), "index", _data:GetIndex())
			end
			--这里不能直接调BUFF移除，再等BUFF移除回调Remove
			--因为万一BUFF的release不是当帧处理，就会卡住
			self:RemoveCoverShield(_data:GetIndex(), true)
			break
		end

		_data = _coverShieldList[1]
	end

	if IsServer() then
		local _BattleUnitCoverShieldChangeInfo = {
			removeIndex = nil,
			generateInfo = nil,
			maxValue = self.__allShieldMaxValue,
			curValue = self.__allShieldCurValue
		}
		
		local _BattleUnitChangeData = {}
		_BattleUnitChangeData.netId = self:GetUnit():GetNetId()
		_BattleUnitChangeData.objId = -1
		_BattleUnitChangeData.unitShieldInfo = _BattleUnitCoverShieldChangeInfo
		self:GetBattleRoom().outputDataSource:AddBattleUnitChangeData(_BattleUnitChangeData)
	else
		self:__SyncSimpleInfoToView()
	end

	if CheckLogLevel(LogLevel.log) and LogTools.ShieldLog then
		LogTools.LogByLevel(LogLevel.log, "CheckShield", "覆盖护罩扣血结束", "netId", self:GetUnit():GetNetId(), "当前覆盖护罩最大值", self.__allShieldMaxValue, "当前覆盖护罩剩余值", self.__allShieldCurValue, "实际扣血值", _value - _leftReduceValue)
	end
	return _leftReduceValue
end

---@public
function BattleUnitCom_CoverShield:GetMaxValue()
	return self.__allShieldMaxValue
end

---@public
function BattleUnitCom_CoverShield:GetCurValue()
	return self.__allShieldCurValue
end

---@public
---@param _BattleUnitCoverShieldChangeInfo table msg.BattleUnitCoverShieldChangeInfo
function BattleUnitCom_CoverShield:OnClientReceiveSyncInfo(_BattleUnitCoverShieldChangeInfo)
	
	---有护罩数据移除
	local _removeIndex = _BattleUnitCoverShieldChangeInfo.removeIndex
	if _removeIndex then
		self.__shieldDataDic[_removeIndex] = nil
		for _cnt, _data in pairs(self.__shieldDataList) do
			if _data:GetIndex() == _removeIndex then
				table.remove(self.__shieldDataList, _cnt)
				break
			end
		end
	end
	
	---有护罩数据增加
	local _coverShieldInfo = _BattleUnitCoverShieldChangeInfo.generateInfo
	if _coverShieldInfo then
		---@type BattleUnitCoverShieldData
		local _data = self.__shieldDataPool:Pop()
		_data:Init(_coverShieldInfo.index, _coverShieldInfo.objId, self, _coverShieldInfo.buffGroupId, _coverShieldInfo.maxValue, _coverShieldInfo.curValue)
		self.__shieldDataDic[_data:GetIndex()] = _data
		table.insert(self.__shieldDataList, _data)
	end
	
	---血量同步一定会有
	self.__allShieldMaxValue = _BattleUnitCoverShieldChangeInfo.maxValue
	self.__allShieldCurValue = _BattleUnitCoverShieldChangeInfo.curValue
	self:__SyncSimpleInfoToView()
end

---向表现层推送变化信息
---@private
function BattleUnitCom_CoverShield:__SyncSimpleInfoToView()
	local _UnitCoverShieldChange_L2V = {}
	_UnitCoverShieldChange_L2V.netId = self:GetUnit():GetNetId()
	_UnitCoverShieldChange_L2V.shieldInfo = {
		maxValue = self.__allShieldMaxValue,
		curValue = self.__allShieldCurValue
	}
	self:GetBattleRoom().outputDataSource:UnitCoverShieldChange_L2V(_UnitCoverShieldChange_L2V)
end

------------------------------------------------------------------------------------------------------------------------

---@public
---@return table Msg.UnitGenerateCoverShieldInfo[]
function BattleUnitCom_CoverShield:GetCreateSyncMessage_S2C()
	local _coverShieldList = {}
	
	local _list = self.__shieldDataList
	---@type BattleUnitCoverShieldData
	local _shieldData
	for i = 1, #_list do
		_shieldData = _list[i]
		local _UnitGenerateCoverShieldInfo = {
			index = _shieldData:GetIndex(),
			objId = _shieldData:GetObjId(),
			buffGroupId = _shieldData:GetBuffGroupId(),
			maxValue = _shieldData:GetMaxValue(),
			curValue = _shieldData:GetCurValue()
		}
		table.insert(_coverShieldList, _UnitGenerateCoverShieldInfo)
	end
	
	return _coverShieldList
end

---@public
---@return table Msg.UnitCoverShieldSimpleInfo
function BattleUnitCom_CoverShield:GetCreateSyncMessage_L2V()
	local _UnitCoverShieldSimpleInfo = {}
	_UnitCoverShieldSimpleInfo.maxValue = self.__allShieldMaxValue
	_UnitCoverShieldSimpleInfo.curValue = self.__allShieldCurValue
	return _UnitCoverShieldSimpleInfo
end

return BattleUnitCom_CoverShield