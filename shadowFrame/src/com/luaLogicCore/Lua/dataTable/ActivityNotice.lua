local default = {id=0,type=0,text="",img="",openTime=0,openFuction=0,openGuide=0,jumpTo=0,showItem=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ActivityNotice_Xls : table 
ActivityNotice_Xls =
{
    ["1"]=setmetatable({id=1,type=1,text="限定共鸣开启",img="UI_Gacha_Banner_1100",openTime=9204,openFuction=190,openGuide=106,jumpTo=3},mt),
    ["2"]=setmetatable({id=2,type=1,text="活动开启",img="UI_Activity_Banner_0001",openTime=23320,openFuction=398,openGuide=0,jumpTo=61000},mt),
    ["3"]=setmetatable({id=3,type=1,text="交错迷宫刷新",img="UI_Gacha_Banner_6000",openTime=110200,openFuction=480,openGuide=170,jumpTo=27},mt),
    ["4"]=setmetatable({id=4,type=2,text="活动即将结束",img="UI_Activity_Banner_0001",openTime=23328,openFuction=398,openGuide=0,jumpTo=61000,showItem=1011},mt),
}
--生成获取数据的方法
---@return ActivityNotice
function GetActivityNoticeData(id)
    return ActivityNotice_Xls[tostring(id)]
end
--自动生成注释
---@class ActivityNotice : table 
---@field id number
---@field type number
---@field text string
---@field img string
---@field openTime number
---@field openFuction number
---@field openGuide number
---@field jumpTo number
---@field showItem number
