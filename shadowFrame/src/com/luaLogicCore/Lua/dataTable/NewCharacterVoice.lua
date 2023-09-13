local default = {id="",type=0,trigger=0,priority=0,rate=0,externalName="",eventName=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class NewCharacterVoice_Xls : table 
NewCharacterVoice_Xls =
{
    ["1"]=setmetatable({id="1",type=1,trigger=1,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Login_Day"},mt),
    ["2"]=setmetatable({id="2",type=1,trigger=2,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Login_DayUp"},mt),
    ["3"]=setmetatable({id="3",type=1,trigger=3,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Login_Night"},mt),
    ["4"]=setmetatable({id="4",type=1,trigger=4,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Login_NightUp"},mt),
    ["5"]=setmetatable({id="5",type=1,trigger=5,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Offline"},mt),
    ["6"]=setmetatable({id="6",type=1,trigger=6,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Special"},mt),
    ["7"]=setmetatable({id="7",type=1,trigger=7,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Talk1"},mt),
    ["8"]=setmetatable({id="8",type=1,trigger=8,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Talk2"},mt),
    ["9"]=setmetatable({id="9",type=1,trigger=9,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Talk3"},mt),
    ["10"]=setmetatable({id="10",type=1,trigger=10,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Talk4"},mt),
    ["11"]=setmetatable({id="11",type=1,trigger=11,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Online"},mt),
    ["12"]=setmetatable({id="12",type=1,trigger=12,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Shake"},mt),
    ["13"]=setmetatable({id="13",type=1,trigger=13,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Click_Continue"},mt),
    ["14"]=setmetatable({id="14",type=1,trigger=14,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Idle1"},mt),
    ["15"]=setmetatable({id="15",type=1,trigger=15,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Idle2"},mt),
    ["16"]=setmetatable({id="16",type=1,trigger=16,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Main_Assistant"},mt),
    ["17"]=setmetatable({id="17",type=2,trigger=1,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Battle_JoinTeam"},mt),
    ["18"]=setmetatable({id="18",type=2,trigger=2,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Battle_Leader_01"},mt),
    ["19"]=setmetatable({id="19",type=2,trigger=2,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Battle_Leader_02"},mt),
    ["20"]=setmetatable({id="20",type=2,trigger=2,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Battle_Leader_03"},mt),
    ["21"]=setmetatable({id="21",type=2,trigger=3,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Battle_LeaderFriend_01"},mt),
    ["22"]=setmetatable({id="22",type=2,trigger=3,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Battle_LeaderFriend_02"},mt),
    ["23"]=setmetatable({id="23",type=2,trigger=3,priority=100,rate=1,externalName="Role_SystemVoice",eventName="Battle_LeaderFriend_03"},mt),
    ["24"]=setmetatable({id="24",type=3,trigger=1,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_SlightHurt_01"},mt),
    ["25"]=setmetatable({id="25",type=3,trigger=1,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_SlightHurt_02"},mt),
    ["26"]=setmetatable({id="26",type=3,trigger=1,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_SlightHurt_03"},mt),
    ["27"]=setmetatable({id="27",type=3,trigger=2,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_HardHurt_01"},mt),
    ["28"]=setmetatable({id="28",type=3,trigger=2,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_HardHurt_02"},mt),
    ["29"]=setmetatable({id="29",type=3,trigger=2,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_HardHurt_03"},mt),
    ["30"]=setmetatable({id="30",type=3,trigger=3,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_AgonalStage1"},mt),
    ["31"]=setmetatable({id="31",type=3,trigger=4,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_AgonalStage2"},mt),
    ["32"]=setmetatable({id="32",type=3,trigger=5,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_Die"},mt),
    ["33"]=setmetatable({id="33",type=3,trigger=6,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_Skill_01"},mt),
    ["34"]=setmetatable({id="34",type=3,trigger=6,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_Skill_02"},mt),
    ["35"]=setmetatable({id="35",type=3,trigger=6,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_Skill_03"},mt),
    ["36"]=setmetatable({id="36",type=3,trigger=7,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_SkillSP1"},mt),
    ["37"]=setmetatable({id="37",type=3,trigger=8,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_SkillSP2"},mt),
    ["38"]=setmetatable({id="38",type=3,trigger=9,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_Overload"},mt),
    ["39"]=setmetatable({id="39",type=3,trigger=10,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_Change_01"},mt),
    ["40"]=setmetatable({id="40",type=3,trigger=10,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_Change_02"},mt),
    ["41"]=setmetatable({id="41",type=3,trigger=10,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_Change_03"},mt),
    ["42"]=setmetatable({id="42",type=3,trigger=11,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_Win"},mt),
    ["43"]=setmetatable({id="43",type=3,trigger=12,priority=100,rate=1,externalName="Role_BattleVoice",eventName="Battle_Lose"},mt),
    ["44"]=setmetatable({id="44",type=3,trigger=13,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_Dodge_01"},mt),
    ["45"]=setmetatable({id="45",type=3,trigger=13,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_Dodge_02"},mt),
    ["46"]=setmetatable({id="46",type=3,trigger=13,priority=100,rate=0.25,externalName="Role_BattleVoice",eventName="Battle_Dodge_03"},mt),
    ["47"]=setmetatable({id="47",type=3,trigger=14,priority=100,rate=0,externalName="Role_BattleVoice",eventName=""},mt),
    ["48"]=setmetatable({id="48",type=4,trigger=1,priority=100,rate=1,externalName="Role_SystemVoice",eventName="DrawCard_Get"},mt),
}
--生成获取数据的方法
---@return NewCharacterVoice
function GetNewCharacterVoiceData(id)
    return NewCharacterVoice_Xls[tostring(id)]
end
--自动生成注释
---@class NewCharacterVoice : table 
---@field id string
---@field type number
---@field trigger number
---@field priority number
---@field rate number
---@field externalName string
---@field eventName string
