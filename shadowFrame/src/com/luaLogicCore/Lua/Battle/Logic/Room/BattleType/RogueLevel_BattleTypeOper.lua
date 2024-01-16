---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by guokun
--- DateTime: 2023/7/5 11:17

require "Lib/class"
require "Battle/Logic/Room/BattleType/BattleTypeOperBase"

---@class RogueLevel_BattleTypeOper : BattleTypeOperBase
RogueLevel_BattleTypeOper = class(BattleTypeOperBase, 'RogueLevel_BattleTypeOper');

function RogueLevel_BattleTypeOper:ctor()

end

function RogueLevel_BattleTypeOper:GetLevelXls(_levelId)
    return self.battleRoom.inputDataSource:GetDict("RoguelikeLevelBattle", _levelId)
end

return RogueLevel_BattleTypeOper;