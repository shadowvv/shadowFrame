local default = {type=0,advDistance=xlsNilTable,attenuationDistance=xlsNilTable,highAttenuationDistance=xlsNilTable,uselessDistance=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponDistance_Xls : table 
WeaponDistance_Xls =
{
    ["1"]=setmetatable({type=1,advDistance={[1]=1,[2]=2,[3]=3,[4]=4,[5]=5},attenuationDistance=xlsNilTable,highAttenuationDistance={[1]=6,[2]=7},uselessDistance={[1]=8}},mt),
    ["2"]=setmetatable({type=2,advDistance={[1]=1,[2]=2,[3]=3,[4]=4,[5]=5},attenuationDistance=xlsNilTable,highAttenuationDistance={[1]=6,[2]=7},uselessDistance={[1]=8}},mt),
    ["3"]=setmetatable({type=3,advDistance={[1]=1,[2]=2,[3]=3,[4]=4,[5]=5,[6]=6},attenuationDistance=xlsNilTable,highAttenuationDistance={[1]=7},uselessDistance={[1]=8}},mt),
    ["4"]=setmetatable({type=4,advDistance={[1]=1,[2]=2,[3]=3,[4]=4,[5]=5},attenuationDistance=xlsNilTable,highAttenuationDistance={[1]=5,[2]=6,[3]=7},uselessDistance={[1]=8}},mt),
    ["5"]=setmetatable({type=5,advDistance={[1]=1,[2]=2,[3]=3},attenuationDistance=xlsNilTable,highAttenuationDistance={[1]=4,[2]=5,[3]=6,[4]=7},uselessDistance={[1]=8}},mt),
    ["999"]=setmetatable({type=999,advDistance={[1]=1,[2]=2,[3]=3,[4]=4,[5]=5,[6]=6,[7]=7,[8]=8}},mt),
    ["998"]=setmetatable({type=998,advDistance={[1]=1,[2]=2,[3]=3,[4]=4,[5]=5,[6]=6,[7]=7,[8]=8}},mt),
}
--生成获取数据的方法
---@return WeaponDistance
function GetWeaponDistanceData(id)
    return WeaponDistance_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponDistance : table 
---@field type number
---@field advDistance table
---@field attenuationDistance table
---@field highAttenuationDistance table
---@field uselessDistance table
