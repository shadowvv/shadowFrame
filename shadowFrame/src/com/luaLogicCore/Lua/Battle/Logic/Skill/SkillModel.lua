---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/2/16 16:08

require "Lib/class"

---@class SkillModel : table 技能模型
---@field skillId number 技能Id
---@field manaCast string 技能消耗
---@field onlyCheck boolean 是否只检测不扣除
---@field superCast string 技能极奏消耗
---@field maxTime string 技能累计次数
---@field startTime string 技能初始次数
---@field startNodeId number 技能初始节点Id
---@field breakNodeIds number 技能打断节点Id
---@field _loopStartNodeIds number[] 技能循环开始节点Id
---@field allNodes SkillBaseNode[] 技能所有节点
SkillModel = class(nil, 'SkillModel');

---@param _skillId number 技能Id
---@param _manaCast string 技能消耗
---@param _onlyCheck boolean 是否只检测不扣除
---@param _superCast string 技能极奏消耗
---@param _maxTime string 技能累计次数
---@param _startTime string 技能初始次数
---@param _commonCoolDown number 技能一般CD
---@param _startNodeId number 技能初始节点Id
---@param _knockDown boolean 是否击倒
---@param _breakNodeIds number[] 技能打断节点Id
---@param _loopStartNodeIds number[] 技能循环开始节点Id
---@param _skillCastOverNodeId number 施法前摇结束id
---@param _allNodes SkillBaseNode[] 技能所有节点
function SkillModel:ctor(_skillId,_manaCast,_onlyCheck,_superCast,_maxTime,_startTime,_commonCoolDown,_startNodeId,_knockDown,_breakNodeIds,_loopStartNodeIds,_skillCastOverNodeId,_allNodes)
    self.skillId = _skillId;
    self.manaCast = _manaCast;
    self.onlyCheck = _onlyCheck;
    self.superCast = _superCast;
    self.maxTime = _maxTime;
    self.startTime = _startTime;
    self.commonCoolDown = _commonCoolDown;
    self.startNodeId = _startNodeId;
    self.knockDown = _knockDown;
    self.breakNodeIds = _breakNodeIds;
    self.loopStartNodeIds = _loopStartNodeIds;
    self.skillCastOverNodeId = _skillCastOverNodeId;
    self.allNodes = _allNodes;
end

return SkillModel;