---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/1/27 15:36
--- 行为树Action

BEHAVIOR_ACTION = {};

-----------------------------------------------关卡行为树接口-------------------------------------------------------------
-- 关卡计时器操作
function BEHAVIOR_ACTION.LevelTimerOperation(_battleId, _operationType)
    if LuaBehav_Define.LocalLuaDebug then
        return true
    end

    local battleRoom = GetBattleRoom(_battleId)
    if LuaBehav_Define_LevelTimerOperationType.Start == _operationType then
        battleRoom.behaviorProcessor:OnBattleStart();
    elseif LuaBehav_Define_LevelTimerOperationType.Pause == _operationType then
        battleRoom.behaviorProcessor:OnBattlePause();
    elseif LuaBehav_Define_LevelTimerOperationType.Resume == _operationType then
        battleRoom.behaviorProcessor:OnBattleResume();
    elseif LuaBehav_Define_LevelTimerOperationType.Reset == _operationType then
        battleRoom.behaviorProcessor:OnBattleReset();
    end

    return true
end


-- 关卡投放所有玩家英雄
-- _id 为nil时表示所有玩家按照编队显示默认英雄，不为nil时表示所有玩家都为指定 leaderId 的英雄
function BEHAVIOR_ACTION.LevelDropAllPlayerHeroes(_battleId, _leaderId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION","LevelDropAllPlayerHeroes", "_leaderId", _leaderId)
    if LuaBehav_Define.LocalLuaDebug then return true end
    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:CreateAllPlayerUnit(_leaderId)
    return true
end

-- 关卡投放表演类英雄
-- 不带玩家真实数据，只包含表数据
function BEHAVIOR_ACTION.LevelDropPerformanceHero(_battleId, _param)
    if LuaBehav_Define.LocalLuaDebug then return true end

    return true
end

-- 关卡投放怪物
function BEHAVIOR_ACTION.LevelDropMons(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelDropMons", "_param", dumpTableEx(_param))
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:CreateMonster(_param)
    return true
end

-- 关卡投放单位
function BEHAVIOR_ACTION.LevelDropUnit(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelDropUnit", "_param", dumpTableEx(_param))
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:CreateLevelUnit(_param)
    return true
end

-- 关卡强制胜利失败
function BEHAVIOR_ACTION.LevelForceEnd(_battleId, _result)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelForceEnd", "_param", _result)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelForceEnd(_result)
    return true
end

-- 关卡播放剧情
function BEHAVIOR_ACTION.LevelPlayPlot(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelPlayPlot", "_param", dumpTableEx(_param))
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelPlayPlot(_param)
    return true
end

-- 关卡打开高能预警UI
function BEHAVIOR_ACTION.LevelOpenWarningUi(_battleId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelOpenWarningUi")
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelOpenWarningUi()
    return true
end

-- 关卡关闭高能预警UI
function BEHAVIOR_ACTION.LevelCloseWarningUi(_battleId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelCloseWarningUi")
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelCloseWarningUi()
    return true
end

-- 关卡打开战斗内通讯UI
function BEHAVIOR_ACTION.LevelOpenBattleCommunication(_battleId, _talkGroupId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelOpenBattleCommunication", "_talkGroupId", _talkGroupId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelOpenBattleCommunication(_talkGroupId)
    return true
end

-- 关卡控制AI
function BEHAVIOR_ACTION.LevelOperateAi(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelOperateAi", "_param", dumpTableEx(_param))
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelOperateAi(_param)
    return true
end

-- 关卡强制杀死单位
function BEHAVIOR_ACTION.LevelKillUnit(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelKillUnit", "_param", dumpTableEx(_param))
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelKillUnit(_param)
    return true
end

-- 关卡设置单位属性
function BEHAVIOR_ACTION.LevelSetUnitProp(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelSetUnitProp", "_param", dumpTableEx(_param))
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelSetUnitProp(_param)
    return true
end

-- 移除关卡触发器
function BEHAVIOR_ACTION.LevelRemoveTrigger(_battleId, _id)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelRemoveTrigger", "_id", _id)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelRemoveTrigger(_id)
    return true
end

-- 移除目标点
function BEHAVIOR_ACTION.LevelRemoveTargetPoint(_battleId, _levelUnitId, _forceKiller)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelRemoveTargetPoint", "_levelUnitId", _levelUnitId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelRemoveTargetPoint(_levelUnitId, _forceKiller)
    return true
end

-- 关卡触发新手引导UI操作
function BEHAVIOR_ACTION.LevelTrigGuideUIOperate(_battleId, _inBattleGuideId, _operType)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelTrigUIOperate", "_inBattleGuideId", _inBattleGuideId, "_operType", _operType)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelTrigGuideUIOperate(_inBattleGuideId, _operType)
    return true
end

-- 关卡触发一般UI操作
function BEHAVIOR_ACTION.LevelTrigNormalUIOperate(_battleId, _uiId, _textId, _operType, _duration, _placeholder)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelTrigUIOperate", "_inBattleGuideId", _inBattleGuideId, "_operType", _operType)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelTrigNormalUIOperate(_uiId, _textId, _operType, _duration, _placeholder)
    return true
end

-- 关卡触发玩家控制器操作
function BEHAVIOR_ACTION.LevelTrigControllerOperate(_battleId, _controllerIdList, _operType)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelTrigControllerOperate", "_controllerIdList", dumpTableEx(_controllerIdList), "_operType", _operType)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelTrigControllerOperate(_controllerIdList, _operType)
    return true
end

-- 关卡操作单位buff
function BEHAVIOR_ACTION.LevelTrigUnitBuff(_battleId, _targetType, _targetId, _buffGroupId, _operType, _stackNum, _isUnitBuff)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelTrigControllerOperate", "_targetType", _targetType, "_targetId", _targetId, "_buffGroupId", _buffGroupId, "_operType", _operType, "_stackNum", _stackNum)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelTrigUnitBuff(_targetType, _targetId, _buffGroupId, _operType, _stackNum, _isUnitBuff)
    return true
end

-- 关卡切换场景物件状态
function BEHAVIOR_ACTION.LevelChangeSceneObjState(_battleId, _levelUnitId, _stateId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelChangeSceneObjState", "_levelUnitId", _levelUnitId, "_stateId", _stateId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelChangeSceneObjState(_levelUnitId, _stateId)
    return true
end

-- 关卡删除场景物件
function BEHAVIOR_ACTION.LevelRemoveSceneObj(_battleId, _levelUnitId, _forceKiller)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelRemoveSceneObj", "_levelUnitId", _levelUnitId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelRemoveSceneObj(_levelUnitId, _forceKiller)
    return true
end

-- 关卡切换BGM
function BEHAVIOR_ACTION.LevelChangeBGM(_battleId, _id)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelChangeBGM", "_id", _id)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelChangeBGM(_id)
    return true
end

-- 关卡修改波次
function BEHAVIOR_ACTION.LevelSetWaveValue(_battleId, _value)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelSetWaveValue", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:LevelSetWaveValue(_value)
    return true
end

-- 关卡标签操作
function BEHAVIOR_ACTION.LevelTagOperate(_battleId, _tag, _operType, _value)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelTagOperate", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:LevelTagOperate(_tag, _operType, _value)
    return true
end

-- 关卡强制杀死指定关卡触发器中的单位
function BEHAVIOR_ACTION.LevelKillUnitInTrigger(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelKillUnitInTrigger", "_param", dumpTableEx(_param))
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:LevelKillUnitInTrigger(_param)
    return true
end

-- 关卡修改倒计时
function BEHAVIOR_ACTION.LevelChangeTimeCount(_battleId, _value)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelChangeTimeCount", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:LevelChangeTimeCount(_value)
    return true
end

-- 关卡打断单位技能
---@public
function BEHAVIOR_ACTION.LevelBreakMonsSkill(_battleId, _targetType, _idList)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelBreakMonsSkill", "_targetType", _targetType, "_idList", dumpTableEx(_idList))
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:LevelBreakMonsSkill(_targetType, _idList)
    return true
end
-----------------------------------------------怪物行为树接口-------------------------------------------------------------

-- 怪物进入死亡状态
function BEHAVIOR_ACTION.MonsDeath(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsDeath")
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsDead(_param)
    return true
end

-- 怪物进入巡逻状态
---@param _param LuaBehav_MonsPatrolParam
function BEHAVIOR_ACTION.MonsPatrol(_battleId, _param)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsPatrol")
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsPatrol(_param)
    return true
end

-- 怪物离开巡逻状态
---@param _param LuaBehav_MonsPatrolParam
function BEHAVIOR_ACTION.MonsPatrolEnd(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsPatrolEnd", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsPatrolEnd(_netId)
    return true
end

-- 怪物选择目标
function BEHAVIOR_ACTION.MonsSelectTarget(_battleId, _param)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsSelectTarget")
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsSelectTarget(_param)
    return true
end

-- 怪物追逐当前目标（靠近目标）
function BEHAVIOR_ACTION.MonsChaseCurTarget(_battleId, _netId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsChaseCurTarget", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsChaseTarget(_netId)
    return true
end

-- 怪物停止追逐当前目标（靠近目标）
function BEHAVIOR_ACTION.MonsStopChaseCurTarget(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsStopChaseCurTarget", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsStopChaseTarget(_netId)
    return true
end

-- 召唤物跟随召唤者
function BEHAVIOR_ACTION.MonsChaseSubordinate(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsChaseSubordinate", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsChaseSubordinate(_param)
    return true
end

-- 停止跟随召唤者
function BEHAVIOR_ACTION.MonsStopChaseSubordinate(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsStopChaseSubordinate", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsStopChaseSubordinate(_netId)
    return true
end

-- 怪物远离当前目标
function BEHAVIOR_ACTION.MonsEscapeCurTarget(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsEscapeCurTarget", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsEscapeTarget(_netId)
    return true
end

-- 怪物停止远离当前目标
function BEHAVIOR_ACTION.MonsStopEscapeCurTarget(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsStopEscapeCurTarget", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsStopEscapeTarget(_netId)
    return true
end

-- 怪物指定移动
---@param _param LuaBehav_MonsMoveTowardsParam
function BEHAVIOR_ACTION.MonsMoveTowards(_battleId, _param)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsMoveTowards", "_netId",_param.netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsMoveTowards(_param)
    return true
end

-- 怪物停止指定移动
function BEHAVIOR_ACTION.MonsStopMoveTowards(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsMoveTowards", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsStopMoveTowards(_netId)
    return true
end

-- 怪物平移
---@param _battleId number
---@param _param LuaBehav_MonsMoveTowards_2_Param
function BEHAVIOR_ACTION.MonsMoveTowards_2(_battleId, _param)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsMoveTowards_2", "_netId",_param.netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsMoveTowards_2(_param)
    return true
end

-- 怪物停止平移
function BEHAVIOR_ACTION.MonsStopMoveTowards_2(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsStopMoveTowards_2", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsStopMoveTowards_2(_netId)
    return true
end

-- 怪物转向当前目标
function BEHAVIOR_ACTION.MonsFaceCurTarget(_battleId, _netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsFaceTarget(_netId)
    return true
end

-- 怪物停止转向当前目标
function BEHAVIOR_ACTION.MonsStopFaceCurTarget(_battleId, _netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsStopFaceTarget(_netId)
    return true
end

-- 导航点移动
---@param _battleId number
---@param _param LuaBehav_MonsMoveNavPointsParam
function BEHAVIOR_ACTION.MonsMoveNavPoints(_battleId, _param)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsMoveNavPoints", "_netId",_param.netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsMoveNavPoints(_param)
    return true
end

-- 停止导航点移动
---@param _battleId number
function BEHAVIOR_ACTION.MonsStopMoveNavPoints(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsStopMoveNavPoints", "_netId", _netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsStopMoveNavPoints(_netId)
    return true
end

-- 怪物调整高度
function BEHAVIOR_ACTION.MonsStartFixHeight(_battleId, _netId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsStartFixHeight", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsStartFixHeight(_netId)
    return true
end

-- 怪物停止调整高度
function BEHAVIOR_ACTION.MonsStopFixHeight(_battleId, _netId)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsStopFixHeight", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsStopFixHeight(_netId)
    return true
end

-- 怪物施放技能
---@public
---@param _param LuaBehav_MonsCastSkillParam
function BEHAVIOR_ACTION.MonsCastSkill(_battleId, _param)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsMoveTowards", "_netId",_param.netId, "skillId", _param.skillId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    return battleRoom.behaviorProcessor:MonsCastSkill(_param)
end

-- 创建召唤物
---@public
---@param _param LuaBehav_MonsCastSkillParam
function BEHAVIOR_ACTION.UnitCallSummoned(_battleId, _summonedDicId, _netId, _objId, _originalSkillId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "UnitCallSummoned", "_netId", _netId, "_objId", _objId, "_summonedDicId", _summonedDicId, "_originalSkillId", _originalSkillId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    return battleRoom.behaviorProcessor:CreateSummonedMonsUnit(_summonedDicId, _netId, _objId, _originalSkillId)
end

-- 怪物打断技能
---@public
function BEHAVIOR_ACTION.MonsBreakSkill(_battleId, _netId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsBreakSkill", "_netId",_netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsBreakSkill(_netId)
    return true
end

-- 怪物使用添加buff
---@param _param LuaBehav_MonsAddBuffParam
function BEHAVIOR_ACTION.MonsOperateBuff(_battleId, _param)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsOperateBuff(_param)
    return true
end

-- 怪物向范围内添加buff
function BEHAVIOR_ACTION.MonsAddBuffInBoundary(_battleId, _netId, _radius, _selectType, _selectParam, _buffGroupId, _isUnitBuff)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsAddBuffInBoundary(_netId, _radius, _selectType, _selectParam, _buffGroupId, _isUnitBuff)
    return true
end

-- 清除最后伤害者记录
function BEHAVIOR_ACTION.MonsClearLastHurtFromTag(_battleId, _netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsClearLastHurtFromTag(_netId)
    return true
end

-- 怪物指定转向
---@param _spaceType LuaBehav_Define_SpaceType
---@param _posShift Vector3
function BEHAVIOR_ACTION.MonsRotateTowards(_battleId, _netId, _spaceType, _posShift)
    if LuaBehav_Define.LocalLuaDebug then return true end

    return true
end

-- 获取怪物属性值
---返回值1：调用是否成功  返回值2：获取到的具体值
function BEHAVIOR_ACTION.GetMonsProp(_battleId, _netId, _propId, _valueDescType)
	local battleRoom = GetBattleRoom(_battleId)
    local _unit = battleRoom.battleUnitManager:GetUnit(_netId)
	if not _unit then return false end
	
	local _propValue = _unit:GetPropertyById(_propId)
	if _valueDescType == LuaBehav_Define_ValueDesType.SpecificValue then
		--数值
		return true, _propValue
	else
		--数值百分比
        ---@type BattleObjCom_Property
        local _propCom = _unit:GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Property)
        return true, _propCom:GetPropertyPercentById(_propId)
	end
end

-- 获取obj属性值
---返回值1：调用是否成功  返回值2：获取到的具体值
function BEHAVIOR_ACTION.GetObjectProp(_battleId, _objId, _propId, _valueDescType)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "GetObjectProp", "_objId", _objId, "_propId", _propId, "_valueDescType", LogTools.GetEnumTableDesc(LuaBehav_Define_ValueDesType, _valueDescType))

    local battleRoom = GetBattleRoom(_battleId)
    local _obj = battleRoom.battleObjectManager:GetObject(_objId)
    if not _obj then return false end
    ---@type BattleObjCom_Property
    local _propCom = _obj:GetComponent(BattleObjectComponentType.Property)
    if not _propCom then return false end
    
    if _valueDescType == LuaBehav_Define_ValueDesType.SpecificValue then
        --数值
        return true, _propCom:GetPropertyById(_propId)
    else
        --数值百分比
        return true, _propCom:GetPropertyPercentById(_propId)
    end
end

-- 设置怪物属性值
function BEHAVIOR_ACTION.SetMonsProp(_battleId, _param)
	--LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "SetMonsProp", "_param", dumpTableEx(_param))
	if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:MonsSetProperty(_param)
    return true
end

-- 怪物开始切换阶段
function BEHAVIOR_ACTION.MonsStartChangeStage(_battleId, _netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsStartChangeStage(_netId)
    return true
end

-- 怪物进入下一血量阶段
function BEHAVIOR_ACTION.MonsChangeStage(_battleId, _netId)
	--LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsChangeStage", "_netId", _netId)
	if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsChangeStage(_netId)
    return true
end

-- 修改stateParamId
---@param _param LuaBehav_MonsChangeStateParamIdParam
function BEHAVIOR_ACTION.MonsChangeStateParamId(_battleId, _param)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsChangeStateParamId")
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsChangeStateParamId(_param)
    return true
end

-- 战场物件修改自身状态
---@public
---@param _battleId number
function BEHAVIOR_ACTION.SceneObjChangeSelfState(_battleId, _netId, _stateId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "SceneObjChangeSelfState", "_stateId", _stateId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:SceneObjChangeSelfState(_netId, _stateId)
    return true
end

-- 修改旋转轴锁定
---@public
function BEHAVIOR_ACTION.MonsRotateAxisLock(_battleId, _netId, _axisLockType)
    ----LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsRotateAxisLock")
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsRotateAxisLock(_netId, _axisLockType)
    return true
end

-- 怪物施放技能
---@public
function BEHAVIOR_ACTION.MonsChangeBlockState(_battleId, _netId, _blockId, _stateId, _weaknessId)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsChangeBlockState", "_netId", _netId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsChangeBlockState(_netId, _blockId, _stateId, _weaknessId)
    return true
end

-- 场景物件修改采集者金币积分
---@public
function BEHAVIOR_ACTION.SceneObjChangeCoinPoints(_battleId, _netId, _operType, _value)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "SceneObjChangeCoinPoints", "_netId", _netId)
	if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
	battleRoom.behaviorProcessor:SceneObjChangeCoinPoints(_netId, _operType, _value)
    return true
end

-- 怪物切换勇士状态
---@public
---@param _battleId number
function BEHAVIOR_ACTION.MonsChangeWarriorState(_battleId, _netId, _isOpen)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "MonsChangeWarriorState", "_netId", _netId, "_isOpen", _isOpen)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:MonsChangeWarriorState(_netId, _isOpen)
    return true
end

-- 单位主动掉落
---@public
---@param _battleId number
function BEHAVIOR_ACTION.UnitCallFallingDown(_battleId, _netId, _fallingId, _num, _posShift, _shiftSpace)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "UnitCallFallingDown", "_netId", _netId, "_fallingId", _fallingId)
    if LuaBehav_Define.LocalLuaDebug then return true end

    local battleRoom = GetBattleRoom(_battleId)
    battleRoom.behaviorProcessor:UnitCallFallingDown(_netId, _fallingId, _num, _posShift, _shiftSpace)
    return true
end
------------------------------------------------------------------------------------------------------------------------
-- 触发新手引导
function BEHAVIOR_ACTION.TrigBattleGuide(_battleId, _guideId, _trigType)
    --LogTools.LogByLevel(LogLevel.log, "BEHAVIOR_ACTION", "LevelRemoveTrigGuide", "_guideId", _guideId, "_trigType", _trigType)
    if LuaBehav_Define.LocalLuaDebug then return true end
    local battleRoom = GetBattleRoom(_battleId)
    local _unitList = battleRoom.battleUnitManager:GetUnitListByUnitType(BattleUnitType.Player)
    ---@type BattleUnit_Player
    local _unit = _unitList[1]
    if not _unit then return false end

    if battleRoom.battleGuideManager:CheckGuideComplete(_unit:GetPlayerId(), _guideId) then return true end
    battleRoom.behaviorProcessor:TrigBattleGuide(_guideId, _trigType)
    return true
end