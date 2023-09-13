local default = {id=0,levelId=0,season=0,monsterNum=0,monsterId=xlsNilTable,seasonType=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SeasonReplaceLevel_Xls : table 
SeasonReplaceLevel_Xls =
{
    ["10001"]=setmetatable({id=10001,levelId=9000022,season=1,monsterNum=2,monsterId={[1]=201001,[2]=202001},seasonType=0},mt),
    ["100001"]=setmetatable({id=100001,levelId=3050103,season=1,monsterNum=1,monsterId={[1]=106004},seasonType=0},mt),
    ["100003"]=setmetatable({id=100003,levelId=3050303,season=1,monsterNum=1,monsterId={[1]=106004},seasonType=0},mt),
    ["100004"]=setmetatable({id=100004,levelId=3050403,season=1,monsterNum=1,monsterId={[1]=107101},seasonType=0},mt),
    ["100005"]=setmetatable({id=100005,levelId=3050503,season=1,monsterNum=1,monsterId={[1]=104006},seasonType=0},mt),
    ["100009"]=setmetatable({id=100009,levelId=3000405,season=1,monsterNum=1,monsterId={[1]=106004},seasonType=0},mt),
    ["100010"]=setmetatable({id=100010,levelId=3000505,season=1,monsterNum=1,monsterId={[1]=106004},seasonType=0},mt),
    ["100011"]=setmetatable({id=100011,levelId=3000605,season=1,monsterNum=1,monsterId={[1]=106004},seasonType=0},mt),
    ["100013"]=setmetatable({id=100013,levelId=3000805,season=1,monsterNum=1,monsterId={[1]=106004},seasonType=0},mt),
}
--生成获取数据的方法
---@return SeasonReplaceLevel
function GetSeasonReplaceLevelData(id)
    return SeasonReplaceLevel_Xls[tostring(id)]
end
--自动生成注释
---@class SeasonReplaceLevel : table 
---@field id number
---@field levelId number
---@field season number
---@field monsterNum number
---@field monsterId table
---@field seasonType number
