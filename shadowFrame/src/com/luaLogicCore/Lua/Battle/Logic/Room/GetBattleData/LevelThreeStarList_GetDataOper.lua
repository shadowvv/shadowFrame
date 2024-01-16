---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/4/18 10:49

require "Lib/class"

---@class LevelThreeStarList_GetDataOper : GetDataOper
LevelThreeStarList_GetDataOper = class(GetDataOper, 'LevelThreeStarList_GetDataOper');

---@public
---@param _extParam table
function LevelThreeStarList_GetDataOper:GetData(_extParam, _battleRoom)
    ---@type number
    local _uid = _extParam[1]

    ---@type BattleTypeOperBase
    local _levelTypeOperBase = _battleRoom.battleLevelManager.levelConfigManager:GetBattleType():GetOper()
    return _levelTypeOperBase:GetStarConditions(_uid)
end

return LevelThreeStarList_GetDataOper;