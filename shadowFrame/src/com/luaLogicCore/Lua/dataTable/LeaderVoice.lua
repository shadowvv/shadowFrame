---@class LeaderVoice_Xls : table 
LeaderVoice_Xls =
{
    ["1"]={id=1,leaderId=2001001,type=1,leaderFriendId=0,des="",triggerLevel=xlsNilTable,priority=100},
    ["2"]={id=2,leaderId=2001001,type=2,leaderFriendId=0,des="",triggerLevel=xlsNilTable,priority=100,voice=2001003},
    ["3"]={id=3,leaderId=2001001,type=3,leaderFriendId=2002001,des="",triggerLevel=xlsNilTable,priority=100,voice=2001004},
    ["4"]={id=4,leaderId=2002001,type=1,leaderFriendId=0,des="",triggerLevel=xlsNilTable,priority=100},
    ["5"]={id=5,leaderId=2002001,type=2,leaderFriendId=0,des="",triggerLevel=xlsNilTable,priority=100,voice=2002003},
    ["6"]={id=6,leaderId=2002001,type=3,leaderFriendId=2004001,des="",triggerLevel=xlsNilTable,priority=100,voice=2002004},
    ["7"]={id=7,leaderId=2003001,type=1,leaderFriendId=0,des="",triggerLevel=xlsNilTable,priority=100},
    ["8"]={id=8,leaderId=2003001,type=2,leaderFriendId=0,des="",triggerLevel=xlsNilTable,priority=100,voice=2003003},
    ["9"]={id=9,leaderId=2003001,type=3,leaderFriendId=2001001,des="",triggerLevel=xlsNilTable,priority=100,voice=2003004},
}
--生成获取数据的方法
---@return LeaderVoice
function GetLeaderVoiceData(id)
    return LeaderVoice_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderVoice : table 
---@field id number
---@field leaderId number
---@field type number
---@field leaderFriendId number
---@field des string
---@field triggerLevel table
---@field priority number
---@field voice number
