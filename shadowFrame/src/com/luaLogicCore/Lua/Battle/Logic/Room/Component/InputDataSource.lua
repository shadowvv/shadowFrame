---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2021/12/16 11:03
--- 输入数据接收器

require "Lib/class"
require "Battle/Logic/Room/Component/BattleRoomMessage"

require "Battle/Logic/Skill/SkillModel"
require "Battle/Logic/Skill/SkillBaseNode"
require "Battle/Logic/Skill/SkillNodeExitData"
require "Battle/Logic/Skill/SkillStartNode"
require "Battle/Logic/Skill/SkillConditionNode"
require "Battle/Logic/Skill/SkillCoolDownNode"
require "Battle/Logic/Skill/SkillFindTargetNode"
require "Battle/Logic/Skill/SkillBarrageNode"
require "Battle/Logic/Skill/SkillSummonNode"
require "Battle/Logic/Skill/SkillAreaNode"
require "Battle/Logic/Skill/SkillBuffNode"
require "Battle/Logic/Skill/SkillStateSwitchOverrideNode"
require "Battle/Logic/Skill/SkillLoopStartNode"
require "Battle/Logic/Skill/SkillLoopEndNode"
require "Battle/Logic/Skill/SkillBreakNode"
require "Battle/Logic/Skill/SkillTransferNode"
require "Battle/Logic/Skill/CheckTransferAreaNode"
require "Battle/Logic/Skill/SkillCheckAimHoldTimeNode"
require "Battle/Logic/Skill/SkillResetAimHoldTimeNode"
require "Battle/Logic/Skill/SkillClosePlayMode"
require "Battle/Logic/Skill/SkillOpenPlayMode"
require "Battle/Logic/Skill/SkillCheckBuffNode"
require "Battle/Logic/Skill/SkillCheckPropNode"
require "Battle/Logic/Skill/SkillConsumePropNode"
require "Battle/Logic/Skill/SkillClearSpecialEnergyPropNode"
require "Battle/Logic/Skill/SkillAddCharacterDispNode"
require "Battle/Logic/Skill/SkillGetCharacterWorldSpaceNode"
require "Battle/Logic/Skill/SkillSetCharacterWorldSpaceNode"
require "Battle/Logic/Skill/SkillTurnToTargetNode"
require "Battle/Logic/Skill/SkillCallSummonSkill"
require "Battle/Logic/Skill/SkillAddMonsterSpeedNode"
require "Battle/Logic/Skill/SkillSwitchNode"
require "Battle/Logic/Skill/SkillBlinkNode"
require "Battle/Logic/Skill/SkillCameraNode"
require "Battle/Logic/Skill/SkillUIEffectNode"
require "Battle/Logic/Skill/SkillUINode"
require "Battle/Logic/Skill/SkillSwitchAimTypeNode"
require "Battle/Logic/Skill/SkillLightNode"
require "Battle/Logic/Skill/SkillTimelineNode"
require "Battle/Logic/Skill/SkillAnimationNode"
require "Battle/Logic/Skill/SkillSoundNode"
require "Battle/Logic/Skill/SkillAnimationEffectNode"
require "Battle/Logic/Skill/SkillShakeNode"
require "Battle/Logic/Skill/SkillSkyBoxNode"
require "Battle/Logic/Skill/SkillRemoveEffectNode"
require "Battle/Logic/Skill/SkillBarrageEventNode"
require "Battle/Logic/Skill/SkillViewEndNode"
require "Battle/Logic/Skill/SkillLockTargetNode"
require "Battle/Logic/Skill/SkillUnlockTargetNode"
require "Battle/Logic/Skill/SkillAnimationEndNode"
require "Battle/Logic/Skill/SkillRotationNode"
require "Battle/Logic/Skill/SkillInterruptNode"
require "Battle/Logic/Skill/SkillShowLockUINode"
require "Battle/Logic/Skill/SkillCloseLockUINode"
require "Battle/Logic/Skill/SkillTimelineOverNode"
require "Battle/Logic/Skill/SkillModifySkyBoxNode"
require "Battle/Logic/Skill/SkillRestoreSkyBoxNode"
require "Battle/Logic/Skill/SkillAddCharacterSpeedNode"
require "Battle/Logic/Skill/SkillRemoveCharacterSpeedNode"
require "Battle/Logic/Skill/SkillCrosshairScaleNode"
require "Battle/Logic/Skill/SkillRangeSearchStartNode"
require "Battle/Logic/Skill/SkillRangeSearchEndNode"
require "Battle/Logic/Skill/SkillStickDissolve"
require "Battle/Logic/Skill/SkillCheckCollideNode"
require "Battle/Logic/Skill/SKillCheckCollideOverNode"
require "Battle/Logic/Skill/SkillSkipCollideNode"

---@class InputDataSource : table 输入数据接收器
---@field playerCommands BattleRoomMessage[] 玩家发送协议
---@field roomMessages BattleRoomMessage[] 战斗房间协议
InputDataSource = class(nil, 'InputDataSource');

---@type number 每帧处理协议数量
local MESSAGE_MAX_COUNT_PER_FRAME = 10;

function InputDataSource:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
end

--- 初始化
---@public
---@param _battlePlayerInfo table
function InputDataSource:Init(_battlePlayerInfo)
    self:__Init(_battlePlayerInfo);
end

--- 内部初始化
---@protected
---@param _battlePlayerInfo table
function InputDataSource:__Init(_battlePlayerInfo)
    self.playerCommands = {};

    if _battlePlayerInfo then
        for _, _playerInfo in pairs(_battlePlayerInfo) do
            local _uid = _playerInfo.playerId
            self.playerCommands[tostring(_uid)] = {}
        end
    end

    self.roomMessages = {};
    self.skillModels = {};
    self.tickRoomMessage = {};
    self.tickPlayerCommand = {};
end

--- 获取房间消息队列长度
---@return number 消息队列长度
function InputDataSource:GetRoomMessageSize()
    if not self.roomMessages then
        return 0
    end
    return #self.roomMessages
end

--- 获取房间消息队列长度
---@param _uid number 玩家id
---@return number 消息队列长度
function InputDataSource:GetPlayerMessageSize(_uid)
    if not self.playerCommands then
        return 0
    end
    local _playerCommands = self.playerCommands[tostring(_uid)]
    if not _playerCommands then
        return 0;
    end
    return #_playerCommands
end

--- 接收协议接口
---@public
---@param _uid number 发送协议的玩家id，如果是战斗房间消息该值为nil
---@param _id number 协议id
---@param _msgTable table 协议
---@param _arriveNetIoTime number 到达网络时间
function InputDataSource:OnReceiveMessage(_uid, _id, _msgTable, _arriveNetIoTime)

end

---@param _battleMessage BattleRoomMessage
function InputDataSource:AddRoomMessage(_battleMessage)
    self:__AddRoomMessage(_battleMessage)
end

---@param _uid number
---@param _battleMessage BattleRoomMessage
function InputDataSource:AddPlayerMessage(_uid, _battleMessage)
    self:__AddPlayerMessage(_uid, _battleMessage)
end

---@protected
---@param _battleMessage BattleRoomMessage
function InputDataSource:__AddRoomMessage(_battleMessage)
    table.insert(self.roomMessages, _battleMessage)
end

---@protected
---@param _battleMessage BattleRoomMessage
function InputDataSource:__AddPlayerMessage(_uid, _battleMessage)
    local commands = self.playerCommands[tostring(_uid)]
    if not commands then
        return
    end
    table.insert(commands, _battleMessage)
end

--- 获得当前房间协议
---@public
---@return BattleRoomMessage[] 获得当前房间协议
function InputDataSource:DrainAllRoomMessage()
    if self.roomMessages == nil or #self.roomMessages == 0 then
        return self.tickRoomMessage;
    end
    local start = self:GetDrainStartIndex(self.roomMessages, MESSAGE_MAX_COUNT_PER_FRAME);
    local removeNumber = #self.roomMessages - start + 1;
    for _ = 1, removeNumber do
        local tempMessage = table.remove(self.roomMessages, 1);
        table.insert(self.tickRoomMessage, tempMessage);
    end
    return self.tickRoomMessage;
end

--- 获得当前所有的玩家协议
---@public
---@return BattleRoomMessage[] 获得当前玩家协议
function InputDataSource:DrainAllCommand()
    for _, commands in pairs(self.playerCommands) do
        local start = self:GetDrainStartIndex(commands, MESSAGE_MAX_COUNT_PER_FRAME);
        local removeNumber = #commands - start + 1;
        for _ = 1, removeNumber do
            local tempMessage = table.remove(commands, 1);
            table.insert(self.tickPlayerCommand, tempMessage);
        end
    end
    return self.tickPlayerCommand;
end

--- 获得每帧获得协议的起始index
---@private
---@return number 获得每帧获得协议的起始index
function InputDataSource:GetDrainStartIndex(_messages, _maxDrainNum)
    if #_messages <= _maxDrainNum then
        return 1;
    end

    local start = #_messages - _maxDrainNum + 1;
    return start;
end

--- 获得dict表
---@public
---@param _dictName string 表名
---@param _id number 表key
---@return table 表数据
function InputDataSource:GetDict(_dictName, _id)
end

--- 读取dict
---@public
---@param _dictName string 表名
---@param _id string 表key(String类型)
---@return table 表数据
function InputDataSource:GetDictByString(_dictName, _id)
end

---获得技能树
---@public
---@param _skillID number 技能Id
---@return SkillModel 技能树
function InputDataSource:GetSkillModel(_skillID)
    if self.skillModels[_skillID] ~= nil then
        return self.skillModels[_skillID];
    end

    local dict = self:GetDict("SkillConfigData", _skillID);
    if dict == nil then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "SkillConfigData", "skill", _skillID, "nil")
        end
        return nil;
    end
    local commonCd = 0;
    local allNodes = {};
    local loopStartNodeIds = {};
    local breakNodeIds = {};
    for i, v in pairs(dict.allNodes) do
        local node = self:CreateSkillNode(v);
        allNodes[node.nodeId] = node;
        if v.nodeType == SkillCoolDownNode:GetType() then
            --Todo 沒用到？因修改了CD节点内部的time，故在用此处时需改写 by GK
            commonCd = v.param.time;
        end
        if v.nodeType == SkillLoopStartNode:GetType() then
            loopStartNodeIds[v.param.loopId] = node.nodeId;
        end
        if v.nodeType == SkillBreakNode:GetType() then
            table.insert(breakNodeIds, v.nodeId);
        end
    end
    local skillModel = SkillModel.New(dict.Id,dict.manaCast,dict.onlyCheck,dict.superCast,dict.maxTime,dict.startTime,commonCd,dict.startNodeId,dict.knockDown,breakNodeIds,loopStartNodeIds,dict.skillCastOverNodeId,allNodes);
    self.skillModels[_skillID] = skillModel;
    return skillModel;
end

---@private
---@type function 创建技能节点
---@param _skillNodeInfo table 节点信息
---@return SkillBaseNode 技能节点
function InputDataSource:CreateSkillNode(_skillNodeInfo)
    local skillNodeExitData = nil;
    if _skillNodeInfo.nextNodes then
        for i, v in pairs(_skillNodeInfo.nextNodes) do
            if skillNodeExitData == nil then
                skillNodeExitData = {};
            end
            local next = SkillNodeExitData.New(v.type, v.param, v.nextNodeID);
            table.insert(skillNodeExitData, next);
        end
    end

    local specialExit = nil;
    if _skillNodeInfo.specialExit then
        specialExit = {};
        local next = SkillNodeExitData.New(_skillNodeInfo.specialExit.type, _skillNodeInfo.specialExit.param, _skillNodeInfo.specialExit.nextNodeID);
        table.insert(specialExit, next);
    end

    if _skillNodeInfo.nodeType == SkillStartNode:GetType() then
        return SkillStartNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillConditionNode:GetType() then
        return SkillConditionNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillCoolDownNode:GetType() then
        return SkillCoolDownNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.type, _skillNodeInfo.param.time);
    end
    if _skillNodeInfo.nodeType == SkillFindTargetNode:GetType() then
        return SkillFindTargetNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillBarrageNode:GetType() then
        return SkillBarrageNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.barrageID, _skillNodeInfo.param.spreadParam, _skillNodeInfo.param.elementID, _skillNodeInfo.param.shootEffect, _skillNodeInfo.param.consume, _skillNodeInfo.param.buffGroupIds);
    end
    if _skillNodeInfo.nodeType == SkillSummonNode:GetType() then
        return SkillSummonNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, nil, _skillNodeInfo.param.SummonId);
    end
    if _skillNodeInfo.nodeType == SkillAreaNode:GetType() then
        return SkillAreaNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.colliderID);
    end
    if _skillNodeInfo.nodeType == SkillBuffNode:GetType() then
        return SkillBuffNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.addBuff, _skillNodeInfo.param.removeBuff, _skillNodeInfo.param.selfAll, _skillNodeInfo.param.playerBuff);
    end
    if _skillNodeInfo.nodeType == SkillStateSwitchOverrideNode:GetType() then
        return SkillStateSwitchOverrideNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.stateSwitchRuleId, _skillNodeInfo.param.BlockKey, _skillNodeInfo.param.blockChangeLeader);
    end
    if _skillNodeInfo.nodeType == SkillLoopStartNode:GetType() then
        return SkillLoopStartNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.loopId, _skillNodeInfo.param.loopDelayTime);
    end
    if _skillNodeInfo.nodeType == SkillLoopEndNode:GetType() then
        return SkillLoopEndNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.loopId, _skillNodeInfo.param.loopTime, _skillNodeInfo.param.leaveLoopEvent);
    end
    if _skillNodeInfo.nodeType == SkillBreakNode:GetType() then
        return SkillBreakNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.isForceBreak);
    end
    if _skillNodeInfo.nodeType == SkillTransferNode:GetType() then
        return SkillTransferNode.New(_skillNodeInfo.nodeId,_skillNodeInfo.once,skillNodeExitData,specialExit,_skillNodeInfo.param.transferId,_skillNodeInfo.param.transferBoxId);
    end
    if _skillNodeInfo.nodeType == CheckTransferAreaNode:GetType() then
        return CheckTransferAreaNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.transferId);
    end
    if _skillNodeInfo.nodeType == SkillCheckAimHoldTimeNode:GetType() then
        return SkillCheckAimHoldTimeNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.time, _skillNodeInfo.param.matchNodeId, _skillNodeInfo.param.otherNodeId);
    end
    if _skillNodeInfo.nodeType == SkillResetAimHoldTimeNode:GetType() then
        return SkillResetAimHoldTimeNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillClosePlayMode:GetType() then
        return SkillClosePlayMode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.playMode);
    end
    if _skillNodeInfo.nodeType == SkillOpenPlayMode:GetType() then
        return SkillOpenPlayMode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.playMode);
    end
    if _skillNodeInfo.nodeType == SkillCheckBuffNode:GetType() then
        return SkillCheckBuffNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.buffId, _skillNodeInfo.param.matchNodeId, _skillNodeInfo.param.otherNodeId);
    end
    if _skillNodeInfo.nodeType == SkillCheckPropNode:GetType() then
        return SkillCheckPropNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.propId, _skillNodeInfo.param.compareType, _skillNodeInfo.param.compareValue, _skillNodeInfo.param.reachNode, _skillNodeInfo.param.notReachNode);
    end
    if _skillNodeInfo.nodeType == SkillConsumePropNode:GetType() then
        return SkillConsumePropNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.propId, _skillNodeInfo.param.consume);
    end
    if _skillNodeInfo.nodeType == SkillClearSpecialEnergyPropNode:GetType() then
        return SkillClearSpecialEnergyPropNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.clearAll, _skillNodeInfo.param.consume);
    end
    if _skillNodeInfo.nodeType == SkillAddCharacterDispNode:GetType() then
        return SkillAddCharacterDispNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.type, _skillNodeInfo.param.vector);
    end
    if _skillNodeInfo.nodeType == SkillGetCharacterWorldSpaceNode:GetType() then
        return SkillGetCharacterWorldSpaceNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.vector);
    end
    if _skillNodeInfo.nodeType == SkillSetCharacterWorldSpaceNode:GetType() then
        return SkillSetCharacterWorldSpaceNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillTurnToTargetNode:GetType() then
        return SkillTurnToTargetNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.vTurnSpeed, _skillNodeInfo.param.hTurnSpeed, _skillNodeInfo.param.time);
    end
    if _skillNodeInfo.nodeType == SkillAddMonsterSpeedNode:GetType() then
        return SkillAddMonsterSpeedNode.New(_skillNodeInfo.nodeId,_skillNodeInfo.once,skillNodeExitData,specialExit,_skillNodeInfo.param.direction,_skillNodeInfo.param.speed,_skillNodeInfo.param.time,_skillNodeInfo.param.distanceProtection);
    end
    if _skillNodeInfo.nodeType == SkillSwitchNode:GetType() then
        return SkillSwitchNode.New(_skillNodeInfo.nodeId,_skillNodeInfo.once,skillNodeExitData,specialExit,_skillNodeInfo.param.switchInfos);
    end
    if _skillNodeInfo.nodeType == SkillBlinkNode:GetType() then
        return SkillBlinkNode.New(_skillNodeInfo.nodeId,_skillNodeInfo.once,skillNodeExitData,specialExit,_skillNodeInfo.param.blinkInfo);
    end
    if _skillNodeInfo.nodeType == SkillCallSummonSkill:GetType() then
        return SkillCallSummonSkill.New(_skillNodeInfo.nodeId,_skillNodeInfo.once,skillNodeExitData,specialExit,_skillNodeInfo.param.SummonId,_skillNodeInfo.param.SummonSkillId);
    end
    if _skillNodeInfo.nodeType == SkillCameraNode:GetType() then
        return SkillCameraNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillUIEffectNode:GetType() then
        return SkillUIEffectNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillUINode:GetType() then
        return SkillUINode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillSwitchAimTypeNode:GetType() then
        return SkillSwitchAimTypeNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillLightNode:GetType() then
        return SkillLightNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillTimelineNode:GetType() then
        return SkillTimelineNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, _skillNodeInfo.param.timeLineId, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillAnimationNode:GetType() then
        return SkillAnimationNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillSoundNode:GetType() then
        return SkillSoundNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillAnimationEffectNode:GetType() then
        return SkillAnimationEffectNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillShakeNode:GetType() then
        return SkillShakeNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillSkyBoxNode:GetType() then
        return SkillSkyBoxNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillRemoveEffectNode:GetType() then
        return SkillRemoveEffectNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillBarrageEventNode:GetType() then
        return SkillBarrageEventNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillViewEndNode:GetType() then
        return SkillViewEndNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillLockTargetNode:GetType() then
        return SkillLockTargetNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillUnlockTargetNode:GetType() then
        return SkillUnlockTargetNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillAnimationEndNode:GetType() then
        return SkillAnimationEndNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillRotationNode:GetType() then
        return SkillRotationNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillInterruptNode:GetType() then
        return SkillInterruptNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillShowLockUINode:GetType() then
        return SkillShowLockUINode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillCloseLockUINode:GetType() then
        return SkillCloseLockUINode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillTimelineOverNode:GetType() then
        return SkillTimelineOverNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillModifySkyBoxNode:GetType() then
        return SkillModifySkyBoxNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillRestoreSkyBoxNode:GetType() then
        return SkillRestoreSkyBoxNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillAddCharacterSpeedNode:GetType() then
        return SkillAddCharacterSpeedNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param);
    end
    if _skillNodeInfo.nodeType == SkillRemoveCharacterSpeedNode:GetType() then
        return SkillRemoveCharacterSpeedNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit, _skillNodeInfo.param.id);
    end
    if _skillNodeInfo.nodeType == SkillCrosshairScaleNode:GetType() then
        return SkillCrosshairScaleNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillRangeSearchStartNode:GetType() then
        return SkillRangeSearchStartNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillRangeSearchEndNode:GetType() then
        return SkillRangeSearchEndNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
    if _skillNodeInfo.nodeType == SkillStickDissolve:GetType() then
        return SkillStickDissolve.New(_skillNodeInfo.nodeId,_skillNodeInfo.once,skillNodeExitData,specialExit);
    end

    if _skillNodeInfo.nodeType == SkillCheckCollideNode:GetType() then
        return SkillCheckCollideNode.New(_skillNodeInfo.nodeId,_skillNodeInfo.once,skillNodeExitData,specialExit,_skillNodeInfo.param.addBuff);
    end
    if _skillNodeInfo.nodeType == SKillCheckCollideOverNode:GetType() then
        return SKillCheckCollideOverNode.New(_skillNodeInfo.nodeId,_skillNodeInfo.once,skillNodeExitData,specialExit);
    end
    if _skillNodeInfo.nodeType == SkillSkipCollideNode:GetType() then
        return SkillSkipCollideNode.New(_skillNodeInfo.nodeId, _skillNodeInfo.once, skillNodeExitData, specialExit);
    end
end

--- 获得最终参数
---@public
---@param _param string
---@param _skillId number
---@param _level number
---@return number 最终参数
function InputDataSource:GetSkillFinalParam(_param, _skillId, _level)
    if _param == nil then
        return 0;
    end
    local finalParam = _param;
    local startIndex, endIndex = string.find(_param, '{%d}');

    if startIndex ~= nil then
        local index = string.sub(_param, startIndex + 1, endIndex - 1);
        ---@type SkillValue
        local _skillValue = self:GetSkillValue(_skillId, _level);
        return _skillValue.value[tonumber(index)]
    end
    return tonumber(finalParam);
end

-- 获取技能
---public
---@param _skillId number 技能id
---@param _level number 技能等级
function InputDataSource:GetSkillValue(_skillId, _level)
    return nil
end

-- 获取被动技能
---public
---@param _skillId number 技能id
---@param _level number 技能等级
function InputDataSource:GetTalentSkill(_skillId, _level)
    return nil
end

-- 根据怪物掉落id获取掉落数据
---@param monsterFallId number 怪物掉落id
---@type function
---@return table
---@public
function InputDataSource:getMonsterFallDataList(monsterFallId)
    return
end

-- 根据触发id和附着id获取元素反应
---@param triggerId number 触发元素id
---@param attachId number 附着元素id
---@type function
---@return ElementalReaction
---@public
function InputDataSource:getEleReactByTrigIdAndAttachId(triggerId, attachId)
    return
end

-- 根据怪物掉落id获取掉落数据
---@param fallObjectId number 掉落物id
---@param elementType number 元素类型
---@type function
---@return FallObject
---@public
function InputDataSource:getFallObjectByIdAndElement(fallObjectId, elementType)
    return
end

-- 根据距离获取伤害系数
---@param weaponDistanceType number 武器类型
---@param distance number 距离
---@type function
---@return number
---@public
function InputDataSource:getDistanceRatioByRangeIndex(weaponDistanceType, distance)
    return
end

-- 根据元素id和附着量获取元素强度
---@param elementId number 元素id
---@param attachNum number 附着元素量
---@type function
---@return ElementStrength
---@public
function InputDataSource:getEleStrengthByEleIdAndAttachId(elementId, attachNum)
    return
end

-- 根据类型获取关卡常量
---@param type string 常量类型
---@type function
---@return LevelConstant
---@public
function InputDataSource:getLevelConstantByType(type)
    return
end

-- 获取elementValue数据
---@public
---@return ElementValue
function InputDataSource:GetElementValueComplexData(_buffInstanceId, _level)
    return nil
end


-- 获取伤害距离衰减下标
---@public
---@param _weaponType number 攻击方武装类型ID
---@param _dis number 测算的距离的平方值
---@param _propChangeValue number 攻击方 Skill_Active_CD_Reduce 属性值
---@return number
function InputDataSource:GetHurtDisReduceParamCnt(_weaponType, _dis, _propChangeValue)
    return nil
end

--- 读取战前剧情
---@public
---@param _mainLevelId number 关卡id
---@return table 战前剧情id
function InputDataSource:GetMainLevelPreBattlePlots(_mainLevelId)
    return nil
end

--- 读取战前剧情
---@public
---@param _multiPveBossLevelId number 关卡id
---@return table 战前剧情id
function InputDataSource:GetMultiPveBossLevelPreBattlePlots(_multiPveBossLevelId)
    return nil
end

-- 获取伤害距离衰减下标
---@public
---@return BountyMissionsLevelStage
function InputDataSource:GetBountyMissionLevelStage(_levelInstanceId, _level)
    return nil
end

function InputDataSource:GetLevelMemberFix(_group, _classify, _playerNum)
    return { 1, 1, 1, 1, 1 }
end

-- 修正属性上下限
---@public
---@param _propId number 属性ID
---@param _value number 属性原始值
function InputDataSource:FormatPropLimit(_propId, _value)
    return _value
end

-- 获取赛季关卡数据
---@public
---@param _levelInstanceId number 关卡id
---@param _season number 赛季
---@return SeasonReplaceLevel
function InputDataSource:GetSeasonReplaceLevelByLevelIdAndSeason(_levelInstanceId, _season)
    return _value
end

return InputDataSource;