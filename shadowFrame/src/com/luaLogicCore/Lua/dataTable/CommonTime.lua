---@class CommonTime_Xls : table 
CommonTime_Xls =
{
    ["2001"]={timeId=2001,desc="",timeType=1,beginTime="2020-10-10 10:00:00",overTime1="2025-1-1 10:00:00"},
    ["3001"]={timeId=3001,desc="",timeType=1,beginTime="2020-10-10 10:00:00",overTime1="2025-1-1 10:00:00"},
    ["4001"]={timeId=4001,desc="",timeType=3,beginTime="2020-10-10 10:00:00|2020-10-10 16:00:00",overTime1="2020-10-10 12:00:00|2020-10-10 17:00:00",overTime2="",durationTime=0,period=7},
    ["5001"]={timeId=5001,desc="",timeType=1,beginTime="2020-10-10 10:00:00",overTime1="2020-1-1 10:00:00"},
    ["9999"]={timeId=9999,desc="",timeType=1,beginTime="2020-10-10 10:00:00",overTime1="2090-1-1 10:00:00"},
}
--生成获取数据的方法
---@return CommonTime
function GetCommonTimeData(id)
    return CommonTime_Xls[tostring(id)]
end
--自动生成注释
---@class CommonTime : table 
---@field timeId number
---@field desc string
---@field timeType number
---@field beginTime string
---@field overTime1 string
---@field overTime2 string
---@field durationTime number
---@field period number
---@field week string
