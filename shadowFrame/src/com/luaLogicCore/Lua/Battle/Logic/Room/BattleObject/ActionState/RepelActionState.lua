---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/3/30 16:10

require "Lib/class"
require "Battle/Logic/Room/BattleObject/ActionState/ActionState"

---@class RepelActionState : ActionState
---@field battleRoom BattleRoom 战斗
---@field stateParam StateParameter 状态参数配置
---@field unitType number 单位类型
RepelActionState = class(ActionState, 'RepelActionState');

---@param _battleId number 战斗id
---@param _stateParamId number 状态参数配置id
---@param _unitType number 单位类型
function RepelActionState:ctor(_battleId, _stateParamId, _unitType,_repelDirection, _repelId)
    self.battleRoom = GetBattleRoom(_battleId)
    self.stateParam = self.battleRoom.inputDataSource:GetDict("StateParameter", _stateParamId);
    self.unitType = _unitType;
    self.repelDirection = self.battleRoom.vector3Pool:Pop(_repelDirection)
    self.repelId = _repelId;
end

-- 切换行为,判断行为的参数正确性
---@param _actionStateManager ActionStateManage 行为管理器
---@return boolean 是否可进入行为
function RepelActionState:EnterAction(_actionStateManager)
    ---@type BattleUnitCom_Buff
    local unitBuffCom = _actionStateManager:GetUnit():GetComponent(BattleUnitComponentType.Buff);
    if unitBuffCom and unitBuffCom:IsEndure() then
        return false;
    end

    ---@type BattleObjectBase
    local object = _actionStateManager:GetUnit():GetCurrentHeroObject();
    ---@type BattleObjCom_Buff
    local buffCom = object:GetComponent(BattleObjectComponentType.Buff)
    if buffCom and buffCom:IsEndure() then
        return false;
    end
    self.runTime = 0
    ---@type BattleObjCom_Buff
    local buffComp = _actionStateManager:GetUnit():GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Buff);
    if buffComp then
        buffComp:AddBattleBuffById(15, nil, nil);
    end
    return true;
end

-- 执行行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _objId number 单位对应实体id
function RepelActionState:DoAction(_actionStateManager, _dt, _netId,_objId)
    local currentV = _actionStateManager:GetVelocity();
    local currentDirection = _actionStateManager:GetRotation();
    local currentPosition = _actionStateManager:GetPosition();

    ---@type RepelShoot
    local repelShoot = self.battleRoom.inputDataSource:GetDict("RepelShoot",self.repelId);
    ----LogTools.LogByLevel(LogLevel.log, "RepelActionState","_dt", _dt, "self.runTime", self.runTime, "repelShoot", dumpTableEx(repelShoot))
    -- 启动击退
    if self.runTime == 0 then
        currentV = self.repelDirection:Mul(repelShoot.speed);
    end

    if self.runTime < repelShoot.acceleratedTime then
        -- 击退加速
        currentV = currentV.normalized:Mul(currentV.magnitude + repelShoot.acceleratedSpeed * _dt)
    else
        if self.runTime > repelShoot.endTime then
            ----LogTools.LogByLevel(LogLevel.log, "RepelActionState","exit")
            _actionStateManager:Exit(self);
            return nil;
        else
            -- 击退减速
            currentV = currentV.normalized:Mul(currentV.magnitude + -self.stateParam.airFriction * _dt)
        end
    end

    local positionChanged = currentV * _dt;
    currentPosition = currentPosition + positionChanged;
    self.runTime = self.runTime + _dt;

    _actionStateManager:SetVelocity(currentV);
    _actionStateManager:SetPosition(currentPosition);

    local battleUnitMoveOutput = {};
    battleUnitMoveOutput.v = currentV;
    battleUnitMoveOutput.position = currentPosition;
    battleUnitMoveOutput.rotation = currentDirection;
    battleUnitMoveOutput.accelerate = Vector3.New(repelShoot.acceleratedSpeed,0,0);
    battleUnitMoveOutput.moveParam = _actionStateManager.moveParam;
    battleUnitMoveOutput.cameraParam = _actionStateManager.cameraParam;
    battleUnitMoveOutput.type = self:GetId();

    local battleUnitMoveData = {};
    battleUnitMoveData.netId = _netId;
    battleUnitMoveData.objId = _objId;
    battleUnitMoveData.moveInfo = battleUnitMoveOutput;

    self.battleRoom.outputDataSource:AddBattleUnitMoveData(battleUnitMoveData);
end

-- 退出行为
---@param _actionStateManager ActionStateManage 行为管理器
---@param _isBreak boolean 是否为打断退出
---@param _isActive boolean 是否为主动打断
function RepelActionState:ExitAction(_actionStateManager,_isBreak,_isActive)
    self.battleRoom.vector3Pool:Push(self.repelDirection)
end

-- 是否为主动状态
---@return boolean 是否为主动状态
function RepelActionState:IsActive()
    return false;
end

-- 行为状态Id
---@return number 行为状态Id 参照stateSwitchRule表
function RepelActionState:GetId()
    return 5;
end

---获得状态冲突表
---@return StateSwitchRule
function RepelActionState:GetSwitchRule()
    return self.battleRoom.inputDataSource:GetDict("StateSwitchRule",self:GetId());
end

return RepelActionState;