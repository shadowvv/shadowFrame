local default = {id=0,monsterPosition=xlsNilTable,monsterRotation=xlsNilTable,monsterScale=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontMonsterScale_Xls : table 
AbyssFrontMonsterScale_Xls =
{
    ["1"]=setmetatable({id=1,monsterPosition={[1]=-13.3,[2]=44,[3]=84},monsterRotation={[1]=-199,[2]=27.5,[3]=17},monsterScale=1},mt),
    ["2"]=setmetatable({id=2,monsterPosition={[1]=-11.25,[2]=41.8,[3]=79.5},monsterRotation={[1]=-195.8,[2]=48.4,[3]=200.9},monsterScale=1},mt),
    ["3"]=setmetatable({id=3,monsterPosition={[1]=-4.1,[2]=15,[3]=26.1},monsterRotation={[1]=33.8,[2]=176.34,[3]=362.72},monsterScale=1},mt),
    ["4"]=setmetatable({id=4,monsterPosition={[1]=-73,[2]=226,[3]=447},monsterRotation={[1]=-193,[2]=54,[3]=-162},monsterScale=1},mt),
    ["5"]=setmetatable({id=5,monsterPosition={[1]=-1.2,[2]=6.3,[3]=8.7},monsterRotation={[1]=20.645,[2]=-173.455,[3]=6.9},monsterScale=1},mt),
}
--生成获取数据的方法
---@return AbyssFrontMonsterScale
function GetAbyssFrontMonsterScaleData(id)
    return AbyssFrontMonsterScale_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontMonsterScale : table 
---@field id number
---@field monsterPosition table
---@field monsterRotation table
---@field monsterScale number
