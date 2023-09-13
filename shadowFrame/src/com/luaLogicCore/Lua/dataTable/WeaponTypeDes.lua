local default = {id=0,weaponTypeName="",weaponTypeOpen=0,weaponTypeOrder=0,weaponTypeEnglishName="",weaponTypeIcon="",weaponTypeIconLottery="",weaponTypeText=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponTypeDes_Xls : table 
WeaponTypeDes_Xls =
{
    ["1"]=setmetatable({id=1,weaponTypeName="突击型",weaponTypeOpen=1,weaponTypeOrder=5,weaponTypeEnglishName="Assault",weaponTypeIcon="UI_WeaponType_1gechang",weaponTypeIconLottery="UI_WeaponType_1gechang",weaponTypeText="射速较快，连续射击时，会发射元素跟踪弹，造成额外伤害。"},mt),
    ["2"]=setmetatable({id=2,weaponTypeName="龙骑兵",weaponTypeOpen=2,weaponTypeOrder=1,weaponTypeEnglishName="guide",weaponTypeIcon="UI_WeaponType_1gechang",weaponTypeIconLottery="UI_WeaponType_1gechang",weaponTypeText="比较特殊的武装类型，有关他的资料甚少，也很难见到使用该类武装的斯露德。"},mt),
    ["3"]=setmetatable({id=3,weaponTypeName="狙击型",weaponTypeOpen=1,weaponTypeOrder=3,weaponTypeEnglishName="Snipe",weaponTypeIcon="UI_WeaponType_3daogao",weaponTypeIconLottery="UI_WeaponType_3daogao",weaponTypeText="射程较远，每次攻击时可以为己方同元素斯露德恢复少量生命。"},mt),
    ["4"]=setmetatable({id=4,weaponTypeName="重装型",weaponTypeOpen=1,weaponTypeOrder=4,weaponTypeEnglishName="Heavy",weaponTypeIcon="UI_WeaponType_4libai",weaponTypeIconLottery="UI_WeaponType_4libai",weaponTypeText="普攻均为元素子弹，可以打出积蓄效果，可以用来触发元素过载。"},mt),
    ["5"]=setmetatable({id=5,weaponTypeName="散射型",weaponTypeOpen=1,weaponTypeOrder=2,weaponTypeEnglishName="Scatter",weaponTypeIcon="UI_WeaponType_5jisi",weaponTypeIconLottery="UI_WeaponType_5jisi",weaponTypeText="近距离输出时，伤害较高，每射击一定次数可以发射一次元素子弹。"},mt),
}
--生成获取数据的方法
---@return WeaponTypeDes
function GetWeaponTypeDesData(id)
    return WeaponTypeDes_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponTypeDes : table 
---@field id number
---@field weaponTypeName string
---@field weaponTypeOpen number
---@field weaponTypeOrder number
---@field weaponTypeEnglishName string
---@field weaponTypeIcon string
---@field weaponTypeIconLottery string
---@field weaponTypeText string
