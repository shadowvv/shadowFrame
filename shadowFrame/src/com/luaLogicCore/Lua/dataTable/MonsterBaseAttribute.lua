local default = {monsterBaseAttributeId=0,level=0,atk=0,hp=0,def=0,crit=0,en=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MonsterBaseAttribute_Xls : table 
MonsterBaseAttribute_Xls =
{
    ["1"]=setmetatable({monsterBaseAttributeId=1,level=10,atk=60.96,hp=36.0,def=15.0,crit=0.0,en=0.0},mt),
    ["2"]=setmetatable({monsterBaseAttributeId=2,level=10,atk=60.96,hp=113.0,def=15.0,crit=0.0,en=0.0},mt),
    ["3"]=setmetatable({monsterBaseAttributeId=3,level=10,atk=81.28,hp=1115.0,def=20.0,crit=0.0,en=0.0},mt),
    ["4"]=setmetatable({monsterBaseAttributeId=4,level=10,atk=81.28,hp=1671.0,def=20.0,crit=0.0,en=0.0},mt),
    ["5"]=setmetatable({monsterBaseAttributeId=5,level=10,atk=121.92,hp=5200.0,def=30.0,crit=0.0,en=0.0},mt),
    ["6"]=setmetatable({monsterBaseAttributeId=6,level=10,atk=121.92,hp=8212.0,def=30.0,crit=0.0,en=0.0},mt),
    ["7"]=setmetatable({monsterBaseAttributeId=7,level=10,atk=81.28,hp=7.0,def=15.0,crit=0.0,en=0.0},mt),
    ["999999"]=setmetatable({monsterBaseAttributeId=999999,level=10,atk=10.0,hp=1000000.0,def=10.0,crit=10.0,en=10.0},mt),
    ["999998"]=setmetatable({monsterBaseAttributeId=999998,level=1,atk=35.0,hp=5434.0,def=22.0,crit=0.0,en=0.0},mt),
    ["100"]=setmetatable({monsterBaseAttributeId=100,level=100,atk=2712.0,hp=5867.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["101"]=setmetatable({monsterBaseAttributeId=101,level=100,atk=2712.0,hp=11734.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["102"]=setmetatable({monsterBaseAttributeId=102,level=100,atk=2712.0,hp=4400.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["103"]=setmetatable({monsterBaseAttributeId=103,level=100,atk=2712.0,hp=2933.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["104"]=setmetatable({monsterBaseAttributeId=104,level=100,atk=2712.0,hp=1760.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["105"]=setmetatable({monsterBaseAttributeId=105,level=100,atk=2712.0,hp=2347.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["106"]=setmetatable({monsterBaseAttributeId=106,level=100,atk=2712.0,hp=1173.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["107"]=setmetatable({monsterBaseAttributeId=107,level=100,atk=3615.0,hp=58668.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["108"]=setmetatable({monsterBaseAttributeId=108,level=100,atk=3615.0,hp=70401.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["109"]=setmetatable({monsterBaseAttributeId=109,level=100,atk=3615.0,hp=46934.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["110"]=setmetatable({monsterBaseAttributeId=110,level=100,atk=5423.0,hp=234671.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["111"]=setmetatable({monsterBaseAttributeId=111,level=100,atk=5423.0,hp=293339.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["112"]=setmetatable({monsterBaseAttributeId=112,level=100,atk=5423.0,hp=176003.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["113"]=setmetatable({monsterBaseAttributeId=113,level=100,atk=7231.0,hp=352006.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["114"]=setmetatable({monsterBaseAttributeId=114,level=100,atk=7231.0,hp=469342.0,def=2250.0,crit=0.0,en=0.0},mt),
}
--生成获取数据的方法
---@return MonsterBaseAttribute
function GetMonsterBaseAttributeData(id)
    return MonsterBaseAttribute_Xls[tostring(id)]
end
--自动生成注释
---@class MonsterBaseAttribute : table 
---@field monsterBaseAttributeId number
---@field level number
---@field atk number
---@field hp number
---@field def number
---@field crit number
---@field en number
