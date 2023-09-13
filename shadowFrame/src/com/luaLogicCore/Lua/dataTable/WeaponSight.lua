local default = {id=0,type=0,uiPath="",initSize=xlsNilTable,maxScale=0,noTarget=xlsNilTable,lockTarget=xlsNilTable,findTarget=xlsNilTable,killTarget=xlsNilTable,fireMax=xlsNilTable,fireMin=xlsNilTable,fireOnce=xlsNilTable,maxSize=xlsNilTable,minSize=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponSight_Xls : table 
WeaponSight_Xls =
{
    ["1000"]=setmetatable({id=1000,type=1,uiPath="UIBattleCrosshairType1",initSize={[1]=32,[2]=32},maxScale=1.2,noTarget={[1]=24,[2]=24},lockTarget={[1]=24,[2]=24},findTarget={[1]=32,[2]=32},killTarget={[1]=32,[2]=32},fireMax={[1]=32,[2]=32},fireMin={[1]=20,[2]=20},fireOnce={[1]=3,[2]=3}},mt),
    ["3000"]=setmetatable({id=3000,type=2,uiPath="UIBattleCrosshairType2",initSize={[1]=32,[2]=32},maxScale=1.2,noTarget={[1]=24,[2]=24},lockTarget={[1]=24,[2]=24},findTarget={[1]=32,[2]=32},killTarget={[1]=32,[2]=32},fireMax={[1]=32,[2]=32},fireMin={[1]=20,[2]=20},fireOnce={[1]=3,[2]=3}},mt),
    ["4000"]=setmetatable({id=4000,type=3,uiPath="UIBattleCrosshairType3",initSize={[1]=32,[2]=32},maxScale=1.2,noTarget={[1]=24,[2]=24},lockTarget={[1]=24,[2]=24},findTarget={[1]=32,[2]=32},killTarget={[1]=32,[2]=32},fireMax={[1]=32,[2]=32},fireMin={[1]=20,[2]=20},fireOnce={[1]=3,[2]=3}},mt),
    ["5000"]=setmetatable({id=5000,type=4,uiPath="UIBattleCrosshairType4",initSize={[1]=32,[2]=32},maxScale=1.2,noTarget={[1]=24,[2]=24},lockTarget={[1]=24,[2]=24},findTarget={[1]=32,[2]=32},killTarget={[1]=32,[2]=32},fireMax={[1]=32,[2]=32},fireMin={[1]=20,[2]=20},fireOnce={[1]=3,[2]=3},maxSize={[1]=60,[2]=36},minSize={[1]=30,[2]=20}},mt),
    ["6000"]=setmetatable({id=6000,type=5,uiPath="UIBattleCrosshairType5",initSize={[1]=32,[2]=32},maxScale=1.2,noTarget={[1]=24,[2]=24},lockTarget={[1]=24,[2]=24},findTarget={[1]=32,[2]=32},killTarget={[1]=32,[2]=32},fireMax={[1]=32,[2]=32},fireMin={[1]=20,[2]=20},fireOnce={[1]=3,[2]=3}},mt),
}
--生成获取数据的方法
---@return WeaponSight
function GetWeaponSightData(id)
    return WeaponSight_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponSight : table 
---@field id number
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
---@field maxSize table
---@field minSize table
