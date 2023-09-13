local default = {id=0,modeType=0,playerModeSwitchEnter=0,playerModeSwitchBack=0,time=0,stateParameter=0,skillChange=xlsNilTable,uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PlayMode_Xls : table 
PlayMode_Xls =
{
    ["1"]=setmetatable({id=1,modeType=0,playerModeSwitchEnter=10001,playerModeSwitchBack=10002,time=0,stateParameter=1,skillChange=xlsNilTable,uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=0},mt),
    ["2"]=setmetatable({id=2,modeType=1,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange=xlsNilTable,uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=1},mt),
    ["20003"]=setmetatable({id=20003,modeType=1,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange=xlsNilTable,uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=1},mt),
    ["20010"]=setmetatable({id=20010,modeType=1,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange={[1]=20100111},uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=1},mt),
    ["20011"]=setmetatable({id=20011,modeType=1,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange={[1]=20110112},uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=1},mt),
    ["20014"]=setmetatable({id=20014,modeType=1,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange={[1]=20140111},uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=1},mt),
    ["20015"]=setmetatable({id=20015,modeType=1,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange={[1]=20140113},uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=0},mt),
    ["20020"]=setmetatable({id=20020,modeType=1,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange={[1]=20170111},uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=1},mt),
    ["20023"]=setmetatable({id=20023,modeType=1,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange={[1]=20230110},uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=1},mt),
    ["3"]=setmetatable({id=3,modeType=2,playerModeSwitchEnter=1,playerModeSwitchBack=301,time=0,stateParameter=1,skillChange=xlsNilTable,uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=0},mt),
    ["4"]=setmetatable({id=4,modeType=2,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1,skillChange={[1]=20180132,[2]=20180131},uiChange="1",buttonChange=xlsNilTable,buttonEffect="",hideUIButton={[1]=2,[2]=3,[3]=4,[4]=6,[5]=17,[6]=19},effectEntity=0,bossResetId=0},mt),
    ["20016"]=setmetatable({id=20016,modeType=2,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1016,skillChange=xlsNilTable,uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=0},mt),
    ["20017"]=setmetatable({id=20017,modeType=2,playerModeSwitchEnter=1,playerModeSwitchBack=2,time=0,stateParameter=1017,skillChange=xlsNilTable,uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=0},mt),
    ["20025"]=setmetatable({id=20025,modeType=2,playerModeSwitchEnter=1,playerModeSwitchBack=301,time=0,stateParameter=1,skillChange={[1]=20250112},uiChange="",buttonChange=xlsNilTable,buttonEffect="",hideUIButton=xlsNilTable,effectEntity=0,bossResetId=0},mt),
}
--生成获取数据的方法
---@return PlayMode
function GetPlayModeData(id)
    return PlayMode_Xls[tostring(id)]
end
--自动生成注释
---@class PlayMode : table 
---@field id number
---@field modeType number
---@field playerModeSwitchEnter number
---@field playerModeSwitchBack number
---@field time number
---@field stateParameter number
---@field skillChange table
---@field uiChange string
---@field buttonChange table
---@field buttonEffect string
---@field hideUIButton table
---@field effectEntity number
---@field bossResetId number
