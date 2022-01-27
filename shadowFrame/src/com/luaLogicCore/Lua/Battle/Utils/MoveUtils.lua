---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/1/11 16:33
--- 移动工具类

MOVE_UTILS = {};

-- 一般移动算法
function MOVE_UTILS.Move(_moveParam,_cameraParam,_currentVelocity,_currentDirection,_moveAccelerate,_airFriction,_breakAccelerate,_maxVelocity,_dt)
    if _moveParam == nil or _cameraParam == nil then
        return
    end

    local joyDir = Vector3.New();
    joyDir:Set(_moveParam.x, 0, _moveParam.y);

    local curVelocityDir = _currentDirection;
    local currentVelocity = _currentVelocity:Clone();

    --摇杆产生的方向
    local requestedDir = (curVelocityDir * joyDir).normalized;

    local curAccelerate = Vector3.zero_global();
    if requestedDir.magnitude > Mathf.Epsilon then
        curAccelerate = requestedDir:Mul(MOVE_UTILS.GetScaledMagnitudeByQuadrant(joyDir, _moveAccelerate));
        currentVelocity:Add(curAccelerate * _dt)
        local velocityMag = currentVelocity.magnitude
        --空气阻力 F = CPSVV/2, 简化为 F = AirFrictionConfig * V * V，但是因为用速度的二次方，阻力增加太快，改为一次
        currentVelocity = currentVelocity.normalized:Mul(velocityMag - _airFriction * velocityMag * _dt)
        currentVelocity:ClampMagnitude(_maxVelocity)

        if currentVelocity.magnitude - _maxVelocity > Mathf.Epsilon then
            currentVelocity = currentVelocity.normalized * _maxVelocity
        end
    else
        local velocityMag = currentVelocity.magnitude
        local inverseVelocityMag = (_breakAccelerate + _airFriction * velocityMag) * _dt
        currentVelocity = currentVelocity.normalized:Mul(velocityMag - inverseVelocityMag)

        if velocityMag < inverseVelocityMag then
            currentVelocity = Vector3.New(0,0,0);
        end
    end

    local positionChanged = currentVelocity * _dt;

    return currentVelocity,positionChanged,curAccelerate;
end

function MOVE_UTILS.GetScaledMagnitudeByQuadrant(Vec3, configParamVec4)
    local coefficient = Vector3.New()
    if Vec3.x >= 0 then
        if Vec3.z > 0 then --第一象限
            coefficient:Set(configParamVec4.w, 0 ,configParamVec4.x)
        else    --第四象限
            coefficient:Set(configParamVec4.w, 0 ,configParamVec4.y)
        end
    else
        if Vec3.z > 0 then --第二象限
            coefficient:Set(configParamVec4.z, 0 ,configParamVec4.x)
        else    --第三象限
            coefficient:Set(configParamVec4.z, 0 ,configParamVec4.y)
        end
    end

    local accelerate = Vec3:MulVec3(coefficient)
    return accelerate.magnitude
end

-- 转向算法
function MOVE_UTILS.Rotate(_currentDirection,_cameraParam,_sensitivityX,_sensitivityY,_limitAngle)
    local temp = Quaternion.Inverse(_currentDirection) * Vector3.up;
    local frontQuat_Horizen = _currentDirection * Quaternion.AngleAxis(_cameraParam.x * _sensitivityX, temp);
    local quaternion = frontQuat_Horizen * Quaternion.AngleAxis(_cameraParam.y * _sensitivityY, Vector3.right);

    local angle = Vector3.AngleAroundAxis(Vector3.up,quaternion * Vector3.forward, _currentDirection * Vector3.right)
    if angle > _limitAngle.x and angle < _limitAngle.y then
        return quaternion;
    else
        return frontQuat_Horizen;
    end
end

-- 刹车算法
function MOVE_UTILS.Brake(_currentVelocity,_brakeAccelerate,_airFriction,_dt)
    local currentVelocity = _currentVelocity:Clone();
    local velocityMag = currentVelocity.magnitude
    local inversiveVelocityMag = (_brakeAccelerate + _airFriction * velocityMag) * _dt
    currentVelocity = currentVelocity.normalized:Mul(velocityMag - inversiveVelocityMag)

    if velocityMag < inversiveVelocityMag then
        currentVelocity = Vector3.New(0,0,0);
    end
    return currentVelocity;
end

function MOVE_UTILS.EnterDash(_dirIndex,_currentDirection,_maxVelocity)
    local curVelocityDir = _currentDirection
    local requestedDir
    --摇杆产生的方向
    if _dirIndex == 1 then --前
        requestedDir = (curVelocityDir * Vector3.forward).normalized
    elseif _dirIndex == 2 then --左
        requestedDir = (curVelocityDir * Vector3.left).normalized
    elseif _dirIndex == 3 then --后
        requestedDir = (curVelocityDir * Vector3.back).normalized
    elseif _dirIndex == 4 then --右
        requestedDir = (curVelocityDir * Vector3.right).normalized
    end
    local velocity = requestedDir:Mul(_maxVelocity)
    return velocity;
end

-- 冲刺
function MOVE_UTILS.Dash(_dashTime,_currentVelocity,_currentDirection,_dt)

    _dashTime = _dashTime + _dt

    local dashAcc = 0
    --闪避的前0.25s处于加速，之后是减速
    if _dashTime <= 0.25 then
        dashAcc = BattlePlayerCameraConfig.DashAccelerate
    else
        dashAcc = -BattlePlayerCameraConfig.DashAccelerate
    end

    local curVelocityDir = _currentDirection;
    local currentVelocity = _currentVelocity;

    currentVelocity = currentVelocity.normalized:Mul(currentVelocity.magnitude + dashAcc * _dt)
    currentVelocity:ClampMagnitude(BattlePlayerCameraConfig.MaxDashSpeed)

    return currentVelocity;
end
