local default = {id=0,levelId=0,stageLevel=0,difficulty=0,bossId=0,unableSkip=0,loading=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontLevel_Xls : table 
AbyssFrontLevel_Xls =
{
    ["10001"]=setmetatable({id=10001,levelId=3060101,stageLevel=110101,difficulty=1,bossId=301001,unableSkip=0,loading=810001},mt),
    ["10002"]=setmetatable({id=10002,levelId=3060102,stageLevel=110102,difficulty=2,bossId=301001,unableSkip=1,loading=810002},mt),
    ["10003"]=setmetatable({id=10003,levelId=3060103,stageLevel=110103,difficulty=3,bossId=301001,unableSkip=0,loading=810003},mt),
    ["10004"]=setmetatable({id=10004,levelId=3060301,stageLevel=110104,difficulty=1,bossId=303102,unableSkip=0,loading=810004},mt),
    ["10005"]=setmetatable({id=10005,levelId=3060302,stageLevel=110105,difficulty=2,bossId=303102,unableSkip=1,loading=810005},mt),
    ["10006"]=setmetatable({id=10006,levelId=3060303,stageLevel=110106,difficulty=3,bossId=303102,unableSkip=0,loading=810006},mt),
    ["10007"]=setmetatable({id=10007,levelId=3060201,stageLevel=110107,difficulty=1,bossId=305101,unableSkip=0,loading=810007},mt),
    ["10008"]=setmetatable({id=10008,levelId=3060202,stageLevel=110108,difficulty=2,bossId=305101,unableSkip=1,loading=810008},mt),
    ["10009"]=setmetatable({id=10009,levelId=3060203,stageLevel=110109,difficulty=3,bossId=305101,unableSkip=0,loading=810009},mt),
    ["10010"]=setmetatable({id=10010,levelId=3060401,stageLevel=110101,difficulty=1,bossId=306201,unableSkip=0,loading=810010},mt),
    ["10011"]=setmetatable({id=10011,levelId=3060402,stageLevel=110102,difficulty=2,bossId=306201,unableSkip=1,loading=810011},mt),
    ["10012"]=setmetatable({id=10012,levelId=3060403,stageLevel=110103,difficulty=3,bossId=306201,unableSkip=0,loading=810012},mt),
    ["10013"]=setmetatable({id=10013,levelId=3060501,stageLevel=110101,difficulty=1,bossId=303102,unableSkip=0,loading=810013},mt),
    ["10014"]=setmetatable({id=10014,levelId=3060502,stageLevel=110102,difficulty=2,bossId=303102,unableSkip=1,loading=810014},mt),
    ["10015"]=setmetatable({id=10015,levelId=3060503,stageLevel=110103,difficulty=3,bossId=303102,unableSkip=0,loading=810015},mt),
    ["20001"]=setmetatable({id=20001,levelId=3060101,stageLevel=110201,difficulty=1,bossId=301001,unableSkip=0,loading=820001},mt),
    ["20002"]=setmetatable({id=20002,levelId=3060102,stageLevel=110202,difficulty=2,bossId=301001,unableSkip=0,loading=820002},mt),
    ["20003"]=setmetatable({id=20003,levelId=3060103,stageLevel=110203,difficulty=3,bossId=301001,unableSkip=1,loading=820003},mt),
    ["20004"]=setmetatable({id=20004,levelId=3060104,stageLevel=110204,difficulty=4,bossId=301001,unableSkip=0,loading=820004},mt),
    ["20005"]=setmetatable({id=20005,levelId=3060301,stageLevel=110205,difficulty=1,bossId=303102,unableSkip=0,loading=820005},mt),
    ["20006"]=setmetatable({id=20006,levelId=3060302,stageLevel=110206,difficulty=2,bossId=303102,unableSkip=0,loading=820006},mt),
    ["20007"]=setmetatable({id=20007,levelId=3060303,stageLevel=110207,difficulty=3,bossId=303102,unableSkip=1,loading=820007},mt),
    ["20008"]=setmetatable({id=20008,levelId=3060304,stageLevel=110208,difficulty=4,bossId=303102,unableSkip=0,loading=820008},mt),
    ["20009"]=setmetatable({id=20009,levelId=3060201,stageLevel=110209,difficulty=1,bossId=305101,unableSkip=0,loading=820009},mt),
    ["20010"]=setmetatable({id=20010,levelId=3060202,stageLevel=110210,difficulty=2,bossId=305101,unableSkip=0,loading=820010},mt),
    ["20011"]=setmetatable({id=20011,levelId=3060203,stageLevel=110211,difficulty=3,bossId=305101,unableSkip=1,loading=820011},mt),
    ["20012"]=setmetatable({id=20012,levelId=3060204,stageLevel=110212,difficulty=4,bossId=305101,unableSkip=0,loading=820012},mt),
    ["20013"]=setmetatable({id=20013,levelId=3060401,stageLevel=110201,difficulty=1,bossId=306201,unableSkip=0,loading=820013},mt),
    ["20014"]=setmetatable({id=20014,levelId=3060402,stageLevel=110202,difficulty=2,bossId=306201,unableSkip=0,loading=820014},mt),
    ["20015"]=setmetatable({id=20015,levelId=3060403,stageLevel=110203,difficulty=3,bossId=306201,unableSkip=1,loading=820015},mt),
    ["20016"]=setmetatable({id=20016,levelId=3060404,stageLevel=110204,difficulty=4,bossId=306201,unableSkip=0,loading=820016},mt),
    ["20017"]=setmetatable({id=20017,levelId=3060501,stageLevel=110201,difficulty=1,bossId=303102,unableSkip=0,loading=820017},mt),
    ["20018"]=setmetatable({id=20018,levelId=3060502,stageLevel=110202,difficulty=2,bossId=303102,unableSkip=0,loading=820018},mt),
    ["20019"]=setmetatable({id=20019,levelId=3060503,stageLevel=110203,difficulty=3,bossId=303102,unableSkip=1,loading=820019},mt),
    ["20020"]=setmetatable({id=20020,levelId=3060504,stageLevel=110204,difficulty=4,bossId=303102,unableSkip=0,loading=820020},mt),
    ["30001"]=setmetatable({id=30001,levelId=3060101,stageLevel=110301,difficulty=1,bossId=301001,unableSkip=0,loading=830001},mt),
    ["30002"]=setmetatable({id=30002,levelId=3060102,stageLevel=110302,difficulty=2,bossId=301001,unableSkip=0,loading=830002},mt),
    ["30003"]=setmetatable({id=30003,levelId=3060103,stageLevel=110303,difficulty=3,bossId=301001,unableSkip=0,loading=830003},mt),
    ["30004"]=setmetatable({id=30004,levelId=3060104,stageLevel=110304,difficulty=4,bossId=301001,unableSkip=1,loading=830004},mt),
    ["30005"]=setmetatable({id=30005,levelId=3060105,stageLevel=110305,difficulty=5,bossId=301001,unableSkip=0,loading=830005},mt),
    ["30006"]=setmetatable({id=30006,levelId=3060301,stageLevel=110306,difficulty=1,bossId=303102,unableSkip=0,loading=830006},mt),
    ["30007"]=setmetatable({id=30007,levelId=3060302,stageLevel=110307,difficulty=2,bossId=303102,unableSkip=0,loading=830007},mt),
    ["30008"]=setmetatable({id=30008,levelId=3060303,stageLevel=110308,difficulty=3,bossId=303102,unableSkip=0,loading=830008},mt),
    ["30009"]=setmetatable({id=30009,levelId=3060304,stageLevel=110309,difficulty=4,bossId=303102,unableSkip=1,loading=830009},mt),
    ["30010"]=setmetatable({id=30010,levelId=3060305,stageLevel=110310,difficulty=5,bossId=303102,unableSkip=0,loading=830010},mt),
    ["30011"]=setmetatable({id=30011,levelId=3060201,stageLevel=110311,difficulty=1,bossId=305101,unableSkip=0,loading=830011},mt),
    ["30012"]=setmetatable({id=30012,levelId=3060202,stageLevel=110312,difficulty=2,bossId=305101,unableSkip=0,loading=830012},mt),
    ["30013"]=setmetatable({id=30013,levelId=3060203,stageLevel=110313,difficulty=3,bossId=305101,unableSkip=0,loading=830013},mt),
    ["30014"]=setmetatable({id=30014,levelId=3060204,stageLevel=110314,difficulty=4,bossId=305101,unableSkip=1,loading=830014},mt),
    ["30015"]=setmetatable({id=30015,levelId=3060205,stageLevel=110315,difficulty=5,bossId=305101,unableSkip=0,loading=830015},mt),
    ["30016"]=setmetatable({id=30016,levelId=3060401,stageLevel=110301,difficulty=1,bossId=306201,unableSkip=0,loading=830016},mt),
    ["30017"]=setmetatable({id=30017,levelId=3060402,stageLevel=110302,difficulty=2,bossId=306201,unableSkip=0,loading=830017},mt),
    ["30018"]=setmetatable({id=30018,levelId=3060403,stageLevel=110303,difficulty=3,bossId=306201,unableSkip=0,loading=830018},mt),
    ["30019"]=setmetatable({id=30019,levelId=3060404,stageLevel=110304,difficulty=4,bossId=306201,unableSkip=1,loading=830019},mt),
    ["30020"]=setmetatable({id=30020,levelId=3060405,stageLevel=110305,difficulty=5,bossId=306201,unableSkip=0,loading=830020},mt),
    ["30021"]=setmetatable({id=30021,levelId=3060501,stageLevel=110301,difficulty=1,bossId=303102,unableSkip=0,loading=830021},mt),
    ["30022"]=setmetatable({id=30022,levelId=3060502,stageLevel=110302,difficulty=2,bossId=303102,unableSkip=0,loading=830022},mt),
    ["30023"]=setmetatable({id=30023,levelId=3060503,stageLevel=110303,difficulty=3,bossId=303102,unableSkip=0,loading=830023},mt),
    ["30024"]=setmetatable({id=30024,levelId=3060504,stageLevel=110304,difficulty=4,bossId=303102,unableSkip=1,loading=830024},mt),
    ["30025"]=setmetatable({id=30025,levelId=3060505,stageLevel=110305,difficulty=5,bossId=303102,unableSkip=0,loading=830025},mt),
}
--生成获取数据的方法
---@return AbyssFrontLevel
function GetAbyssFrontLevelData(id)
    return AbyssFrontLevel_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontLevel : table 
---@field id number
---@field levelId number
---@field stageLevel number
---@field difficulty number
---@field bossId number
---@field unableSkip number
---@field loading number
