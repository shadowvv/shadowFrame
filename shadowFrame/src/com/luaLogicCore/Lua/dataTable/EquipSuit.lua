local default = {equipSuitId=0,suitName="",equipSuitShow=0,equipSuitOrder=0,suitEffectName="",suitIcon="",suitNum1=0,suitEffect1=xlsNilTable,suitNum2=0,suitEffect2=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class EquipSuit_Xls : table 
EquipSuit_Xls =
{
    ["1003001"]=setmetatable({equipSuitId=1003001,suitName="歌者",equipSuitShow=1,equipSuitOrder=1,suitEffectName="渺小的奇迹",suitIcon="Equip_1003001",suitNum1=2,suitEffect1={[1]=7000010},suitNum2=4,suitEffect2={[1]=7000011}},mt),
    ["1003002"]=setmetatable({equipSuitId=1003002,suitName="阳靥",equipSuitShow=1,equipSuitOrder=2,suitEffectName="绚烂的根源",suitIcon="Equip_1003002",suitNum1=2,suitEffect1={[1]=7000020},suitNum2=4,suitEffect2={[1]=7000021}},mt),
    ["1003003"]=setmetatable({equipSuitId=1003003,suitName="天理",equipSuitShow=1,equipSuitOrder=3,suitEffectName="降劫的苍雷",suitIcon="Equip_1003003",suitNum1=2,suitEffect1={[1]=7000030},suitNum2=4,suitEffect2={[1]=7000031}},mt),
    ["1003004"]=setmetatable({equipSuitId=1003004,suitName="狂岚",equipSuitShow=1,equipSuitOrder=4,suitEffectName="风困于远方",suitIcon="Equip_1003004",suitNum1=2,suitEffect1={[1]=7000040},suitNum2=4,suitEffect2={[1]=7000041}},mt),
    ["1003005"]=setmetatable({equipSuitId=1003005,suitName="鲸陨于极夜",equipSuitShow=1,equipSuitOrder=5,suitEffectName="滞锁世界|极光长夜",suitIcon="Equip_1003005",suitNum1=2,suitEffect1={[1]=7000050},suitNum2=4,suitEffect2={[1]=7000051}},mt),
    ["1003006"]=setmetatable({equipSuitId=1003006,suitName="伪物的救赎",equipSuitShow=1,equipSuitOrder=6,suitEffectName="黑星与白夜交替",suitIcon="Equip_1003006",suitNum1=2,suitEffect1={[1]=7000060},suitNum2=4,suitEffect2={[1]=7000061}},mt),
    ["1003007"]=setmetatable({equipSuitId=1003007,suitName="世象的流动",equipSuitShow=1,equipSuitOrder=7,suitEffectName="心脏的成因",suitIcon="Equip_1003007",suitNum1=2,suitEffect1={[1]=7000070},suitNum2=4,suitEffect2={[1]=7000071,[2]=7000072,[3]=7000074}},mt),
    ["1003008"]=setmetatable({equipSuitId=1003008,suitName="交替的轮廓",equipSuitShow=1,equipSuitOrder=8,suitEffectName="遥望四季的长空使徒",suitIcon="Equip_1003008",suitNum1=2,suitEffect1={[1]=7000080},suitNum2=4,suitEffect2={[1]=7000082,[2]=7000083}},mt),
    ["1003009"]=setmetatable({equipSuitId=1003009,suitName="朔星的隐没",equipSuitShow=2,equipSuitOrder=9,suitEffectName="如幻如尘",suitIcon="Equip_1003008",suitNum1=2,suitEffect1={[1]=7000090},suitNum2=4,suitEffect2={[1]=7000091}},mt),
    ["1003010"]=setmetatable({equipSuitId=1003010,suitName="定鼎开源",equipSuitShow=1,equipSuitOrder=10,suitEffectName="天下合",suitIcon="Equip_1003010",suitNum1=2,suitEffect1={[1]=7000150},suitNum2=4,suitEffect2={[1]=7000151,[2]=7000152}},mt),
    ["1003011"]=setmetatable({equipSuitId=1003011,suitName="追述之扉",equipSuitShow=1,equipSuitOrder=11,suitEffectName="追忆往昔之吟",suitIcon="Equip_1003011",suitNum1=2,suitEffect1={[1]=7000160},suitNum2=4,suitEffect2={[1]=7000161}},mt),
    ["1003012"]=setmetatable({equipSuitId=1003012,suitName="倒吊者的箴言",equipSuitShow=1,equipSuitOrder=12,suitEffectName="至高无上|狂猎先锋",suitIcon="Equip_1003012",suitNum1=2,suitEffect1={[1]=7000170},suitNum2=4,suitEffect2={[1]=7000171}},mt),
    ["1003013"]=setmetatable({equipSuitId=1003013,suitName="永冻荒墟",equipSuitShow=1,equipSuitOrder=13,suitEffectName="终古的壁垒",suitIcon="Equip_1003013",suitNum1=2,suitEffect1={[1]=7000180},suitNum2=4,suitEffect2={[1]=7000181,[2]=7000182}},mt),
    ["1003014"]=setmetatable({equipSuitId=1003014,suitName="万物汲养",equipSuitShow=1,equipSuitOrder=14,suitEffectName="孤梦唤起",suitIcon="Equip_1003014",suitNum1=2,suitEffect1={[1]=7000140},suitNum2=4,suitEffect2={[1]=7000141}},mt),
    ["1003015"]=setmetatable({equipSuitId=1003015,suitName="赞美诗",equipSuitShow=2,equipSuitOrder=15,suitEffectName="溢彩歌谣",suitIcon="Equip_1003001",suitNum1=2,suitEffect1={[1]=7000190},suitNum2=4,suitEffect2={[1]=7000191}},mt),
    ["9999"]=setmetatable({equipSuitId=9999,suitName="废弃不敢删套",equipSuitShow=2,equipSuitOrder=10,suitEffectName="废弃不敢删套",suitIcon="Equip_1003002",suitNum1=2,suitEffect1={[1]=7000020},suitNum2=4,suitEffect2={[1]=7000021}},mt),
}
--生成获取数据的方法
---@return EquipSuit
function GetEquipSuitData(id)
    return EquipSuit_Xls[tostring(id)]
end
--自动生成注释
---@class EquipSuit : table 
---@field equipSuitId number
---@field suitName string
---@field equipSuitShow number
---@field equipSuitOrder number
---@field suitEffectName string
---@field suitIcon string
---@field suitNum1 number
---@field suitEffect1 table
---@field suitNum2 number
---@field suitEffect2 table
