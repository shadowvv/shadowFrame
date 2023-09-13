local default = {id=0,monsterInstanceid=0,usePrefab=0,hurtBelongType=0,maxHp=0,bodyPartId=0,pos=xlsNilTable,rotate=xlsNilTable,size=xlsNilTable,followType=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Summon_Xls : table 
Summon_Xls =
{
    ["1"]=setmetatable({id=1,monsterInstanceid=41,usePrefab=1,hurtBelongType=1,maxHp=100,bodyPartId=-1,pos={[1]=0,[2]=0,[3]=20},rotate={[1]=0,[2]=0,[3]=0},size={[1]=1,[2]=1,[3]=1},followType=1},mt),
    ["2"]=setmetatable({id=2,monsterInstanceid=41,usePrefab=1,hurtBelongType=1,maxHp=100,bodyPartId=-1,pos={[1]=0,[2]=0,[3]=0},rotate={[1]=0,[2]=0,[3]=0},size={[1]=1,[2]=1,[3]=1},followType=1},mt),
    ["3"]=setmetatable({id=3,monsterInstanceid=41,usePrefab=1,hurtBelongType=1,maxHp=100,bodyPartId=-1,pos={[1]=0,[2]=0,[3]=0},rotate={[1]=0,[2]=0,[3]=0},size={[1]=1,[2]=1,[3]=1},followType=1},mt),
}
--生成获取数据的方法
---@return Summon
function GetSummonData(id)
    return Summon_Xls[tostring(id)]
end
--自动生成注释
---@class Summon : table 
---@field id number
---@field monsterInstanceid number
---@field usePrefab number
---@field hurtBelongType number
---@field maxHp number
---@field bodyPartId number
---@field pos table
---@field rotate table
---@field size table
---@field followType number
