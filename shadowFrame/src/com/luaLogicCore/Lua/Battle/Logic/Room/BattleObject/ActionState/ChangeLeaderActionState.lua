---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/1/19 14:59


---@class ChangeLeaderActionState:ActionState
---@field battleRoom BattleRoom 战斗
---@field stateParam StateParameter 状态参数配置
---@field unitType number 单位类型
ChangeLeaderActionState = class(ActionState, 'ChangeLeaderActionState');

---@param _battleId number 战斗id
---@param _stateParamId number 状态参数配置Id
---@param _unitType number 单位类型
---@param _objectId number objectId
function ChangeLeaderActionState:ctor(_battleId, _stateParamId, _unitType, _objectId)
    self.battleRoom = GetBattleRoom(_battleId)
    self.stateParam = self.battleRoom.inputDataSource:GetDict("StateParameter", _stateParamId);
    self.unitType = _unitType;
    self.objectId = _objectId

    ---@type BattleDefault
    local changeLeaderCdTable = self.battleRoom.inputDataSource:GetDict("BattleDefault", BATTLE_CONST.CHANGE_LEADER_CD_ID)
    self.changeLeaderCd = changeLeaderCdTable.value3 * 1000
end

-- 切换行为
---@param _actionStateManager ActionStateManage
---@return boolean
function ChangeLeaderActionState:EnterAction(_actionStateManager)
    ---@type ActionState
    local super = self.super
    if not super:EnterAction(_actionStateManager) then
        return false;
    end
    ---@type BattleUnitBase
    local _playerUnit = _actionStateManager:GetUnit()
    local _curHeroObject = _playerUnit:GetCurrentHeroObject()

    if not _curHeroObject:CheckDead() and not _playerUnit:CheckChangeLeaderEnable() then
        return false
    end

    -- 检测玩家切换CD,（角色死亡是自动切换角色，不用检测CD）
    if not _curHeroObject:CheckDead() and _actionStateManager.changeLeaderTime > 0 then
        if _actionStateManager.changeLeaderTime + self.changeLeaderCd > TimeUtils.battleNow(_actionStateManager.battleId) then
            return false
        end
    end

    -- 判断玩家是否有这个角色
    if not _playerUnit:CheckHasObjectId(self.objectId) then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.Error("ChangeLeaderAction", "玩家没有角色" .. tostring(self.objectId))
        end
        return false
    end

    -- 判断玩家是否当前已经是要切换的角色
    if not _playerUnit:GetCurrentHeroObjectId() == self.objectId then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.Error("ChangeLeaderAction", "玩家当前已经是要切换的角色" .. tostring(self.objectId))
        end
        return false
    end
    -- 记录角色切换时间
    _actionStateManager.changeLeaderTime = TimeUtils.battleNow(_actionStateManager.battleId)
    return true
end

-- 执行行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _objId number 单位对应实体id
---@return table 执行行为输出数据
function ChangeLeaderActionState:DoAction(_actionStateManager, _dt, _netId, _objId)
    ---@type BattleUnit_Player
    local _playerUnit = _actionStateManager:GetUnit()

    local _oldObjectId = _playerUnit:GetCurrentHeroObjectId()
    local _oldObject = _playerUnit:GetCurrentHeroObject()

    local changeLeaderBuffList = {}
    -- 上阵角色获得buff
    if _oldObject then
        ---@type BattleObjCom_Buff
        local _comBuff = _oldObject:GetComponent(BattleObjectComponentType.Buff)
        for i,v in pairs(_comBuff:GetBuffChangeLeader()) do
            table.insert(changeLeaderBuffList, v)
        end
        _comBuff:ClearBuffChangeLeader()
    end
    
    _playerUnit:ChangeCurrentHeroObject(self.objectId)

    -- 死亡切换角色，新角色添加buff
    if _oldObject:CheckDead() then
        local _curHeroObject = _playerUnit:GetCurrentHeroObject()
        if _curHeroObject then
            ---@type BattleObjCom_Buff
            local _comBuff = _curHeroObject:GetComponent(BattleObjectComponentType.Buff)
            ---@type BattleDefault
            local _buffCfg = self.battleRoom.inputDataSource:GetDict("BattleDefault", BATTLE_CONST.DEAD_CHANGE_LEADER_BUFF_ID)
            if _comBuff and _buffCfg then
                local _buffId = _buffCfg.value
                _comBuff:AddBattleBuffById(_buffId, nil, nil)
            end
        end
    end

    -- 上阵角色获得buff
    local _curHeroObject = _playerUnit:GetCurrentHeroObject()
    if _curHeroObject then
        ---@type BattleObjCom_Buff
        local _comBuff = _curHeroObject:GetComponent(BattleObjectComponentType.Buff)
        for i,v in pairs(changeLeaderBuffList) do
            _comBuff:AddBattleBuff(v)
        end
        changeLeaderBuffList = nil
    end

    -- 新切换角色立即换弹
    _actionStateManager:ReloadImmediately()

    _actionStateManager:Exit(self)
    _actionStateManager:Idle()

    local battleRoom = _playerUnit:GetBattleRoom()

    -- 触发切换角色事件
    battleRoom.battleLogicEventService:OnTriggerChangeLeaderEvent(_oldObjectId, self.objectId, _netId)
    battleRoom.behaviorProcessor:RemoveManagedSubodinationOfUnit(BattleSubordinationDeadTrigType.ChangeLeader, _netId)

    if IsServer() then
        self.battleRoom.battleUnitManager:PlayerChangeLeaderS2C(_playerUnit:GetNetId(), self.objectId)
    end
    
    if CheckLogLevel(LogLevel.log) then
        LogTools.LogByLevel(LogLevel.log, "ChangeLeaderActionState", "DoAction", "_netId", _netId, "_oldObjectId", _oldObjectId, "_objId", _playerUnit:GetCurrentHeroObjectId(), "_playerChangeLeader_S2C", dumpTableEx(_playerChangeLeader_S2C))
    end
    return
end

-- 退出行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _isBreak boolean 是否为打断退出
---@param _isActive boolean 是否为主动打断
function ChangeLeaderActionState:ExitAction(_actionStateManager, _isBreak, _isActive)
    _actionStateManager.currentLeaderUseTime = 0;
end

-- 是否为主动状态
---@return boolean 是否为主动状态
function ChangeLeaderActionState:IsActive()
    return true;
end

---@return number
function ChangeLeaderActionState:GetId()
    return 15;
end

---获得状态冲突表
---@return StateSwitchRule
function ChangeLeaderActionState:GetSwitchRule()
    return self.battleRoom.inputDataSource:GetDict("StateSwitchRule",self:GetId());
end

return ChangeLeaderActionState