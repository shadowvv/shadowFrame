local default = {id=0,openFunction=0,openTime="",durationTime1=0,mergeTime=0,durationTime2=0,durationTime3=0,peopleLimit=0,acessLimit=0,teamLimit=0,applyLimit=0,inviteLimit=0,costId=0,costNum=0,power=0,interval=0,openNum=0,season=0,type=0,number=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class GuildWarBaseData_Xls : table 
GuildWarBaseData_Xls =
{
    ["100701"]=setmetatable({id=100701,openFunction=0,openTime="2023-09-07 13:00:00",durationTime1=153,mergeTime=12,durationTime2=168,durationTime3=168,peopleLimit=20,acessLimit=30,teamLimit=10000,applyLimit=10,inviteLimit=10,costId=11,costNum=50,power=4,interval=1,openNum=5,season=1,type=10,number=2500},mt),
    ["100702"]=setmetatable({id=100702,openFunction=0,openTime="2023-10-19 13:10:00",durationTime1=153,mergeTime=12,durationTime2=168,durationTime3=168,peopleLimit=20,acessLimit=30,teamLimit=10000,applyLimit=10,inviteLimit=10,costId=11,costNum=50,power=4,interval=1,openNum=5,season=1,type=10,number=2500},mt),
    ["100703"]=setmetatable({id=100703,openFunction=0,openTime="2023-11-09 13:10:00",durationTime1=153,mergeTime=12,durationTime2=168,durationTime3=168,peopleLimit=20,acessLimit=30,teamLimit=10000,applyLimit=10,inviteLimit=10,costId=11,costNum=50,power=4,interval=1,openNum=5,season=1,type=10,number=2500},mt),
    ["100801"]=setmetatable({id=100801,openFunction=0,openTime="2023-11-30 13:10:00",durationTime1=153,mergeTime=12,durationTime2=168,durationTime3=168,peopleLimit=20,acessLimit=30,teamLimit=10000,applyLimit=10,inviteLimit=10,costId=11,costNum=50,power=4,interval=1,openNum=5,season=2,type=10,number=2500},mt),
    ["100802"]=setmetatable({id=100802,openFunction=0,openTime="2023-12-21 13:10:00",durationTime1=153,mergeTime=12,durationTime2=168,durationTime3=168,peopleLimit=20,acessLimit=30,teamLimit=10000,applyLimit=10,inviteLimit=10,costId=11,costNum=50,power=4,interval=1,openNum=5,season=2,type=10,number=2500},mt),
    ["100803"]=setmetatable({id=100803,openFunction=0,openTime="2024-01-11 13:10:00",durationTime1=153,mergeTime=12,durationTime2=168,durationTime3=168,peopleLimit=20,acessLimit=30,teamLimit=10000,applyLimit=10,inviteLimit=10,costId=11,costNum=50,power=4,interval=1,openNum=5,season=2,type=10,number=2500},mt),
}
--生成获取数据的方法
---@return GuildWarBaseData
function GetGuildWarBaseDataData(id)
    return GuildWarBaseData_Xls[tostring(id)]
end
--自动生成注释
---@class GuildWarBaseData : table 
---@field id number
---@field openFunction number
---@field openTime string
---@field durationTime1 number
---@field mergeTime number
---@field durationTime2 number
---@field durationTime3 number
---@field peopleLimit number
---@field acessLimit number
---@field teamLimit number
---@field applyLimit number
---@field inviteLimit number
---@field costId number
---@field costNum number
---@field power number
---@field interval number
---@field openNum number
---@field season number
---@field type number
---@field number number
