local default = {id=0,stageLevel=0,towerId=0,recommendPower=0,sort=0,whichTeam=0,savePoint=0,reward=0,settlement=0,loading=0,chapterEn="",name="",areaName="",weather=0,timeText="",storyShowBeforeTeam=0,storyShowAfterTeam=0,storyShowStart=0,storyShowFinishBeforeLoading=0,storyShowFinishAfterLoading=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TowerLevel_Xls : table 
TowerLevel_Xls =
{
    ["3000101"]=setmetatable({id=3000101,stageLevel=80001,towerId=1,recommendPower=3000101,sort=1,whichTeam=1,savePoint=0,reward=599301,settlement=1,loading=20001,chapterEn="CHAPTER ZERO",name="第一层-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000102"]=setmetatable({id=3000102,stageLevel=80002,towerId=1,recommendPower=3000102,sort=2,whichTeam=1,savePoint=0,reward=599302,settlement=1,loading=20002,chapterEn="CHAPTER ONE",name="第一层-2",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000103"]=setmetatable({id=3000103,stageLevel=80003,towerId=1,recommendPower=3000103,sort=3,whichTeam=1,savePoint=0,reward=599303,settlement=1,loading=20003,chapterEn="CHAPTER ZERO",name="第一层-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000201"]=setmetatable({id=3000201,stageLevel=80004,towerId=2,recommendPower=3000201,sort=1,whichTeam=1,savePoint=0,reward=599304,settlement=1,loading=20004,chapterEn="CHAPTER ZERO",name="第二层-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000202"]=setmetatable({id=3000202,stageLevel=80005,towerId=2,recommendPower=3000202,sort=2,whichTeam=1,savePoint=0,reward=599305,settlement=1,loading=20005,chapterEn="CHAPTER ONE",name="第二层-2",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000203"]=setmetatable({id=3000203,stageLevel=80006,towerId=2,recommendPower=3000203,sort=3,whichTeam=1,savePoint=0,reward=599306,settlement=1,loading=20006,chapterEn="CHAPTER ZERO",name="第二层-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000301"]=setmetatable({id=3000301,stageLevel=80007,towerId=3,recommendPower=3000301,sort=1,whichTeam=1,savePoint=0,reward=599307,settlement=1,loading=20007,chapterEn="CHAPTER ZERO",name="第三层-1",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000302"]=setmetatable({id=3000302,stageLevel=80008,towerId=3,recommendPower=3000302,sort=2,whichTeam=1,savePoint=0,reward=599308,settlement=1,loading=20008,chapterEn="CHAPTER ONE",name="第三层-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000303"]=setmetatable({id=3000303,stageLevel=80009,towerId=3,recommendPower=3000303,sort=3,whichTeam=1,savePoint=0,reward=599309,settlement=1,loading=20009,chapterEn="CHAPTER ZERO",name="第三层-3",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000401"]=setmetatable({id=3000401,stageLevel=80010,towerId=101,recommendPower=3000104,sort=1,whichTeam=1,savePoint=0,reward=599310,settlement=1,loading=20010,chapterEn="CHAPTER ZERO",name="第四层-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000402"]=setmetatable({id=3000402,stageLevel=80011,towerId=101,recommendPower=3000105,sort=2,whichTeam=1,savePoint=0,reward=599311,settlement=1,loading=20011,chapterEn="CHAPTER ONE",name="第四层-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000403"]=setmetatable({id=3000403,stageLevel=80012,towerId=101,recommendPower=3000106,sort=3,whichTeam=1,savePoint=0,reward=599312,settlement=1,loading=20012,chapterEn="CHAPTER ZERO",name="第四层-3",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000501"]=setmetatable({id=3000501,stageLevel=80013,towerId=102,recommendPower=3000204,sort=1,whichTeam=1,savePoint=0,reward=599313,settlement=1,loading=20013,chapterEn="CHAPTER ZERO",name="第五层-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000502"]=setmetatable({id=3000502,stageLevel=80014,towerId=102,recommendPower=3000205,sort=2,whichTeam=1,savePoint=0,reward=599314,settlement=1,loading=20014,chapterEn="CHAPTER ONE",name="第五层-2",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000503"]=setmetatable({id=3000503,stageLevel=80015,towerId=102,recommendPower=3000206,sort=3,whichTeam=1,savePoint=0,reward=599315,settlement=1,loading=20015,chapterEn="CHAPTER ZERO",name="第五层-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000601"]=setmetatable({id=3000601,stageLevel=80016,towerId=103,recommendPower=3000304,sort=1,whichTeam=1,savePoint=0,reward=599316,settlement=1,loading=20016,chapterEn="CHAPTER ZERO",name="第六层-1",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000602"]=setmetatable({id=3000602,stageLevel=80017,towerId=103,recommendPower=3000305,sort=2,whichTeam=1,savePoint=0,reward=599317,settlement=1,loading=20017,chapterEn="CHAPTER ONE",name="第六层-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000603"]=setmetatable({id=3000603,stageLevel=80018,towerId=103,recommendPower=3000306,sort=3,whichTeam=1,savePoint=0,reward=599318,settlement=1,loading=20018,chapterEn="CHAPTER ZERO",name="第六层-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000701"]=setmetatable({id=3000701,stageLevel=80019,towerId=201,recommendPower=3000107,sort=1,whichTeam=1,savePoint=0,reward=599319,settlement=0,loading=20019,chapterEn="CHAPTER ZERO",name="第七层-1正象限",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000704"]=setmetatable({id=3000704,stageLevel=80020,towerId=201,recommendPower=3000108,sort=2,whichTeam=2,savePoint=3000701,reward=599320,settlement=1,loading=20020,chapterEn="CHAPTER ONE",name="第七层-1负象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000702"]=setmetatable({id=3000702,stageLevel=80021,towerId=201,recommendPower=3000109,sort=3,whichTeam=1,savePoint=0,reward=599321,settlement=0,loading=20021,chapterEn="CHAPTER ZERO",name="第七层-2正象限",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000705"]=setmetatable({id=3000705,stageLevel=80022,towerId=201,recommendPower=3000110,sort=4,whichTeam=2,savePoint=3000702,reward=599322,settlement=1,loading=20022,chapterEn="CHAPTER ZERO",name="第七层-2负象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000703"]=setmetatable({id=3000703,stageLevel=80023,towerId=201,recommendPower=3000111,sort=5,whichTeam=1,savePoint=0,reward=599323,settlement=0,loading=20023,chapterEn="CHAPTER ONE",name="第七层-3正象限",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000706"]=setmetatable({id=3000706,stageLevel=80024,towerId=201,recommendPower=3000112,sort=6,whichTeam=2,savePoint=3000703,reward=599324,settlement=1,loading=20024,chapterEn="CHAPTER ZERO",name="第七层-3负象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000801"]=setmetatable({id=3000801,stageLevel=80025,towerId=202,recommendPower=3000207,sort=1,whichTeam=1,savePoint=0,reward=599325,settlement=0,loading=20025,chapterEn="CHAPTER ZERO",name="第八层-1正象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000804"]=setmetatable({id=3000804,stageLevel=80026,towerId=202,recommendPower=3000208,sort=2,whichTeam=2,savePoint=3000801,reward=599326,settlement=1,loading=20026,chapterEn="CHAPTER ONE",name="第八层-1负象限",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000802"]=setmetatable({id=3000802,stageLevel=80027,towerId=202,recommendPower=3000209,sort=3,whichTeam=1,savePoint=0,reward=599327,settlement=0,loading=20027,chapterEn="CHAPTER ZERO",name="第八层-2正象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000805"]=setmetatable({id=3000805,stageLevel=80028,towerId=202,recommendPower=3000210,sort=4,whichTeam=2,savePoint=3000802,reward=599328,settlement=1,loading=20028,chapterEn="CHAPTER ZERO",name="第八层-2负象限",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000803"]=setmetatable({id=3000803,stageLevel=80029,towerId=202,recommendPower=3000211,sort=5,whichTeam=1,savePoint=0,reward=599329,settlement=0,loading=20029,chapterEn="CHAPTER ONE",name="第八层-3正象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000806"]=setmetatable({id=3000806,stageLevel=80030,towerId=202,recommendPower=3000212,sort=6,whichTeam=2,savePoint=3000803,reward=599330,settlement=1,loading=20030,chapterEn="CHAPTER ZERO",name="第八层-3负象限",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000901"]=setmetatable({id=3000901,stageLevel=80031,towerId=203,recommendPower=3000307,sort=1,whichTeam=1,savePoint=0,reward=599331,settlement=0,loading=20031,chapterEn="CHAPTER ZERO",name="第九层-1正象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000904"]=setmetatable({id=3000904,stageLevel=80032,towerId=203,recommendPower=3000308,sort=2,whichTeam=2,savePoint=3000901,reward=599332,settlement=1,loading=20032,chapterEn="CHAPTER ONE",name="第九层-1负象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000902"]=setmetatable({id=3000902,stageLevel=80033,towerId=203,recommendPower=3000309,sort=3,whichTeam=1,savePoint=0,reward=599333,settlement=0,loading=20033,chapterEn="CHAPTER ZERO",name="第九层-2正象限",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000905"]=setmetatable({id=3000905,stageLevel=80034,towerId=203,recommendPower=3000310,sort=4,whichTeam=2,savePoint=3000902,reward=599334,settlement=1,loading=20034,chapterEn="CHAPTER ZERO",name="第九层-2负象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3000903"]=setmetatable({id=3000903,stageLevel=80035,towerId=203,recommendPower=3000311,sort=5,whichTeam=1,savePoint=0,reward=599335,settlement=0,loading=20035,chapterEn="CHAPTER ONE",name="第九层-3正象限",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3000906"]=setmetatable({id=3000906,stageLevel=80036,towerId=203,recommendPower=3000312,sort=6,whichTeam=2,savePoint=3000903,reward=599336,settlement=1,loading=20036,chapterEn="CHAPTER ZERO",name="第九层-3负象限",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001001"]=setmetatable({id=3001001,stageLevel=80101,towerId=1001,recommendPower=3000401,sort=1,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20037,chapterEn="CHAPTER ZERO",name="虚空·解构-1",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001004"]=setmetatable({id=3001004,stageLevel=80102,towerId=1001,recommendPower=3000402,sort=2,whichTeam=2,savePoint=3001001,reward=0,settlement=1,loading=20038,chapterEn="CHAPTER ONE",name="虚空·解构-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001002"]=setmetatable({id=3001002,stageLevel=80103,towerId=1001,recommendPower=3000403,sort=3,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20039,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001005"]=setmetatable({id=3001005,stageLevel=80104,towerId=1001,recommendPower=3000404,sort=4,whichTeam=2,savePoint=3001002,reward=0,settlement=1,loading=20040,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001003"]=setmetatable({id=3001003,stageLevel=80105,towerId=1001,recommendPower=3000405,sort=5,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20041,chapterEn="CHAPTER ONE",name="虚空·解构-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001006"]=setmetatable({id=3001006,stageLevel=80106,towerId=1001,recommendPower=3000406,sort=6,whichTeam=2,savePoint=3001003,reward=0,settlement=1,loading=20042,chapterEn="CHAPTER ZERO",name="虚空·解构-3",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001007"]=setmetatable({id=3001007,stageLevel=80201,towerId=1002,recommendPower=3000501,sort=1,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20043,chapterEn="CHAPTER ZERO",name="虚空·解构-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001010"]=setmetatable({id=3001010,stageLevel=80202,towerId=1002,recommendPower=3000502,sort=2,whichTeam=2,savePoint=3001007,reward=0,settlement=1,loading=20044,chapterEn="CHAPTER ONE",name="虚空·解构-1",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001008"]=setmetatable({id=3001008,stageLevel=80203,towerId=1002,recommendPower=3000503,sort=3,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20045,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001011"]=setmetatable({id=3001011,stageLevel=80204,towerId=1002,recommendPower=3000504,sort=4,whichTeam=2,savePoint=3001008,reward=0,settlement=1,loading=20046,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001009"]=setmetatable({id=3001009,stageLevel=80205,towerId=1002,recommendPower=3000505,sort=5,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20047,chapterEn="CHAPTER ONE",name="虚空·解构-3",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001012"]=setmetatable({id=3001012,stageLevel=80206,towerId=1002,recommendPower=3000506,sort=6,whichTeam=2,savePoint=3001009,reward=0,settlement=1,loading=20048,chapterEn="CHAPTER ZERO",name="虚空·解构-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001013"]=setmetatable({id=3001013,stageLevel=80301,towerId=1003,recommendPower=3000601,sort=1,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20049,chapterEn="CHAPTER ZERO",name="虚空·解构-1",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001016"]=setmetatable({id=3001016,stageLevel=80302,towerId=1003,recommendPower=3000602,sort=2,whichTeam=2,savePoint=3001013,reward=0,settlement=1,loading=20050,chapterEn="CHAPTER ONE",name="虚空·解构-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001014"]=setmetatable({id=3001014,stageLevel=80303,towerId=1003,recommendPower=3000603,sort=3,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20051,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001017"]=setmetatable({id=3001017,stageLevel=80304,towerId=1003,recommendPower=3000604,sort=4,whichTeam=2,savePoint=3001014,reward=0,settlement=1,loading=20052,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001015"]=setmetatable({id=3001015,stageLevel=80305,towerId=1003,recommendPower=3000605,sort=5,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20053,chapterEn="CHAPTER ONE",name="虚空·解构-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001018"]=setmetatable({id=3001018,stageLevel=80306,towerId=1003,recommendPower=3000606,sort=6,whichTeam=2,savePoint=3001015,reward=0,settlement=1,loading=20054,chapterEn="CHAPTER ZERO",name="虚空·解构-3",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001019"]=setmetatable({id=3001019,stageLevel=80401,towerId=1004,recommendPower=3000701,sort=1,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20037,chapterEn="CHAPTER ZERO",name="虚空·解构-1",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001022"]=setmetatable({id=3001022,stageLevel=80402,towerId=1004,recommendPower=3000702,sort=2,whichTeam=2,savePoint=3001019,reward=0,settlement=1,loading=20038,chapterEn="CHAPTER ONE",name="虚空·解构-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001020"]=setmetatable({id=3001020,stageLevel=80403,towerId=1004,recommendPower=3000703,sort=3,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20039,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001023"]=setmetatable({id=3001023,stageLevel=80404,towerId=1004,recommendPower=3000704,sort=4,whichTeam=2,savePoint=3001020,reward=0,settlement=1,loading=20040,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001021"]=setmetatable({id=3001021,stageLevel=80405,towerId=1004,recommendPower=3000705,sort=5,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20041,chapterEn="CHAPTER ONE",name="虚空·解构-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001024"]=setmetatable({id=3001024,stageLevel=80406,towerId=1004,recommendPower=3000706,sort=6,whichTeam=2,savePoint=3001021,reward=0,settlement=1,loading=20042,chapterEn="CHAPTER ZERO",name="虚空·解构-3",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001025"]=setmetatable({id=3001025,stageLevel=80101,towerId=1005,recommendPower=3000801,sort=1,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20043,chapterEn="CHAPTER ZERO",name="虚空·解构-1",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001028"]=setmetatable({id=3001028,stageLevel=80102,towerId=1005,recommendPower=3000802,sort=2,whichTeam=2,savePoint=3001025,reward=0,settlement=1,loading=20044,chapterEn="CHAPTER ONE",name="虚空·解构-1",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001026"]=setmetatable({id=3001026,stageLevel=80103,towerId=1005,recommendPower=3000803,sort=3,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20045,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001029"]=setmetatable({id=3001029,stageLevel=80104,towerId=1005,recommendPower=3000804,sort=4,whichTeam=2,savePoint=3001026,reward=0,settlement=1,loading=20046,chapterEn="CHAPTER ZERO",name="虚空·解构-2",areaName="TEO-11",weather=1,timeText="未知"},mt),
    ["3001027"]=setmetatable({id=3001027,stageLevel=80105,towerId=1005,recommendPower=3000805,sort=5,whichTeam=1,savePoint=0,reward=0,settlement=0,loading=20047,chapterEn="CHAPTER ONE",name="虚空·解构-3",areaName="TEO-11",weather=2,timeText="未知"},mt),
    ["3001030"]=setmetatable({id=3001030,stageLevel=80106,towerId=1005,recommendPower=3000806,sort=6,whichTeam=2,savePoint=3001027,reward=0,settlement=1,loading=20048,chapterEn="CHAPTER ZERO",name="虚空·解构-3",areaName="TEO-11",weather=1,timeText="未知"},mt),
}
--生成获取数据的方法
---@return TowerLevel
function GetTowerLevelData(id)
    return TowerLevel_Xls[tostring(id)]
end
--自动生成注释
---@class TowerLevel : table 
---@field id number
---@field stageLevel number
---@field towerId number
---@field recommendPower number
---@field sort number
---@field whichTeam number
---@field savePoint number
---@field reward number
---@field settlement number
---@field loading number
---@field chapterEn string
---@field name string
---@field areaName string
---@field weather number
---@field timeText string
---@field storyShowBeforeTeam number
---@field storyShowAfterTeam number
---@field storyShowStart number
---@field storyShowFinishBeforeLoading number
---@field storyShowFinishAfterLoading number
