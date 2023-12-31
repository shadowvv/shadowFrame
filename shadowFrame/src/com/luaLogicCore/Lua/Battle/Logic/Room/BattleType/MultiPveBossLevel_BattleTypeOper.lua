---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/4/13 11:17

require "Lib/class"
require "Battle/Logic/Room/BattleType/BattleTypeOperBase"

---@class MultiPveBossLevel_BattleTypeOper : BattleTypeOperBase
MultiPveBossLevel_BattleTypeOper = class(BattleTypeOperBase, 'MultiPveBossLevel_BattleTypeOper');

function MultiPveBossLevel_BattleTypeOper:ctor()

end

function MultiPveBossLevel_BattleTypeOper:Init(_battleRoom)
    self:__Init(_battleRoom)
    self.__mainLevelName = "MultiPveBoss"
end

function MultiPveBossLevel_BattleTypeOper:GetLevelXls(_levelId)
    return self.battleRoom.inputDataSource:GetDict("MultiPveBoss", _levelId)
end

function MultiPveBossLevel_BattleTypeOper:__InitPreBattlePlots()
    local _levelId = self.battleRoom.battleLevelManager.levelConfigManager:GetLevelId()
    self.preBattlePlots = self.battleRoom.inputDataSource:GetMultiPveBossLevelPreBattlePlots(_levelId)
end

return MultiPveBossLevel_BattleTypeOper;