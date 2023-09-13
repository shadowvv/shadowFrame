local default = {weaponType=0,value3=0,value4=0,value5=0,weaponIcon="",weaponColor=xlsNilTable,weaponColorOutline=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponWaste_Xls : table 
WeaponWaste_Xls =
{
    ["1"]=setmetatable({weaponType=1,value3=500.0,value4=2.0,value5=3.5,weaponIcon="WeaponType_1gechang",weaponColor={[1]=255,[2]=255,[3]=255},weaponColorOutline={[1]=255,[2]=255,[3]=255}},mt),
    ["2"]=setmetatable({weaponType=2,value3=500.0,value4=2.0,value5=3.5,weaponIcon="WeaponType_2wudao",weaponColor={[1]=255,[2]=255,[3]=255},weaponColorOutline={[1]=255,[2]=255,[3]=255}},mt),
    ["3"]=setmetatable({weaponType=3,value3=500.0,value4=2.0,value5=3.5,weaponIcon="WeaponType_3daogao",weaponColor={[1]=255,[2]=255,[3]=255},weaponColorOutline={[1]=255,[2]=255,[3]=255}},mt),
    ["4"]=setmetatable({weaponType=4,value3=500.0,value4=2.0,value5=3.5,weaponIcon="WeaponType_4libai",weaponColor={[1]=255,[2]=255,[3]=255},weaponColorOutline={[1]=255,[2]=255,[3]=255}},mt),
    ["5"]=setmetatable({weaponType=5,value3=500.0,value4=2.0,value5=3.5,weaponIcon="WeaponType_5jisi",weaponColor={[1]=255,[2]=255,[3]=255},weaponColorOutline={[1]=255,[2]=255,[3]=255}},mt),
}
--生成获取数据的方法
---@return WeaponWaste
function GetWeaponWasteData(id)
    return WeaponWaste_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponWaste : table 
---@field weaponType number
---@field value3 number
---@field value4 number
---@field value5 number
---@field weaponIcon string
---@field weaponColor table
---@field weaponColorOutline table
