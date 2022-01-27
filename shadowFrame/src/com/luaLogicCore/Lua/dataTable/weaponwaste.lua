---@class WeaponWaste_Xls : table 
WeaponWaste_Xls =
{
    ["1"]={weaponType=1,value3=500.0,value4=2.0,value5=3.5},
    ["2"]={weaponType=2,value3=500.0,value4=2.0,value5=3.5},
    ["3"]={weaponType=3,value3=500.0,value4=2.0,value5=3.5},
    ["4"]={weaponType=4,value3=500.0,value4=2.0,value5=3.5},
    ["5"]={weaponType=5,value3=500.0,value4=2.0,value5=3.5},
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
