local default = {id=0,fallObjectPrefabid="",elementType=0,propIds=xlsNilTable,propValues=xlsNilTable,energyType=0,disappearEffectId=0,pickupEffectId=0,isElementCorrect=0,isStateCorrect=0,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=0,pickupCamp=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class FallObject_Xls : table 
FallObject_Xls =
{
    ["1"]=setmetatable({id=1,fallObjectPrefabid="1",elementType=1,propIds={[1]=213},propValues={[1]=0.0},energyType=1,disappearEffectId=73,pickupEffectId=73,isElementCorrect=0,isStateCorrect=0,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199993,[2]=310010},pickupType=1},mt),
    ["101"]=setmetatable({id=101,fallObjectPrefabid="101",elementType=1,propIds={[1]=217},propValues={[1]=5.0},energyType=1,disappearEffectId=311,pickupEffectId=313,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["102"]=setmetatable({id=102,fallObjectPrefabid="102",elementType=1,propIds={[1]=217},propValues={[1]=2.0},energyType=2,disappearEffectId=312,pickupEffectId=313,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["201"]=setmetatable({id=201,fallObjectPrefabid="201",elementType=2,propIds={[1]=217},propValues={[1]=5.0},energyType=1,disappearEffectId=321,pickupEffectId=323,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["202"]=setmetatable({id=202,fallObjectPrefabid="202",elementType=2,propIds={[1]=217},propValues={[1]=12.5},energyType=2,disappearEffectId=322,pickupEffectId=323,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["301"]=setmetatable({id=301,fallObjectPrefabid="301",elementType=3,propIds={[1]=217},propValues={[1]=5.0},energyType=1,disappearEffectId=331,pickupEffectId=333,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["302"]=setmetatable({id=302,fallObjectPrefabid="302",elementType=3,propIds={[1]=217},propValues={[1]=12.5},energyType=2,disappearEffectId=332,pickupEffectId=333,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["401"]=setmetatable({id=401,fallObjectPrefabid="401",elementType=4,propIds={[1]=217},propValues={[1]=5.0},energyType=1,disappearEffectId=341,pickupEffectId=343,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["402"]=setmetatable({id=402,fallObjectPrefabid="402",elementType=4,propIds={[1]=217},propValues={[1]=12.5},energyType=2,disappearEffectId=342,pickupEffectId=343,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["501"]=setmetatable({id=501,fallObjectPrefabid="501",elementType=5,propIds={[1]=217},propValues={[1]=5.0},energyType=1,disappearEffectId=351,pickupEffectId=353,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["502"]=setmetatable({id=502,fallObjectPrefabid="502",elementType=5,propIds={[1]=217},propValues={[1]=12.5},energyType=2,disappearEffectId=352,pickupEffectId=353,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["503"]=setmetatable({id=503,fallObjectPrefabid="502",elementType=5,propIds={[1]=217},propValues={[1]=0.4},energyType=3,disappearEffectId=352,pickupEffectId=353,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["601"]=setmetatable({id=601,fallObjectPrefabid="601",elementType=6,propIds={[1]=217},propValues={[1]=3.0},energyType=1,disappearEffectId=361,pickupEffectId=363,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["602"]=setmetatable({id=602,fallObjectPrefabid="602",elementType=6,propIds={[1]=217},propValues={[1]=12.5},energyType=2,disappearEffectId=362,pickupEffectId=363,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["701"]=setmetatable({id=701,fallObjectPrefabid="701",elementType=7,propIds={[1]=217},propValues={[1]=3.0},energyType=1,disappearEffectId=371,pickupEffectId=373,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["702"]=setmetatable({id=702,fallObjectPrefabid="702",elementType=7,propIds={[1]=217},propValues={[1]=12.0},energyType=2,disappearEffectId=372,pickupEffectId=373,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff={[1]=310000},leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=1},mt),
    ["322"]=setmetatable({id=322,fallObjectPrefabid="322",elementType=2,propIds={[1]=217},propValues={[1]=0.0},energyType=1,disappearEffectId=321,pickupEffectId=323,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=323},pickupType=2,pickupCamp={[1]=1}},mt),
    ["332"]=setmetatable({id=332,fallObjectPrefabid="332",elementType=3,propIds={[1]=217},propValues={[1]=0.0},energyType=1,disappearEffectId=331,pickupEffectId=333,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=333},pickupType=2,pickupCamp={[1]=1}},mt),
    ["342"]=setmetatable({id=342,fallObjectPrefabid="342",elementType=4,propIds={[1]=217},propValues={[1]=0.0},energyType=1,disappearEffectId=341,pickupEffectId=343,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=343},pickupType=2,pickupCamp={[1]=1}},mt),
    ["352"]=setmetatable({id=352,fallObjectPrefabid="352",elementType=5,propIds={[1]=217},propValues={[1]=0.0},energyType=1,disappearEffectId=351,pickupEffectId=353,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=353},pickupType=2,pickupCamp={[1]=1}},mt),
    ["17001"]=setmetatable({id=17001,fallObjectPrefabid="17001",elementType=4,propIds={[1]=130},propValues={[1]=3.0},energyType=2,disappearEffectId=17003,pickupEffectId=17004,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=169998,[2]=169999},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20000"]=setmetatable({id=20000,fallObjectPrefabid="20000",elementType=1,propIds={[1]=217},propValues={[1]=10.0},energyType=2,disappearEffectId=1049,pickupEffectId=1049,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20001"]=setmetatable({id=20001,fallObjectPrefabid="20001",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=1053,pickupEffectId=1053,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=199982},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20002"]=setmetatable({id=20002,fallObjectPrefabid="20002",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=1051,pickupEffectId=1051,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=199984},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20003"]=setmetatable({id=20003,fallObjectPrefabid="20003",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=1055,pickupEffectId=1055,isElementCorrect=1,isStateCorrect=1,pickupBuff={[1]=199997,[2]=199983},typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=2,pickupCamp={[1]=1}},mt),
    ["20004"]=setmetatable({id=20004,fallObjectPrefabid="20004",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=201202,pickupEffectId=201202,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=20009},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20005"]=setmetatable({id=20005,fallObjectPrefabid="20005",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=201204,pickupEffectId=201204,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=20012},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20006"]=setmetatable({id=20006,fallObjectPrefabid="20006",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=201204,pickupEffectId=201204,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20007"]=setmetatable({id=20007,fallObjectPrefabid="20007",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=201204,pickupEffectId=201204,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=20007},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20008"]=setmetatable({id=20008,fallObjectPrefabid="20008",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=201202,pickupEffectId=201202,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=20004},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20009"]=setmetatable({id=20009,fallObjectPrefabid="20009",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=201202,pickupEffectId=201202,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=20009},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20010"]=setmetatable({id=20010,fallObjectPrefabid="20010",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=201202,pickupEffectId=201202,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=20009},pickupType=2,pickupCamp={[1]=1}},mt),
    ["20011"]=setmetatable({id=20011,fallObjectPrefabid="20011",elementType=1,propIds={[1]=217},propValues={[1]=0.0},energyType=2,disappearEffectId=201204,pickupEffectId=201204,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff={[1]=199997,[2]=20007},pickupType=2,pickupCamp={[1]=1}},mt),
    ["50001"]=setmetatable({id=50001,fallObjectPrefabid="50001",elementType=1,propIds={[1]=217},propValues={[1]=10.0},energyType=1,disappearEffectId=311,pickupEffectId=313,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=2,pickupCamp={[1]=1}},mt),
    ["50002"]=setmetatable({id=50002,fallObjectPrefabid="50002",elementType=1,propIds={[1]=217},propValues={[1]=10.0},energyType=1,disappearEffectId=311,pickupEffectId=313,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=2,pickupCamp={[1]=1}},mt),
    ["50003"]=setmetatable({id=50003,fallObjectPrefabid="50003",elementType=1,propIds={[1]=217},propValues={[1]=10.0},energyType=1,disappearEffectId=311,pickupEffectId=313,isElementCorrect=1,isStateCorrect=1,pickupBuff=xlsNilTable,typeAdditionalBuff=xlsNilTable,leaderId=0,leaderAddBuff=xlsNilTable,curLeaderAddBuff=xlsNilTable,pickupType=2,pickupCamp={[1]=1}},mt),
}
--生成获取数据的方法
---@return FallObject
function GetFallObjectData(id)
    return FallObject_Xls[tostring(id)]
end
--自动生成注释
---@class FallObject : table 
---@field id number
---@field fallObjectPrefabid string
---@field elementType number
---@field propIds table
---@field propValues table
---@field energyType number
---@field disappearEffectId number
---@field pickupEffectId number
---@field isElementCorrect number
---@field isStateCorrect number
---@field pickupBuff table
---@field typeAdditionalBuff table
---@field leaderId number
---@field leaderAddBuff table
---@field curLeaderAddBuff table
---@field pickupType number
---@field pickupCamp table
