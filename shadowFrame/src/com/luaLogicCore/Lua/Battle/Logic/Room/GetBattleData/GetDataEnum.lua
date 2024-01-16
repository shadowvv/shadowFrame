---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/4/18 10:49

require "Battle/Logic/Room/GetBattleData/GetData"
require "Battle/Logic/Room/GetBattleData/GetDataOper"
require "Battle/Logic/Room/GetBattleData/LevelThreeStarList_GetDataOper"
require "Battle/Logic/Room/GetBattleData/FightParData_GetDataOper"


-- 枚举
---@class GetDataEnum:table
---@type GetData[] 枚举映射
GetDataEnum = {
    NONE = GetData.New(0, nil);
    ---@type GetData 获取三星列表
    GET_LEVEL_THREE_STAR_LIST = GetData.New(1, LevelThreeStarList_GetDataOper.New());
    ---@type GetData 获取战斗数据
    GET_FIGHT_PAR_DATA = GetData.New(2, FightParData_GetDataOper.New());
}

-- 枚举映射
---@type GetData[] 枚举映射
local getDataIdMap = {};

-- 初始化GetData映射
for _, value in pairs(GetDataEnum) do
    getDataIdMap[tostring(value:GetId())] = value;
end

-- 根据id获取枚举
---@type function
---@param _id number
---@return GetData
function GetBattleDataEnumById(_id)
    return getDataIdMap[tostring(_id)]
end