---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/3/22 10:56

require "Lib/class"

---@class BattleBuffCastTemplate : table
---@field buffGroupId number 配置id
---@field castParam number[] 施法者参数
---@field customParam table[] 自定义参数
---@field castObjId number 施法者objId
---@field castUnitId number 施法者unitId
---@field bodyPartId number 部位
---@field upPercent number[] buff效果提升
---@field generateStackInfo table msg.UnitGenerateStackInfo
BattleBuffCastTemplate = class(nil, 'BattleBuffCastTemplate');

function BattleBuffCastTemplate:ctor()
    self.buffGroupId = 1;
    self.castParam = {};
    self.unitCastParam = {};
    self.customParam = {};
    self.unitCustomParam = {};
    self.generateStackInfo = nil
    self.bodyPartId = 0;

    self.castObjId = 0;
    self.castUnitId = 0;
    self.castCamp = 0;
    self.castSkillId = 0;

    self.buffAttachType = BATTLE_BUFF_ATTACH_TYPE.BATTLE_BUFF_ATTACH_SELF;
    self.upPercent = {};
    self.upPercent[0] = 0;
    self.stackNum = 1;
end

return BattleBuffCastTemplate;