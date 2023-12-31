---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2023/01/03 16:47
--- Describe: 用于伤害统计
---


------------------------------------------------------------------------------------------------------------------------
---@class HurtCollectorRecord : table
HurtCollectorRecord = class(nil, 'HurtCollectorRecord');
-- 
function HurtCollectorRecord:ctor(_data)
	---@private
	self.__heroId = -1
	
	---技能分ID伤害计数
	---@private
	self.__skillIdHurt = {}
	---技能分类型伤害计数
	---@private
	self.__skillTypeHurt = {}
	
	---物理伤害计数
	---@private
	self.__normalHurt = 0
	---元素伤害总数
	---@private
	self.__eleHurtTotal = 0
	---分ID的元素伤害计数
	---@private
	self.__elementHurt = {}
	---元素反应伤害总数
	---@private
	self.__reactHurtTotal = 0
	---分ID的元素反应伤害计数
	---@private
	self.__reactHurt = {}
	
	---所有伤害总数
	---@private
	self.__totalHurt = 0
end

---@public
---@param _battleRoom BattleRoom
---@return string
function HurtCollectorRecord:Print(_battleRoom)
	
	local _str = ""
	_str = _str .."\t" .."总伤害：" ..self.__totalHurt .."\n"
	for _skillType, _hurtNum in pairs(self.__skillTypeHurt) do
		_str = _str .."\t" .."技能类型【" .._skillType .."】【" ..GetSkillTypeNameById(_skillType) .."】伤害：" .._hurtNum ..", 占比：" ..math.floor(_hurtNum/self.__totalHurt * 10000)*0.01 .."\n"
	end
	for _skillId, _hurtNum in pairs(self.__skillIdHurt) do
		_str = _str .."\t" .."技能ID【" .._skillId .."】伤害：" .._hurtNum ..", 占比：" ..math.floor(_hurtNum/self.__totalHurt * 10000)*0.01 .."\n"
	end
	_str = _str .."\t" .."物理伤害：" ..self.__normalHurt ..", 占比：" ..math.floor(self.__normalHurt/self.__totalHurt * 10000)*0.01 .."\n"
	_str = _str .."\t" .."元素总伤害：" ..self.__eleHurtTotal ..", 占比：" ..math.floor(self.__eleHurtTotal/self.__totalHurt * 10000)*0.01 .."\n"
	for _elementId, _hurtNum in pairs(self.__elementHurt) do
		_str = _str .."\t" .."元素ID【" .._elementId .."】【" ..GetBattleElementNameById(_elementId) .."】伤害：" .._hurtNum ..", 占比：" ..math.floor(_hurtNum/self.__totalHurt * 10000)*0.01 .."\n"
	end
	_str = _str .."\t" .."元素反应总伤害：" ..self.__reactHurtTotal ..", 占比：" ..math.floor(self.__reactHurtTotal/self.__totalHurt * 10000)*0.01 .."\n"
	for _reactionId, _hurtNum in pairs(self.__reactHurt) do
		---@type ElementalReaction
		local _reactXls = _battleRoom.inputDataSource:GetDict("ElementalReaction", _reactionId)
		_str = _str .."\t" .."元素反应ID【" .._reactionId .."】【" .._reactXls.reactionType .."】伤害：" .._hurtNum ..", 占比：" ..math.floor(_hurtNum/self.__totalHurt * 10000)*0.01 .."\n"
	end
	return _str
end

---@public
---@param _battleRoom BattleRoom
---@param _hurtChannelType HurtChannelType
---@param _unitHurtInfoS2C table msg.UnitHurtInfo_S2C
---@param _originalSkillId number 初始技能ID
function HurtCollectorRecord:RefreshRecord(_battleRoom, _hurtChannelType, _unitHurtInfoS2C, _originalSkillId)
	local _hurtNum = _unitHurtInfoS2C.num
	self.__totalHurt = self.__totalHurt + _hurtNum

	if _hurtChannelType == HurtChannelType.Normal then
		self.__normalHurt = self.__normalHurt + _hurtNum
	elseif _hurtChannelType == HurtChannelType.Element then
		local _elementId = _unitHurtInfoS2C.hurtEleType
		local _eleHurtRecord = self.__elementHurt[_elementId] or 0
		self.__elementHurt[_elementId] = _eleHurtRecord + _hurtNum
		self.__eleHurtTotal = self.__eleHurtTotal + _hurtNum
	else
		local _reactionId = _unitHurtInfoS2C.reactionType
		local _reactHurtRecord = self.__reactHurt[_reactionId] or 0
		self.__reactHurt[_reactionId] = _reactHurtRecord + _hurtNum
		self.__reactHurtTotal = self.__reactHurtTotal + _hurtNum
	end

	--只有非元素反应类的伤害才会记录到原始技能伤害统计里
	if not _unitHurtInfoS2C.isEleReaction then
		local _skillIdHurtRecord = self.__skillIdHurt[_originalSkillId] or 0
		self.__skillIdHurt[_originalSkillId] = _skillIdHurtRecord + _hurtNum
		---@type Skill
		local _skillXls = _battleRoom.inputDataSource:GetDict("Skill", _originalSkillId)
		if not _skillXls then return end
		local _skillType = _skillXls.skillType
		local _skillTypeHurtRecord = self.__skillTypeHurt[_skillType] or 0
		self.__skillTypeHurt[_skillType] = _skillTypeHurtRecord + _hurtNum
	end

end
------------------------------------------------------------------------------------------------------------------------
---@class HurtCollectorUtil : table
HurtCollectorUtil = class(nil, "HurtCollectorUtil")
function HurtCollectorUtil:ctor(_data) end
function HurtCollectorUtil:OnUpdate(_deltaTime) end

---@param _battleRoom BattleRoom
function HurtCollectorUtil:Init(_battleRoom)
	---@private
	---@type HurtCollectorRecord[]
	self.__hurtRecordDic = {}
	---@private
	---@type BattleRoom
	self.__battleRoom = _battleRoom
end

---添加伤害统计信息
---@public
---@param _hurtChannelType HurtChannelType
---@param _unitHurtInfoS2C table msg.UnitHurtInfo_S2C
---@param _originalSkillId number 初始技能ID
function HurtCollectorUtil:PushHurtMessage(_hurtChannelType, _unitHurtInfoS2C, _originalSkillId)
	--LogTools.LogByLevel(LogLevel.log, "CheckSummonedMons", "HurtCollectorUtil:PushHurtMessage", "_hurtChannelType", _hurtChannelType, "_unitHurtInfoS2C", dumpTableEx(_unitHurtInfoS2C), "_originalSkillId", _originalSkillId)
	if not _originalSkillId then
		if CheckLogLevel(LogLevel.logErr) then
			LogTools.LogByLevel(LogLevel.logErr, "CheckSummonedMons", "HurtCollectorUtil:PushHurtMessage", "_originalSkillId is nil", "_unitHurtInfoS2C", dumpTableEx(_unitHurtInfoS2C))
		end
		return
	end
	
	local _fromObj = self:GetBattleRoom().battleObjectManager:GetObject(_unitHurtInfoS2C.fromObjId)
	if not _fromObj then return end

	--LogTools.LogByLevel(LogLevel.log, "CheckSummonedMons", "HurtCollectorUtil:PushHurtMessage", "_fromObj:getobjtype", LogTools.GetEnumTableDesc(BattleObjectType, _fromObj:GetObjectType()), "_fromObj:CheckObjectType(BattleObjectType.SummonedMons)", _fromObj:CheckObjectType(BattleObjectType.SummonedMons))
	if _fromObj:CheckObjectType(BattleObjectType.SummonedMons) then
		--LogTools.LogByLevel(LogLevel.log, "CheckSummonedMons", "HurtCollectorUtil:PushHurtMessage", "_fromObj:CheckObjectType(BattleObjectType.SummonedMons)")
		---@type BattleUnitCom_Subordination
		local _subordCom = _fromObj:GetParentUnit():GetComponent(BattleUnitComponentType.Subordination)
		
		local _leaderId = _subordCom:GetSubordinatedObject():GetDataInstanceXls().id
		local _collectorRecord = self.__hurtRecordDic[_leaderId]
		if not _collectorRecord then
			---@type HurtCollectorRecord
			_collectorRecord = HurtCollectorRecord.New()
			self.__hurtRecordDic[_leaderId] = _collectorRecord
		end
		--LogTools.LogByLevel(LogLevel.log, "CheckSummonedMons", "BattleCreateUnitParam:InitSummonedMons", "_leaderId", _leaderId, "_fromObj:GetParentUnit():GetOriginalHeroSkillId()", _fromObj:GetParentUnit():GetOriginalHeroSkillId())
		_collectorRecord:RefreshRecord(self.__battleRoom, _hurtChannelType, _unitHurtInfoS2C, _fromObj:GetParentUnit():GetOriginalHeroSkillId())
	elseif _fromObj:CheckObjectType(BattleObjectType.LeaderHero) then
		local _leaderId = _fromObj:GetDataInstanceXls().id
		local _collectorRecord = self.__hurtRecordDic[_leaderId]
		if not _collectorRecord then
			---@type HurtCollectorRecord
			_collectorRecord = HurtCollectorRecord.New()
			self.__hurtRecordDic[_leaderId] = _collectorRecord
		end
		_collectorRecord:RefreshRecord(self.__battleRoom, _hurtChannelType, _unitHurtInfoS2C, _originalSkillId)
	end
	
end

---打印伤害统计信息
---@public
function HurtCollectorUtil:PrintHurtMessage()
	if not CheckLogLevel(LogLevel.log) then return end


	local _str = "伤害统计打印：" .."\n\n"
	for _leaderId, _record in pairs(self.__hurtRecordDic) do
		---@type Leader
		local _leaderXls = self.__battleRoom.inputDataSource:GetDict("Leader", _leaderId)
		_str = _str .."LeaderId:  " .._leaderId .." 【" .._leaderXls.name .."】" ..": \n"
		_str = _str .._record:Print(self.__battleRoom)
		_str = _str .."\n\n"
	end
	
	 local file = io.open("D:/THD_HurtCollectLog.txt","a+")
	io.output(file)
	io.write(_str)
	io.close(file)
	LogTools.LogByLevel(LogLevel.logErr, _str)
end

---@public
---@return BattleRoom
function HurtCollectorUtil:GetBattleRoom()
	return self.__battleRoom
end
return HurtCollectorUtil