local default = {typeLevelAttributeId=0,atk=0,hp=0,def=0,crit=0,en=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TypeLevelAttribute_Xls : table 
TypeLevelAttribute_Xls =
{
    ["99"]=setmetatable({typeLevelAttributeId=99,atk=4.0,hp=500.0,def=2.5,crit=0.0,en=0.0},mt),
    ["1"]=setmetatable({typeLevelAttributeId=1,atk=2712.0,hp=5867.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["2"]=setmetatable({typeLevelAttributeId=2,atk=2712.0,hp=11734.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["3"]=setmetatable({typeLevelAttributeId=3,atk=2712.0,hp=5866.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["4"]=setmetatable({typeLevelAttributeId=4,atk=2712.0,hp=1760.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["5"]=setmetatable({typeLevelAttributeId=5,atk=2712.0,hp=2347.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["6"]=setmetatable({typeLevelAttributeId=6,atk=3615.0,hp=58668.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["7"]=setmetatable({typeLevelAttributeId=7,atk=3615.0,hp=70401.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["8"]=setmetatable({typeLevelAttributeId=8,atk=3615.0,hp=46934.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["9"]=setmetatable({typeLevelAttributeId=9,atk=5423.0,hp=234671.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["10"]=setmetatable({typeLevelAttributeId=10,atk=5423.0,hp=293339.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["11"]=setmetatable({typeLevelAttributeId=11,atk=7231.0,hp=352006.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["12"]=setmetatable({typeLevelAttributeId=12,atk=7231.0,hp=469342.0,def=2250.0,crit=0.0,en=0.0},mt),
    ["101"]=setmetatable({typeLevelAttributeId=101,atk=1.0,hp=1.0,def=0.0,crit=0.0,en=0.0},mt),
    ["102"]=setmetatable({typeLevelAttributeId=102,atk=1.0,hp=1.25,def=0.0,crit=0.0,en=0.0},mt),
    ["103"]=setmetatable({typeLevelAttributeId=103,atk=1.0,hp=0.75,def=0.0,crit=0.0,en=0.0},mt),
    ["104"]=setmetatable({typeLevelAttributeId=104,atk=1.0,hp=1.0,def=0.0,crit=0.0,en=0.0},mt),
    ["105"]=setmetatable({typeLevelAttributeId=105,atk=1.0,hp=1.25,def=0.0,crit=0.0,en=0.0},mt),
    ["106"]=setmetatable({typeLevelAttributeId=106,atk=1.0,hp=0.75,def=0.0,crit=0.0,en=0.0},mt),
    ["107"]=setmetatable({typeLevelAttributeId=107,atk=1.0,hp=1.0,def=1.0,crit=0.0,en=0.0},mt),
    ["108"]=setmetatable({typeLevelAttributeId=108,atk=1.0,hp=1.25,def=1.0,crit=0.0,en=0.0},mt),
    ["109"]=setmetatable({typeLevelAttributeId=109,atk=1.0,hp=1.0,def=1.0,crit=0.0,en=0.0},mt),
    ["110"]=setmetatable({typeLevelAttributeId=110,atk=1.0,hp=1.25,def=1.0,crit=0.0,en=0.0},mt),
    ["111"]=setmetatable({typeLevelAttributeId=111,atk=1.0,hp=1.0,def=0.0,crit=0.0,en=0.0},mt),
    ["112"]=setmetatable({typeLevelAttributeId=112,atk=1.0,hp=100.0,def=0.0,crit=0.0,en=0.0},mt),
    ["113"]=setmetatable({typeLevelAttributeId=113,atk=1.0,hp=120.0,def=0.0,crit=0.0,en=0.0},mt),
    ["114"]=setmetatable({typeLevelAttributeId=114,atk=1.0,hp=150.0,def=0.0,crit=0.0,en=0.0},mt),
    ["115"]=setmetatable({typeLevelAttributeId=115,atk=1.0,hp=1.0,def=0.0,crit=0.0,en=0.0},mt),
    ["116"]=setmetatable({typeLevelAttributeId=116,atk=1.0,hp=1.0,def=0.0,crit=0.0,en=0.0},mt),
    ["117"]=setmetatable({typeLevelAttributeId=117,atk=1.0,hp=1.0,def=0.0,crit=0.0,en=0.0},mt),
    ["118"]=setmetatable({typeLevelAttributeId=118,atk=1.0,hp=1.0,def=0.0,crit=0.0,en=0.0},mt),
    ["119"]=setmetatable({typeLevelAttributeId=119,atk=1.0,hp=1.0,def=1.0,crit=0.0,en=0.0},mt),
    ["120"]=setmetatable({typeLevelAttributeId=120,atk=1.0,hp=1.0,def=1.0,crit=0.0,en=0.0},mt),
    ["121"]=setmetatable({typeLevelAttributeId=121,atk=1.0,hp=1.0,def=1.0,crit=0.0,en=0.0},mt),
    ["122"]=setmetatable({typeLevelAttributeId=122,atk=1.0,hp=1.0,def=1.0,crit=0.0,en=0.0},mt),
    ["2011"]=setmetatable({typeLevelAttributeId=2011,atk=4.0,hp=21.0,def=2.5,crit=0.0,en=0.0},mt),
    ["2012"]=setmetatable({typeLevelAttributeId=2012,atk=4.0,hp=40.5,def=2.5,crit=0.0,en=0.0},mt),
    ["2013"]=setmetatable({typeLevelAttributeId=2013,atk=4.0,hp=21.0,def=2.5,crit=0.0,en=0.0},mt),
    ["2014"]=setmetatable({typeLevelAttributeId=2014,atk=4.0,hp=4.25,def=2.5,crit=0.0,en=0.0},mt),
    ["2015"]=setmetatable({typeLevelAttributeId=2015,atk=4.0,hp=8.5,def=2.5,crit=0.0,en=0.0},mt),
    ["2021"]=setmetatable({typeLevelAttributeId=2021,atk=4.0,hp=123.0,def=2.0,crit=0.0,en=0.0},mt),
    ["2022"]=setmetatable({typeLevelAttributeId=2022,atk=4.0,hp=184.5,def=2.0,crit=0.0,en=0.0},mt),
    ["2023"]=setmetatable({typeLevelAttributeId=2023,atk=4.0,hp=30.75,def=2.0,crit=0.0,en=0.0},mt),
    ["2031"]=setmetatable({typeLevelAttributeId=2031,atk=4.0,hp=306.25,def=1.3,crit=0.0,en=0.0},mt),
    ["2032"]=setmetatable({typeLevelAttributeId=2032,atk=4.0,hp=462.5,def=1.3,crit=0.0,en=0.0},mt),
    ["2041"]=setmetatable({typeLevelAttributeId=2041,atk=4.0,hp=400.0,def=1.0,crit=0.0,en=0.0},mt),
    ["2042"]=setmetatable({typeLevelAttributeId=2042,atk=4.0,hp=500.0,def=1.0,crit=0.0,en=0.0},mt),
    ["3011"]=setmetatable({typeLevelAttributeId=3011,atk=4.0,hp=33.6,def=2.5,crit=0.0,en=0.0},mt),
    ["3012"]=setmetatable({typeLevelAttributeId=3012,atk=4.0,hp=64.8,def=2.5,crit=0.0,en=0.0},mt),
    ["3013"]=setmetatable({typeLevelAttributeId=3013,atk=4.0,hp=33.6,def=2.5,crit=0.0,en=0.0},mt),
    ["3014"]=setmetatable({typeLevelAttributeId=3014,atk=4.0,hp=6.8,def=2.5,crit=0.0,en=0.0},mt),
    ["3015"]=setmetatable({typeLevelAttributeId=3015,atk=4.0,hp=13.6,def=2.5,crit=0.0,en=0.0},mt),
    ["3021"]=setmetatable({typeLevelAttributeId=3021,atk=4.0,hp=196.8,def=2.0,crit=0.0,en=0.0},mt),
    ["3022"]=setmetatable({typeLevelAttributeId=3022,atk=4.0,hp=295.2,def=2.0,crit=0.0,en=0.0},mt),
    ["3023"]=setmetatable({typeLevelAttributeId=3023,atk=4.0,hp=49.2,def=2.0,crit=0.0,en=0.0},mt),
    ["3031"]=setmetatable({typeLevelAttributeId=3031,atk=4.0,hp=490.0,def=1.3,crit=0.0,en=0.0},mt),
    ["3032"]=setmetatable({typeLevelAttributeId=3032,atk=4.0,hp=740.0,def=1.3,crit=0.0,en=0.0},mt),
    ["3041"]=setmetatable({typeLevelAttributeId=3041,atk=4.0,hp=640.0,def=1.0,crit=0.0,en=0.0},mt),
    ["3042"]=setmetatable({typeLevelAttributeId=3042,atk=4.0,hp=800.0,def=1.0,crit=0.0,en=0.0},mt),
    ["4011"]=setmetatable({typeLevelAttributeId=4011,atk=4.0,hp=42.0,def=2.5,crit=0.0,en=0.0},mt),
    ["4012"]=setmetatable({typeLevelAttributeId=4012,atk=4.0,hp=81.0,def=2.5,crit=0.0,en=0.0},mt),
    ["4013"]=setmetatable({typeLevelAttributeId=4013,atk=4.0,hp=42.0,def=2.5,crit=0.0,en=0.0},mt),
    ["4014"]=setmetatable({typeLevelAttributeId=4014,atk=4.0,hp=8.5,def=2.5,crit=0.0,en=0.0},mt),
    ["4015"]=setmetatable({typeLevelAttributeId=4015,atk=4.0,hp=17.0,def=2.5,crit=0.0,en=0.0},mt),
    ["4021"]=setmetatable({typeLevelAttributeId=4021,atk=4.0,hp=246.0,def=2.0,crit=0.0,en=0.0},mt),
    ["4022"]=setmetatable({typeLevelAttributeId=4022,atk=4.0,hp=369.0,def=2.0,crit=0.0,en=0.0},mt),
    ["4023"]=setmetatable({typeLevelAttributeId=4023,atk=4.0,hp=62.0,def=2.0,crit=0.0,en=0.0},mt),
    ["4031"]=setmetatable({typeLevelAttributeId=4031,atk=4.0,hp=612.5,def=1.3,crit=0.0,en=0.0},mt),
    ["4032"]=setmetatable({typeLevelAttributeId=4032,atk=4.0,hp=925.0,def=1.3,crit=0.0,en=0.0},mt),
    ["4041"]=setmetatable({typeLevelAttributeId=4041,atk=4.0,hp=800.0,def=1.0,crit=0.0,en=0.0},mt),
    ["4042"]=setmetatable({typeLevelAttributeId=4042,atk=4.0,hp=1000.0,def=1.0,crit=0.0,en=0.0},mt),
    ["5011"]=setmetatable({typeLevelAttributeId=5011,atk=4.0,hp=67.2,def=2.5,crit=0.0,en=0.0},mt),
    ["5012"]=setmetatable({typeLevelAttributeId=5012,atk=4.0,hp=129.6,def=2.5,crit=0.0,en=0.0},mt),
    ["5013"]=setmetatable({typeLevelAttributeId=5013,atk=4.0,hp=67.2,def=2.5,crit=0.0,en=0.0},mt),
    ["5014"]=setmetatable({typeLevelAttributeId=5014,atk=4.0,hp=13.6,def=2.5,crit=0.0,en=0.0},mt),
    ["5015"]=setmetatable({typeLevelAttributeId=5015,atk=4.0,hp=27.2,def=2.5,crit=0.0,en=0.0},mt),
    ["5021"]=setmetatable({typeLevelAttributeId=5021,atk=4.0,hp=393.6,def=2.0,crit=0.0,en=0.0},mt),
    ["5022"]=setmetatable({typeLevelAttributeId=5022,atk=4.0,hp=590.4,def=2.0,crit=0.0,en=0.0},mt),
    ["5023"]=setmetatable({typeLevelAttributeId=5023,atk=4.0,hp=100.0,def=2.0,crit=0.0,en=0.0},mt),
    ["5031"]=setmetatable({typeLevelAttributeId=5031,atk=4.0,hp=980.0,def=1.3,crit=0.0,en=0.0},mt),
    ["5032"]=setmetatable({typeLevelAttributeId=5032,atk=4.0,hp=1480.0,def=1.3,crit=0.0,en=0.0},mt),
    ["5041"]=setmetatable({typeLevelAttributeId=5041,atk=4.0,hp=1280.0,def=1.0,crit=0.0,en=0.0},mt),
    ["5042"]=setmetatable({typeLevelAttributeId=5042,atk=4.0,hp=1600.0,def=1.0,crit=0.0,en=0.0},mt),
}
--生成获取数据的方法
---@return TypeLevelAttribute
function GetTypeLevelAttributeData(id)
    return TypeLevelAttribute_Xls[tostring(id)]
end
--自动生成注释
---@class TypeLevelAttribute : table 
---@field typeLevelAttributeId number
---@field atk number
---@field hp number
---@field def number
---@field crit number
---@field en number
