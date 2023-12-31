---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/4/13 11:17

require "Lib/class"
require "Battle/Logic/Room/BattleType/BattleTypeOperBase"

---@class PatrolLevel_BattleTypeOper : BattleTypeOperBase
PatrolLevel_BattleTypeOper = class(BattleTypeOperBase, 'PatrolLevel_BattleTypeOper');

function PatrolLevel_BattleTypeOper:ctor()

end

function PatrolLevel_BattleTypeOper:Init(_battleRoom)
    self:__Init(_battleRoom)
    self.__mainLevelName = "PatrolLevel"
end

function PatrolLevel_BattleTypeOper:GetLevelXls(_levelId)
    return self.battleRoom.inputDataSource:GetDict("PatrolLevel", _levelId)
end

return PatrolLevel_BattleTypeOper;