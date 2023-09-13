local default = {id="",timeId=0,belongLevelRange=0,bossNumber=0,bossGroupId=xlsNilTable,randomGroupId=0,challengeChance=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontRound_Xls : table 
AbyssFrontRound_Xls =
{
    ["1001"]=setmetatable({id="1001",timeId=100001,belongLevelRange=101,bossNumber=2,bossGroupId={[1]=1,[2]=3},randomGroupId=0,challengeChance=3},mt),
    ["1002"]=setmetatable({id="1002",timeId=100002,belongLevelRange=101,bossNumber=2,bossGroupId={[1]=1,[2]=3},randomGroupId=0,challengeChance=3},mt),
    ["1003"]=setmetatable({id="1003",timeId=100003,belongLevelRange=101,bossNumber=2,bossGroupId={[1]=1,[2]=3},randomGroupId=0,challengeChance=3},mt),
    ["1004"]=setmetatable({id="1004",timeId=100004,belongLevelRange=101,bossNumber=2,bossGroupId={[1]=1,[2]=3},randomGroupId=0,challengeChance=3},mt),
    ["1005"]=setmetatable({id="1005",timeId=100005,belongLevelRange=101,bossNumber=2,bossGroupId={[1]=1,[2]=3},randomGroupId=0,challengeChance=3},mt),
    ["2001"]=setmetatable({id="2001",timeId=100001,belongLevelRange=201,bossNumber=3,bossGroupId={[1]=6,[2]=8,[3]=7},randomGroupId=0,challengeChance=4},mt),
    ["2002"]=setmetatable({id="2002",timeId=100002,belongLevelRange=201,bossNumber=3,bossGroupId={[1]=6,[2]=8,[3]=7},randomGroupId=0,challengeChance=4},mt),
    ["2003"]=setmetatable({id="2003",timeId=100003,belongLevelRange=201,bossNumber=3,bossGroupId={[1]=6,[2]=8,[3]=7},randomGroupId=0,challengeChance=4},mt),
    ["2004"]=setmetatable({id="2004",timeId=100004,belongLevelRange=201,bossNumber=3,bossGroupId={[1]=6,[2]=8,[3]=7},randomGroupId=0,challengeChance=4},mt),
    ["2005"]=setmetatable({id="2005",timeId=100005,belongLevelRange=201,bossNumber=3,bossGroupId={[1]=6,[2]=8,[3]=7},randomGroupId=0,challengeChance=4},mt),
    ["3001"]=setmetatable({id="3001",timeId=100001,belongLevelRange=301,bossNumber=3,bossGroupId={[1]=11,[2]=13,[3]=12},randomGroupId=0,challengeChance=5},mt),
    ["3002"]=setmetatable({id="3002",timeId=100002,belongLevelRange=301,bossNumber=3,bossGroupId={[1]=11,[2]=13,[3]=12},randomGroupId=0,challengeChance=5},mt),
    ["3003"]=setmetatable({id="3003",timeId=100003,belongLevelRange=301,bossNumber=3,bossGroupId={[1]=11,[2]=13,[3]=12},randomGroupId=0,challengeChance=5},mt),
    ["3004"]=setmetatable({id="3004",timeId=100004,belongLevelRange=301,bossNumber=3,bossGroupId={[1]=11,[2]=13,[3]=12},randomGroupId=0,challengeChance=5},mt),
    ["3005"]=setmetatable({id="3005",timeId=100005,belongLevelRange=301,bossNumber=3,bossGroupId={[1]=11,[2]=13,[3]=12},randomGroupId=0,challengeChance=5},mt),
}
--生成获取数据的方法
---@return AbyssFrontRound
function GetAbyssFrontRoundData(id)
    return AbyssFrontRound_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontRound : table 
---@field id string
---@field timeId number
---@field belongLevelRange number
---@field bossNumber number
---@field bossGroupId table
---@field randomGroupId number
---@field challengeChance number
