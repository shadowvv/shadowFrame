---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2023/3/27 16:25

require "Lib/class"

---@class BattleBuffBasicTemplate : table
---@field buffGroupId number 配置id
---@field upPercent number[] 提升
BattleBuffBasicTemplate = class(nil, 'BattleBuffBasicTemplate');

function BattleBuffBasicTemplate:ctor()
    self.buffGroupId = 1;
    self.upPercent = {};
    self.upPercent[0] = 0;
end

return BattleBuffBasicTemplate;