---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/7/6 16:13

require "Lib/class"
require "Battle/Logic/Skill/SkillBaseNode"

---@class SkillBlinkNode : SkillBaseNode
---@field nodeId number 节点id
---@field nextNodes SkillNodeExitData[] 子节点
SkillBlinkNode = class(SkillBaseNode, 'SkillBlinkNode');

---@param _nodeId number 节点id
---@param _once boolean 只执行一次
---@param _nextNodes SkillNodeExitData[] 子节点
---@param _specialExit SkillNodeExitData[] 特殊出口
function SkillBlinkNode:ctor(_nodeId,_once, _nextNodes,_specialExit,_blinkInfo)
    self.nodeId = _nodeId;
    self.once = _once;
    self.nextNodes = _nextNodes;
    self.specialExit = _specialExit;
    self.blinkInfo = _blinkInfo;
end

---执行技能节点
---@param _actionStateManager ActionStateManage 行为管理器
---@param _dt number 更新时间
---@param _netId number 单位id
---@param _skillModel SkillModel 技能配置
---@return boolean,table 是否执行结束,执行行为输出数据
function SkillBlinkNode:DoAction(_actionStateManager, _dt, _netId, _skillModel)
    local doCurrentNode = {};
    doCurrentNode.nodeId = self.nodeId;
    local battleRoom = GetBattleRoom(_actionStateManager.battleId)
    local unit= _actionStateManager:GetUnit();
    local findUnit = false;
    if self.blinkInfo.center ~= 1 then
        ---@type BattleUnitCom_Behav
        local behavCom = unit:GetComponent(BattleUnitComponentType.Behav);
        unit = battleRoom.battleUnitManager:GetUnit(behavCom:GetTarget());
        if not unit then
            _actionStateManager:ExitSkill(false,true);
            _actionStateManager:Idle();
            return true,nil;
        end
        findUnit = true;
    end
    local rotation = _actionStateManager:GetRotation();
    if self.blinkInfo.toward ~= 1 then
        ---@type BattleUnitCom_Behav
        local behavCom = unit:GetComponent(BattleUnitComponentType.Behav);
        if not findUnit then
            unit = battleRoom.battleUnitManager:GetUnit(behavCom:GetTarget());
        end
        if not unit then
            _actionStateManager:ExitSkill(false,true);
            _actionStateManager:Idle();
            return true,nil;
        end
        rotation = Quaternion.FromEuler(unit:GetActionManager():GetPosition() - _actionStateManager:GetPosition());
        findUnit = true;
    end

    local position = unit:GetActionManager():GetPosition() + rotation*self:GetRandomPosition(self.blinkInfo.region);
    local validPosition = battleRoom.inputDataSource:GetDict("AreaEditorData",battleRoom.battleLevelManager.levelConfigManager:GetLevelInstanceXls().sceneId);
    if not validPosition then
        _actionStateManager:ExitSkill(false,true);
        _actionStateManager:Idle();
        return true,nil;
    end
    if not self:CheckValid(position,validPosition,battleRoom) then
        _actionStateManager:ExitSkill(false,true);
        _actionStateManager:Idle();
        return true,nil;
    end

    _actionStateManager:SetPosition(position);
    _actionStateManager:SetRotation(rotation);

    doCurrentNode.param = {};
    doCurrentNode.param = "position:".."x="..position.x..",y="..position.y..",z="..position.z..
            "_rotation:".."x="..rotation.x..",y="..rotation.y..",z="..rotation.z..",w="..rotation.w

    local battleUnitMoveOutput = {};
    battleUnitMoveOutput.v = Vector3.zero_local();
    battleUnitMoveOutput.position = _actionStateManager:GetPosition();
    battleUnitMoveOutput.rotation = _actionStateManager:GetRotation();
    battleUnitMoveOutput.accelerate = Vector3.zero_local();
    battleUnitMoveOutput.moveParam = _actionStateManager.moveParam;
    battleUnitMoveOutput.cameraParam = _actionStateManager.cameraParam;
    battleUnitMoveOutput.type = 100;

    local battleUnitMoveData = {};
    battleUnitMoveData.netId = _netId;
    battleUnitMoveData.objId = _actionStateManager:GetUnit():GetCurrentHeroObjectId();
    battleUnitMoveData.moveInfo = battleUnitMoveOutput;
    _actionStateManager.battleRoom.outputDataSource:AddBattleUnitMoveData(battleUnitMoveData);
    return true, doCurrentNode;
end

function SkillBlinkNode:GetRandomPosition(_region)
    local index = math.random(1,#_region);
    local regionCenter = _region[index].regionCenter;
    local regionSize  = _region[index].regionSize;
    local x = math.random(-1*regionSize.x*0.5,regionSize.x*0.5);
    local y = math.random(-1*regionSize.y*0.5,regionSize.y*0.5);
    local z = math.random(-1*regionSize.z*0.5,regionSize.z*0.5);
    return Vector3.New(regionCenter.x+x,regionCenter.y+y,regionCenter.z+z);
end

---@param _battleRoom BattleRoom
function SkillBlinkNode:CheckValid(_position,_regions, _battleRoom)
    for i, v in pairs(_regions.AreaEditorData) do
        if _battleRoom.transUtil:CheckPosInEulerObb(_position,v.Position,v.Rotate,v.Size) then
            return true;
        end
    end
    return false;
end

---返回节点类型
---@public
---@return number 节点类型
function SkillBlinkNode:GetType()
    return 67;
end

return SkillBlinkNode;