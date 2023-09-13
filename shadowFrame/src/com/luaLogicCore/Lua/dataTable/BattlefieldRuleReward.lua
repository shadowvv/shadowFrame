local default = {id=0,segment="",segmenten="",segmentPicture="",segmentLargetPicture="",segmentSmallPicture="",participationLevel=xlsNilTable,lvId=xlsNilTable,numberLimit=0,descend=xlsNilTable,descendReward=0,remain=xlsNilTable,remainReward=0,elevate=xlsNilTable,elevateReward=0,protect=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldRuleReward_Xls : table 
BattlefieldRuleReward_Xls =
{
    ["1001"]=setmetatable({id=1001,segment="初露",segmenten="First sight",segmentPicture="icon_M_1",segmentLargetPicture="icon_L_1",segmentSmallPicture="icon_S_1",participationLevel={[1]=1,[2]=2},lvId={[1]=1,[2]=2},numberLimit=21,descend=xlsNilTable,descendReward=0,remain={[1]=16,[2]=21},remainReward=50101,elevate={[1]=1,[2]=15},elevateReward=50102,protect=0},mt),
    ["1002"]=setmetatable({id=1002,segment="引领",segmenten="Leading",segmentPicture="icon_M_2",segmentLargetPicture="icon_L_2",segmentSmallPicture="icon_S_2",participationLevel={[1]=1,[2]=2},lvId={[1]=1,[2]=2},numberLimit=18,descend={[1]=16,[2]=18},descendReward=50103,remain={[1]=7,[2]=15},remainReward=50104,elevate={[1]=1,[2]=6},elevateReward=50105,protect=0},mt),
    ["1003"]=setmetatable({id=1003,segment="监察",segmenten="Surveillance",segmentPicture="icon_M_3",segmentLargetPicture="icon_L_3",segmentSmallPicture="icon_S_3",participationLevel={[1]=1,[2]=2},lvId={[1]=1,[2]=2},numberLimit=18,descend={[1]=16,[2]=18},descendReward=50106,remain={[1]=7,[2]=15},remainReward=50107,elevate={[1]=1,[2]=6},elevateReward=50108,protect=0},mt),
    ["1004"]=setmetatable({id=1004,segment="通晓",segmenten="proficient in",segmentPicture="icon_M_4",segmentLargetPicture="icon_L_4",segmentSmallPicture="icon_S_4",participationLevel={[1]=1,[2]=2},lvId={[1]=1,[2]=2},numberLimit=15,descend={[1]=10,[2]=15},descendReward=50109,remain={[1]=4,[2]=9},remainReward=50110,elevate={[1]=1,[2]=3},elevateReward=50111,protect=0},mt),
    ["1005"]=setmetatable({id=1005,segment="圣迹",segmenten="Sacred relics",segmentPicture="icon_M_5",segmentLargetPicture="icon_L_5",segmentSmallPicture="icon_S_5",participationLevel={[1]=1,[2]=2},lvId={[1]=1,[2]=2},numberLimit=15,descend={[1]=10,[2]=15},descendReward=50112,remain={[1]=4,[2]=9},remainReward=50113,elevate={[1]=1,[2]=3},elevateReward=0,protect=100},mt),
    ["1006"]=setmetatable({id=1006,segment="戍卫",segmenten="garrison",segmentPicture="icon_M_6",segmentLargetPicture="icon_L_6",segmentSmallPicture="icon_S_6",participationLevel={[1]=2},lvId={[1]=2},numberLimit=15,descend={[1]=7,[2]=15},descendReward=0,remain={[1]=4,[2]=6},remainReward=0,elevate={[1]=1,[2]=3},elevateReward=0,protect=0},mt),
    ["1007"]=setmetatable({id=1007,segment="全知",segmenten="Omniscience",segmentPicture="icon_M_7",segmentLargetPicture="icon_L_7",segmentSmallPicture="icon_S_7",participationLevel={[1]=2},lvId={[1]=2},numberLimit=15,descend={[1]=3,[2]=15},descendReward=0,remain={[1]=1,[2]=2},remainReward=0,elevate=xlsNilTable,elevateReward=0,protect=0},mt),
}
--生成获取数据的方法
---@return BattlefieldRuleReward
function GetBattlefieldRuleRewardData(id)
    return BattlefieldRuleReward_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldRuleReward : table 
---@field id number
---@field segment string
---@field segmenten string
---@field segmentPicture string
---@field segmentLargetPicture string
---@field segmentSmallPicture string
---@field participationLevel table
---@field lvId table
---@field numberLimit number
---@field descend table
---@field descendReward number
---@field remain table
---@field remainReward number
---@field elevate table
---@field elevateReward number
---@field protect number
