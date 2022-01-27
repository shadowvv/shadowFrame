---@class WeaponSight_Xls : table 
WeaponSight_Xls =
{
    ["1000"]={id=1000,beiZhu="冲锋通用",type=1,uiPath="Sight_Normal",initSize={[1]=32.0,[2]=32.0},maxScale=1.2,noTarget={[1]=24.0,[2]=24.0},lockTarget={[1]=24.0,[2]=24.0},findTarget={[1]=32.0,[2]=32.0},killTarget={[1]=32.0,[2]=32.0},fireMax={[1]=32.0,[2]=32.0},fireMin={[1]=20.0,[2]=20.0},fireOnce={[1]=3.0,[2]=3.0}},
    ["3000"]={id=3000,beiZhu="狙击通用",type=2,uiPath="Sight_Sniper",initSize={[1]=32.0,[2]=32.0},maxScale=1.2,noTarget={[1]=24.0,[2]=24.0},lockTarget={[1]=24.0,[2]=24.0},findTarget={[1]=32.0,[2]=32.0},killTarget={[1]=32.0,[2]=32.0},fireMax={[1]=32.0,[2]=32.0},fireMin={[1]=20.0,[2]=20.0},fireOnce={[1]=3.0,[2]=3.0}},
    ["4000"]={id=4000,beiZhu="法器通用",type=3,uiPath="Sight_Magic",initSize={[1]=32.0,[2]=32.0},maxScale=1.2,noTarget={[1]=24.0,[2]=24.0},lockTarget={[1]=24.0,[2]=24.0},findTarget={[1]=32.0,[2]=32.0},killTarget={[1]=32.0,[2]=32.0},fireMax={[1]=32.0,[2]=32.0},fireMin={[1]=20.0,[2]=20.0},fireOnce={[1]=3.0,[2]=3.0}},
    ["5000"]={id=5000,beiZhu="霰弹通用",type=4,uiPath="Sight_ShotGun",initSize={[1]=32.0,[2]=32.0},maxScale=1.2,noTarget={[1]=24.0,[2]=24.0},lockTarget={[1]=24.0,[2]=24.0},findTarget={[1]=32.0,[2]=32.0},killTarget={[1]=32.0,[2]=32.0},fireMax={[1]=32.0,[2]=32.0},fireMin={[1]=20.0,[2]=20.0},fireOnce={[1]=3.0,[2]=3.0}},
}
--生成获取数据的方法
---@return WeaponSight
function GetWeaponSightData(id)
    return WeaponSight_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponSight : table 
---@field id number
---@field beiZhu string
---@field type number
---@field uiPath string
---@field initSize table
---@field maxScale number
---@field noTarget table
---@field lockTarget table
---@field findTarget table
---@field killTarget table
---@field fireMax table
---@field fireMin table
---@field fireOnce table
