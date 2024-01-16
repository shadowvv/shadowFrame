---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2023/3/31 12:29
---
require "Battle/Logic/Room/Fall/PickUp/PickUpType"
require "Battle/Logic/Room/Fall/PickUp/PickUpTypeCheckCallBack"

-- 枚举
---@class PickUpTypeEnum:table
---@type PickUpType[] 枚举映射
PICK_UP_TYPE_ENUM = {
    -- 单个单位拾取
    SINGLE_UNIT = PickUpType.New(1, PickUpCheckCallBack_SingleUnit);
    -- 阵营拾取
    CAMP_UNITS = PickUpType.New(2, PickUpCheckCallBack_CampUnits);
}

-- 枚举映射
---@type table<string,PickUpType> 枚举映射
local pickUpTypeIdMap = {};

-- 初始化LevelCondition映射
for _, value in pairs(PICK_UP_TYPE_ENUM) do
    pickUpTypeIdMap[tostring(value:GetId())] = value;
end

-- 根据id获取枚举
---@type function
---@param _id number
---@return PickUpType
function GetPickUpTypeById(_id)
    return pickUpTypeIdMap[tostring(_id)]
end