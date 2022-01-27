---@class WeaponDistance_Xls : table 
WeaponDistance_Xls =
{
    ["1"]={type=1,advDistance={[1]=3,[2]=4},attenuationDistance={[1]=1,[2]=2},highAttenuationDistance={[1]=5},uselessDistance={[1]=6,[2]=7,[3]=8}},
    ["2"]={type=2,advDistance={[1]=3,[2]=4},attenuationDistance={[1]=1,[2]=2},highAttenuationDistance={[1]=5},uselessDistance={[1]=6,[2]=7,[3]=8}},
    ["3"]={type=3,advDistance={[1]=5,[2]=6},attenuationDistance={[1]=3,[2]=4},highAttenuationDistance={[1]=1,[2]=2},uselessDistance={[1]=7,[2]=8}},
    ["4"]={type=4,advDistance=xlsNilTable,attenuationDistance={[1]=1,[2]=2,[3]=3,[4]=4},highAttenuationDistance={[1]=5,[2]=6},uselessDistance={[1]=7,[2]=8}},
    ["5"]={type=5,advDistance={[1]=1,[2]=2},attenuationDistance={[1]=3},highAttenuationDistance={[1]=4},uselessDistance={[1]=5,[2]=6,[3]=7,[4]=8}},
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
