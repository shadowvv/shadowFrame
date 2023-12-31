---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by guokun.
--- DateTime: 2022/11/23 12:00

require "Lib/class"
require "Battle/Logic/Room/BattleObject/ActionState/ActionState"

---@class ReloadPreActionState : ActionState 换弹状态
---@field battleRoom BattleRoom 战斗
---@field stateParam StateParameter 状态参数配置
---@field unitType number 单位类型
---@field runTime number 运行时间
---@field switchRule StateSwitchRule 状态互斥规则表
ReloadPreActionState = class(ActionState, 'ReloadPreActionState');

---@param _battleId number 战斗id
---@param _stateParamId number 状态参数配置Id
---@param _unitType number 单位类型
function ReloadPreActionState:ctor(_battleId,_stateParamId,_unitType)
    self.battleRoom = GetBattleRoom(_battleId)
    self.stateParam = self.battleRoom.inputDataSource:GetDict("StateParameter", _stateParamId);
    self.unitType = _unitType;
    self.runTime = 0;
    self.switchRule = self.battleRoom.inputDataSource:GetDict("StateSwitchRule",self:GetId());
end

---@param _forceReload boolean
function ReloadPreActionState:Init(_forceReload, _autoReload)
    ---@type boolean 是否强制换弹（不check状态）
    self.forceReload = _forceReload
    ---@type boolean 是否自动换弹
    self.autoReload = _autoReload
end

--- 切换行为,判断行为的参数正确性
---@param _actionStateManager ActionStateManage 行为管理器
---@param _currentStates ActionState[] 行为管理器
---@param _objectId number 角色id
---@return boolean 是否可进入行为
function ReloadPreActionState:EnterAction(_actionStateManager, _currentStates, _objectId)
    ---@type BattleObjectBase
    local currentObject = _actionStateManager:GetUnit():GetCurrentHeroObject();
    --- @type BattleObjCom_Weapon
    local componentWeapon = currentObject:GetComponent(BattleObjectComponentType.Weapon)
    if componentWeapon:IsInReloadState() then
        return false
    end
    ---@type BattleObjCom_Property
    local componentProperty = currentObject:GetComponent(BattleObjectComponentType.Property)
    if not componentProperty then
        return false
    end

    -- 换弹前时间乘系数
    self.reloadTime = self.stateParam.reloadTime * (1 + tonumber(componentProperty:GetPropertyByName(BattlePropertyEnum.Speed_Add_Reload)));
    -- 换弹总时间
    self.reloadAllTime = (self.stateParam.reloadTime + self.stateParam.reloadBackTime) * 
            (1 + tonumber(componentProperty:GetPropertyByName(BattlePropertyEnum.Speed_Add_Reload)));
    self.runTime = 0;
    -- 进入换弹
    componentWeapon:EnterReloadState(self.reloadAllTime, self.autoReload)
    return true
end

--- 执行行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _objId number 单位对应实体id
function ReloadPreActionState:DoAction(_actionStateManager, _dt, _netId,_objId)
    if self.runTime >= self.reloadTime then
        _actionStateManager:Exit(self);
    end

    self.runTime = self.runTime + _dt;
    -- 如果是过载状态中，再次点击射击按钮，则进入换弹状态
end

--- 退出行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _isBreak boolean 是否为打断退出
---@param _isActive boolean 是否为主动打断
function ReloadPreActionState:ExitAction(_actionStateManager,_isBreak,_isActive)
    local battleRoom = GetBattleRoom(_actionStateManager.battleId)
    -- 打断退出
    if _isBreak then
        ---@type BattleObjectBase
        local currentObject = _actionStateManager:GetUnit():GetCurrentHeroObject();
        --- @type BattleObjCom_Weapon
        local componentWeapon = currentObject:GetComponent(BattleObjectComponentType.Weapon)
        -- 退出换弹
        componentWeapon:ExitReloadState()
        return
    end

    -- 进入换弹后状态
    if self.forceReload or _actionStateManager:TryEnter(ReloadAfterActionState:GetId()) then
        local reloadState = ReloadAfterActionState.New(_actionStateManager.battleId, _actionStateManager.battleUnit:GetStateParamId(), _actionStateManager.battleUnit:GetUnitType());
        if _actionStateManager:Enter(reloadState) then
            _actionStateManager.currentStates[reloadState:GetId()] = reloadState;
        end
    else
        ---@type BattleObjectBase
        local currentObject = _actionStateManager:GetUnit():GetCurrentHeroObject();
        --- @type BattleObjCom_Weapon
        local componentWeapon = currentObject:GetComponent(BattleObjectComponentType.Weapon)
        -- 退出换弹
        componentWeapon:ExitReloadState()
    end
end

-- 是否为主动状态
---@return boolean 是否为主动状态
function ReloadPreActionState:IsActive()
    return true;
end

-- 行为状态Id
---@return number
function ReloadPreActionState:GetId()
    return 17;
end

---获得状态冲突表
---@return StateSwitchRule
function ReloadPreActionState:GetSwitchRule()
    return self.switchRule
end

return ReloadPreActionState;