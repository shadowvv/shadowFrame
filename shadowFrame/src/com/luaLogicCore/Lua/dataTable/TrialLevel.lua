local default = {id=0,levelId=0,battleTimeLimit=0,leaderLock=xlsNilTable,loading=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TrialLevel_Xls : table 
TrialLevel_Xls =
{
    ["2001001"]=setmetatable({id=2001001,levelId=2070011,battleTimeLimit=300,leaderLock={[1]=200100199,[2]=200200199,[3]=200500199},loading=62001001},mt),
    ["2002001"]=setmetatable({id=2002001,levelId=2070021,battleTimeLimit=300,leaderLock={[1]=200200199,[2]=201300199},loading=62002001},mt),
    ["2003001"]=setmetatable({id=2003001,levelId=2070031,battleTimeLimit=300,leaderLock={[1]=200300199,[2]=200200199,[3]=200500199},loading=62003001},mt),
    ["2004001"]=setmetatable({id=2004001,levelId=2070041,battleTimeLimit=300,leaderLock={[1]=200400199,[2]=200200199,[3]=201300199},loading=62004001},mt),
    ["2005001"]=setmetatable({id=2005001,levelId=2070051,battleTimeLimit=300,leaderLock={[1]=200500199,[2]=200100199},loading=62005001},mt),
    ["2006001"]=setmetatable({id=2006001,levelId=2070061,battleTimeLimit=300,leaderLock={[1]=200600199,[2]=200100199,[3]=200200199},loading=62006001},mt),
    ["2007001"]=setmetatable({id=2007001,levelId=2070071,battleTimeLimit=300,leaderLock={[1]=200700199,[2]=200100199,[3]=200200199},loading=62007001},mt),
    ["2008001"]=setmetatable({id=2008001,levelId=2070081,battleTimeLimit=300,leaderLock={[1]=200800199,[2]=200900199},loading=62008001},mt),
    ["2009001"]=setmetatable({id=2009001,levelId=2070091,battleTimeLimit=300,leaderLock={[1]=200900199,[2]=201300199},loading=62009001},mt),
    ["2010001"]=setmetatable({id=2010001,levelId=2070101,battleTimeLimit=300,leaderLock={[1]=201000199,[2]=200100199,[3]=200200199,[4]=200300199},loading=62010001},mt),
    ["2011001"]=setmetatable({id=2011001,levelId=2070111,battleTimeLimit=300,leaderLock={[1]=201100199,[2]=200200199},loading=62011001},mt),
    ["2012001"]=setmetatable({id=2012001,levelId=2070121,battleTimeLimit=300,leaderLock={[1]=201200199,[2]=200200199,[3]=201500199},loading=62012001},mt),
    ["2013001"]=setmetatable({id=2013001,levelId=2070131,battleTimeLimit=300,leaderLock={[1]=201300199,[2]=200200199,[3]=200500199,[4]=200700199},loading=62013001},mt),
    ["2014001"]=setmetatable({id=2014001,levelId=2070141,battleTimeLimit=300,leaderLock={[1]=201400199,[2]=200500199,[3]=200600199},loading=62014001},mt),
    ["2015001"]=setmetatable({id=2015001,levelId=2070151,battleTimeLimit=300,leaderLock={[1]=201500199,[2]=200200199,[3]=201300199},loading=62015001},mt),
    ["2016001"]=setmetatable({id=2016001,levelId=2070161,battleTimeLimit=300,leaderLock={[1]=201600199,[2]=200200199},loading=62016001},mt),
    ["2017001"]=setmetatable({id=2017001,levelId=2070171,battleTimeLimit=300,leaderLock={[1]=201700199,[2]=200100199,[3]=201900199,[4]=201300199},loading=62017001},mt),
    ["2018001"]=setmetatable({id=2018001,levelId=2070181,battleTimeLimit=300,leaderLock={[1]=201800199},loading=62018001},mt),
    ["2019001"]=setmetatable({id=2019001,levelId=2070191,battleTimeLimit=300,leaderLock={[1]=201900199,[2]=201600199},loading=62019001},mt),
    ["2020001"]=setmetatable({id=2020001,levelId=2070201,battleTimeLimit=300,leaderLock={[1]=202000199,[2]=201300199,[3]=201700199,[4]=200800199},loading=62020001},mt),
    ["2021001"]=setmetatable({id=2021001,levelId=2070211,battleTimeLimit=300,leaderLock={[1]=202100199,[2]=200500199,[3]=200200199},loading=62021001},mt),
    ["2023001"]=setmetatable({id=2023001,levelId=2070231,battleTimeLimit=300,leaderLock={[1]=202300199,[2]=200200199,[3]=200500199,[4]=201300199},loading=62023001},mt),
    ["2024001"]=setmetatable({id=2024001,levelId=2070241,battleTimeLimit=300,leaderLock={[1]=202400199,[2]=200300199,[3]=200600199},loading=62024001},mt),
    ["2026001"]=setmetatable({id=2026001,levelId=2070261,battleTimeLimit=300,leaderLock={[1]=202600199,[2]=201300199,[3]=201900199},loading=62026001},mt),
}
--生成获取数据的方法
---@return TrialLevel
function GetTrialLevelData(id)
    return TrialLevel_Xls[tostring(id)]
end
--自动生成注释
---@class TrialLevel : table 
---@field id number
---@field levelId number
---@field battleTimeLimit number
---@field leaderLock table
---@field loading number
