local default = {id=0,levelType=0,sortOrder=0,typeName="",typeNameTrans="",nameIcon="",unlock=0,unlockOpen="",unlockOpenTxt="",unlockGroup=0,groupRewardShow=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TrainLevelGroup_Xls : table 
TrainLevelGroup_Xls =
{
    ["1001"]=setmetatable({id=1001,levelType=1,sortOrder=2,typeName="金色战线",typeNameTrans="Contributions",nameIcon="limit_UI_icon_reactiontype_blast",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6101110,groupRewardShow=590002},mt),
    ["1002"]=setmetatable({id=1002,levelType=1,sortOrder=1,typeName="高压底线",typeNameTrans="Reports",nameIcon="limit_UI_icon_reactiontype_blast",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6101110,groupRewardShow=590102},mt),
    ["1004"]=setmetatable({id=1004,levelType=1,sortOrder=4,typeName="资源回收",typeNameTrans="Recovery",nameIcon="limit_UI_icon_reactiontype_blast",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6102106,groupRewardShow=591002},mt),
    ["2001"]=setmetatable({id=2001,levelType=2,sortOrder=1,typeName="异生醒转·火",typeNameTrans="Fire crystals",nameIcon="limit_UI_icon_element_fire",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6101110,groupRewardShow=590601},mt),
    ["2002"]=setmetatable({id=2002,levelType=2,sortOrder=2,typeName="异生醒转·雷",typeNameTrans="Thunder crystals",nameIcon="limit_UI_icon_element_thunder",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6101110,groupRewardShow=590701},mt),
    ["2003"]=setmetatable({id=2003,levelType=2,sortOrder=3,typeName="异生醒转·风",typeNameTrans="Wind crystals",nameIcon="limit_UI_icon_element_wind",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6101110,groupRewardShow=590801},mt),
    ["2004"]=setmetatable({id=2004,levelType=2,sortOrder=4,typeName="异生醒转·冰",typeNameTrans="Ice crystals",nameIcon="limit_UI_icon_element_ice",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6101110,groupRewardShow=590501},mt),
    ["2005"]=setmetatable({id=2005,levelType=0,sortOrder=5,typeName="异生醒转·符能",typeNameTrans="Energy crystals",nameIcon="limit_UI_icon_element_yuanneng",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6101110,groupRewardShow=590501},mt),
    ["3001"]=setmetatable({id=3001,levelType=3,sortOrder=1,typeName="竟日战心",typeNameTrans="Weapons",nameIcon="limit_UI_icon_reactiontype_blast",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6102103,groupRewardShow=9001},mt),
    ["4001"]=setmetatable({id=4001,levelType=4,sortOrder=1,typeName="解构端口",typeNameTrans="Rifle & Shotgun",nameIcon="limit_UI_icon_reactiontype_blast",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=6102106,groupRewardShow=590301},mt),
    ["5002"]=setmetatable({id=5002,levelType=5,sortOrder=2,typeName="符灵之家·普通",typeNameTrans="Fu Ling\'s Home",nameIcon="limit_UI_icon_reactiontype_blast",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=0,groupRewardShow=9001},mt),
    ["5003"]=setmetatable({id=5003,levelType=5,sortOrder=3,typeName="符灵之家·困难",typeNameTrans="Fu Ling\'s Home",nameIcon="limit_UI_icon_reactiontype_blast",unlock=0,unlockOpen="0",unlockOpenTxt="0",unlockGroup=0,groupRewardShow=9001},mt),
}
--生成获取数据的方法
---@return TrainLevelGroup
function GetTrainLevelGroupData(id)
    return TrainLevelGroup_Xls[tostring(id)]
end
--自动生成注释
---@class TrainLevelGroup : table 
---@field id number
---@field levelType number
---@field sortOrder number
---@field typeName string
---@field typeNameTrans string
---@field nameIcon string
---@field unlock number
---@field unlockOpen string
---@field unlockOpenTxt string
---@field unlockGroup number
---@field groupRewardShow number
