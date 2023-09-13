local default = {id=0,leaderId1=0,leaderId2=0,storyId=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipDinnerFriendship_Xls : table 
WarshipDinnerFriendship_Xls =
{
    ["1"]=setmetatable({id=1,leaderId1=2001001,leaderId2=2002001,storyId="41001"},mt),
    ["2"]=setmetatable({id=2,leaderId1=2005001,leaderId2=2004001,storyId="41002"},mt),
    ["3"]=setmetatable({id=3,leaderId1=2006001,leaderId2=2008001,storyId="41003"},mt),
    ["4"]=setmetatable({id=4,leaderId1=2010001,leaderId2=2007001,storyId="41004"},mt),
    ["5"]=setmetatable({id=5,leaderId1=2009001,leaderId2=2012001,storyId="41005"},mt),
    ["6"]=setmetatable({id=6,leaderId1=2013001,leaderId2=2011001,storyId="41006"},mt),
    ["7"]=setmetatable({id=7,leaderId1=2015001,leaderId2=2016001,storyId="41007"},mt),
    ["8"]=setmetatable({id=8,leaderId1=2017001,leaderId2=2020001,storyId="41008"},mt),
    ["9"]=setmetatable({id=9,leaderId1=2018001,leaderId2=2019001,storyId="41009"},mt),
    ["10"]=setmetatable({id=10,leaderId1=2021001,leaderId2=2023001,storyId="41010"},mt),
}
--生成获取数据的方法
---@return WarshipDinnerFriendship
function GetWarshipDinnerFriendshipData(id)
    return WarshipDinnerFriendship_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipDinnerFriendship : table 
---@field id number
---@field leaderId1 number
---@field leaderId2 number
---@field storyId string
