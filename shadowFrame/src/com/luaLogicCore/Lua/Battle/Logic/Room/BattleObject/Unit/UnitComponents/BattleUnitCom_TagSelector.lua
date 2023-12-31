---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/07/23 14:56
--- Describe: 管理unit身上的一些标记
---

---unit标记类型枚举
---@class BattleUnitTagEnum : table
BattleUnitTagEnum = {
	SceneObjState = 1,        --场景物件的状态值
	RotateAxisLockType = 2,   --旋转轴锁定
	LifeTimeReset = 3,        --生命周期重置
	BeingCollected = 4,       --正在被采集中
	CollectorNetId = 5,      --最后一次采集成功的采集者（被采集对象才会有）
	CollectCoinPoints = 6,    --钻环玩法金币积分
	CollectInheritTime = 7,   --采集继承时间
	LastHurtFromNetID = 8,    --最后一次受伤来源
	WarriorState = 9,         --当前勇士状态
	LastIllegalPosFixTime = 10,--上次纠正非法位置时间
	CollectCoinNum = 11,       --拾取金币次数（目前是程序自己走的，没有配置行为树）
}

---unit标记默认值
---@class BattleUnitTagDefault : table
BattleUnitTagDefault = {
	[BattleUnitTagEnum.SceneObjState] = 0,
	[BattleUnitTagEnum.RotateAxisLockType] = LuaBehav_Define_RotateAxisLockType.None,
	[BattleUnitTagEnum.LifeTimeReset] = false,
	[BattleUnitTagEnum.BeingCollected] = false,
	[BattleUnitTagEnum.CollectorNetId] = -1,
	[BattleUnitTagEnum.CollectCoinPoints] = 0,
	[BattleUnitTagEnum.CollectInheritTime] = 0,
	[BattleUnitTagEnum.LastIllegalPosFixTime] = 0,
	[BattleUnitTagEnum.LastHurtFromNetID] = -1,
	[BattleUnitTagEnum.WarriorState] = 0,
	[BattleUnitTagEnum.CollectCoinNum] = 0,
}

---@class BattleUnitCom_TagSelector : BattleUnitComponentBase
BattleUnitCom_TagSelector = class(BattleUnitComponentBase, "BattleUnitCom_TagSelector")
function BattleUnitCom_TagSelector:ctor(_data)
	self:__ctor(BattleUnitComponentType.TagSelector)
end

---@public
---@param _battleUnit BattleUnitBase
---@param _battleCreateUnitParam BattleCreateUnitParam
function BattleUnitCom_TagSelector:Init(_battleUnit, _battleCreateUnitParam)
	self:__Init(_battleUnit)
	self:__InitTags(_battleCreateUnitParam)
	self.__dirtyTags = {}
	self.__oldTags = {}
	self.__dirty = false
end

---@private
---@param _battleCreateUnitParam BattleCreateUnitParam
function BattleUnitCom_TagSelector:__InitTags(_battleCreateUnitParam)
	local _dic = {}
	for _, _value in pairs(BattleUnitTagEnum) do
		_dic[_value] = BattleUnitTagDefault[_value]
	end

	if self:GetUnit():CheckUnitType(BattleUnitType.SceneObj) then
		_dic[BattleUnitTagEnum.SceneObjState] = _battleCreateUnitParam.initState
	end
	
	self.__tagDic = _dic
end
------------------------------------------------------------------------------------------------------------------------
---@public
function BattleUnitCom_TagSelector:SnapChangeProperties()
	--LogTools.LogByLevel(LogLevel.log, "CheckSceneObj", "BattleUnitCom_TagSelector", "SnapChangeProperties start", "self.__dirtyTags", dumpTableEx(self.__dirtyTags), "netId", self:GetUnit():GetNetId(), "IsServer()", IsServer())
	local _unitTagChange = {}
	
	local _dirtyTags = self.__dirtyTags
	local _oldTags = self.__oldTags
	for _tagType, _tagValue in pairs(_dirtyTags) do
		--LogTools.LogByLevel(LogLevel.log, "CheckSceneObj", "BattleUnitCom_TagSelector", "SnapChangeProperties", "_tagType", _tagType, "_tagValue", _tagValue)
		if _tagValue then
			local _BattleUnitTagInfo = {}
			_BattleUnitTagInfo.tagType = _tagType
			_BattleUnitTagInfo.tagValue = _tagValue
			_BattleUnitTagInfo.OldValue = _oldTags[_tagType]
			table.insert(_unitTagChange, _BattleUnitTagInfo)
			_dirtyTags[_tagType] = nil
			_oldTags[_tagType] = nil
		end
	end

	if #_unitTagChange > 0 then
		--LogTools.LogByLevel(LogLevel.log, "CheckSceneObj", "BattleUnitCom_TagSelector", "SnapChangeProperties 2")
		local battleUnitChangeData = {}
		battleUnitChangeData.netId = self:GetUnit():GetNetId()
		battleUnitChangeData.objId = self:GetUnit():GetCurrentHeroObjectId()
		battleUnitChangeData.unitTagChange = _unitTagChange

		self:GetBattleRoom().outputDataSource:AddBattleUnitChangeData(battleUnitChangeData)
		--LogTools.LogByLevel(LogLevel.log, "CheckSceneObj", "BattleUnitCom_TagSelector", "SnapChangeProperties 3", "battleUnitChangeData", dumpTableEx(battleUnitChangeData))
	end
	
	self.__dirty = false
	--LogTools.LogByLevel(LogLevel.log, "CheckSceneObj", "BattleUnitCom_TagSelector", "SnapChangeProperties  end")
end

---@public
function BattleUnitCom_TagSelector:Update(_deltaTime)
	if not self.__dirty then return end
	self:SnapChangeProperties()
end

---@public
---@param _BattleUnitTagInfoList table msg.BattleUnitTagInfo[]
function BattleUnitCom_TagSelector:ClientReceiveTagChange(_BattleUnitTagInfoList)
	--LogTools.LogByLevel(LogLevel.log, "CheckSceneObj", "BattleUnitCom_TagSelector", "ClientReceiveTagChange start", "_BattleUnitTagInfoList", dumpTableEx(_BattleUnitTagInfoList))
	for _, _BattleUnitTagInfo in pairs(_BattleUnitTagInfoList) do
		local _tagType = _BattleUnitTagInfo.tagType
		local _tagValue = _BattleUnitTagInfo.tagValue
		local _oldValue = _BattleUnitTagInfo.OldValue

		if _tagType == BattleUnitTagEnum.SceneObjState then
			self.__tagDic[_tagType] = _tagValue

			local _ChangeSceneObjState_L2V = {}
			_ChangeSceneObjState_L2V.netId = self:GetUnit():GetNetId()
			_ChangeSceneObjState_L2V.enterState = _tagValue

			self:GetBattleRoom().outputDataSource:ChangeSceneObjStateL2V(_ChangeSceneObjState_L2V)
		elseif _tagType == BattleUnitTagEnum.LifeTimeReset then
			--生命周期重置直接同步，不用存
			local _BattleObjectLifeReset_L2V = {}
			_BattleObjectLifeReset_L2V.netId = self:GetUnit():GetNetId()
			_BattleObjectLifeReset_L2V.objId = self:GetUnit():GetCurrentHeroObjectId()

			self:GetBattleRoom().outputDataSource:ObjectLifeResetL2V(_BattleObjectLifeReset_L2V)
		elseif _tagType == BattleUnitTagEnum.CollectCoinPoints then
			local _CollectorCoinPointsChange_L2V = {}
			_CollectorCoinPointsChange_L2V.netId = self:GetUnit():GetNetId()
			_CollectorCoinPointsChange_L2V.value = _tagValue

			self:GetBattleRoom().outputDataSource:CollectorCoinPointsChangeL2V(_CollectorCoinPointsChange_L2V)
			
			self.__tagDic[_tagType] = _tagValue
		elseif _tagType == BattleUnitTagEnum.CollectCoinNum then
			local _CollectorCoinNumChange_L2V = {}
			_CollectorCoinNumChange_L2V.netId = self:GetUnit():GetNetId()
			_CollectorCoinNumChange_L2V.value = _tagValue

			self:GetBattleRoom().outputDataSource:CollectorCoinNumChangeL2V(_CollectorCoinNumChange_L2V)
			
			self.__tagDic[_tagType] = _tagValue
		elseif _tagType == BattleUnitTagEnum.WarriorState then
			--LogTools.LogByLevel(LogLevel.log, "BattleUnitCom_TagSelector", "self.__tagDic[_tagType]", self.__tagDic[_tagType], "_tagValue", _tagValue)
			--if self.__tagDic[_tagType] ~= _tagValue then
			local _UnitChangeWarriorState_L2V = {}
			_UnitChangeWarriorState_L2V.netId = self:GetUnit():GetNetId()
			_UnitChangeWarriorState_L2V.objId = self:GetUnit():GetCurrentHeroObjectId()
			if 0 ~= _tagValue then
				_UnitChangeWarriorState_L2V.enterState = _tagValue
			end
			if _oldValue and _oldValue ~= 0 then
				_UnitChangeWarriorState_L2V.exitState = _oldValue
			end
			self:GetBattleRoom().outputDataSource:UnitChangeWarriorState_L2V(_UnitChangeWarriorState_L2V)

			self.__tagDic[_tagType] = _tagValue
			--end
		else
			self.__tagDic[_tagType] = _tagValue
		end
		
	end
	--LogTools.LogByLevel(LogLevel.log, "CheckSceneObj", "BattleUnitCom_TagSelector", "ClientReceiveTagChange end")
end
------------------------------------------------------------------------------------------------------------------------
---@public
function BattleUnitCom_TagSelector:GetAllTags()
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "BattleUnitCom_TagSelector", "GetTag start", "self.__tagDic", dumpTableEx(self.__tagDic))
	return self.__tagDic
end

---@public
---@param _tagType BattleUnitTagEnum
function BattleUnitCom_TagSelector:GetTag(_tagType)
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "BattleUnitCom_TagSelector", "GetTag start", "self.__tagDic", dumpTableEx(self.__tagDic))
	return self.__tagDic[_tagType]
end

---@public
---@param _tagType BattleUnitTagEnum
function BattleUnitCom_TagSelector:SetTag(_tagType, _value)
	--LogTools.LogByLevel(LogLevel.log, "CheckLuaBehav", "BattleUnitCom_TagSelector", "SetTag start", "_tagType", _tagType, "_value", _value, "netId", self:GetUnit():GetNetId(), "IsServer()", IsServer())
	self.__oldTags[_tagType] = self.__tagDic[_tagType]
	self.__tagDic[_tagType] = _value
	self.__dirtyTags[_tagType] = _value
	self.__dirty = true
	--LogTools.LogByLevel(LogLevel.log, "CheckSceneObj", "BattleUnitCom_TagSelector", "ClientReceiveTagChange end", "self.__dirtyTags", dumpTableEx(self.__dirtyTags))
end

---@public
function BattleUnitCom_TagSelector:CheckTag(_tagType, _value)
	return self.__tagDic[_tagType] == _value
end

---@public
function BattleUnitCom_TagSelector:Clear()
	self.__tagDic = nil
	self.__dirtyTags = nil
	self.__oldTags = nil
	self.__dirty = nil
	self:__Clear()
end

------------------------------------------------------------------------------------------------------------------------
---服务器逻辑核生成用于发送给前端逻辑核的全量信息
---@public
function BattleUnitCom_TagSelector:GetCreateSyncMessage_S2C()
    local _unitTags = {}
	for _tagType, _tagValue in pairs(self.__tagDic) do
		local _BattleUnitTagInfo = {}
		_BattleUnitTagInfo.tagType = _tagType
		if _tagValue == true then
			_BattleUnitTagInfo.tagValue = 1
		elseif _tagValue == false then
			_BattleUnitTagInfo.tagValue = 1
		else
			_BattleUnitTagInfo.tagValue = _tagValue
		end
		table.insert(_unitTags, _BattleUnitTagInfo)
	end
	return _unitTags
end

---前端逻辑核用服务器发来的全量信息刷新自身数据
---@public
function BattleUnitCom_TagSelector:OnReceiveCreateSyncMessage_S2C(_BattleUnitTagInfoList)
	for _, _BattleUnitTagInfo in pairs(_BattleUnitTagInfoList) do
		local _tagType = _BattleUnitTagInfo.tagType
		if _tagType == BattleUnitTagEnum.LifeTimeReset or _tagType == BattleUnitTagEnum.BeingCollected then
			self.__tagDic[_tagType] = _BattleUnitTagInfo.tagValue == 1
		else
			self.__tagDic[_tagType] = _BattleUnitTagInfo.tagValue
		end
	end
end

---前端逻辑核生成用于发送给表现的层全量信息
---@public
function BattleUnitCom_TagSelector:GetCreateSyncMessage_L2V()
	local _unitTags = {}
	for _tagType, _tagValue in pairs(self.__tagDic) do
		local _BattleUnitTagInfo = {}
		_BattleUnitTagInfo.tagType = _tagType
		if _tagValue == true then
			_BattleUnitTagInfo.tagValue = 1
		elseif _tagValue == false then
			_BattleUnitTagInfo.tagValue = 1
		else
			_BattleUnitTagInfo.tagValue = _tagValue
		end
		table.insert(_unitTags, _BattleUnitTagInfo)
	end
	return _unitTags
end
return BattleUnitCom_TagSelector