local default = {mainAttributeGrowId=0,type=0,initialValue=0,growValue=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MainAttributeGrow_Xls : table 
MainAttributeGrow_Xls =
{
    ["40001"]=setmetatable({mainAttributeGrowId=40001,type=100,initialValue=100.0,growValue=10.0},mt),
    ["40002"]=setmetatable({mainAttributeGrowId=40002,type=101,initialValue=20.0,growValue=2.0},mt),
    ["40003"]=setmetatable({mainAttributeGrowId=40003,type=102,initialValue=40.0,growValue=4.0},mt),
    ["40004"]=setmetatable({mainAttributeGrowId=40004,type=201,initialValue=10.0,growValue=2.5},mt),
    ["40005"]=setmetatable({mainAttributeGrowId=40005,type=200,initialValue=20.0,growValue=5.0},mt),
    ["50001"]=setmetatable({mainAttributeGrowId=50001,type=100,initialValue=150.0,growValue=15.0},mt),
    ["50002"]=setmetatable({mainAttributeGrowId=50002,type=101,initialValue=30.0,growValue=3.0},mt),
    ["50003"]=setmetatable({mainAttributeGrowId=50003,type=102,initialValue=60.0,growValue=6.0},mt),
    ["50004"]=setmetatable({mainAttributeGrowId=50004,type=201,initialValue=15.0,growValue=3.75},mt),
    ["50005"]=setmetatable({mainAttributeGrowId=50005,type=200,initialValue=30.0,growValue=7.5},mt),
    ["2001"]=setmetatable({mainAttributeGrowId=2001,type=101,initialValue=7.0,growValue=6.0},mt),
    ["2002"]=setmetatable({mainAttributeGrowId=2002,type=100,initialValue=65.0,growValue=50.0},mt),
    ["2003"]=setmetatable({mainAttributeGrowId=2003,type=102,initialValue=5.0,growValue=4.0},mt),
    ["2004"]=setmetatable({mainAttributeGrowId=2004,type=121,initialValue=0.036,growValue=0.028},mt),
    ["2005"]=setmetatable({mainAttributeGrowId=2005,type=120,initialValue=0.0154,growValue=0.012},mt),
    ["2006"]=setmetatable({mainAttributeGrowId=2006,type=122,initialValue=0.0154,growValue=0.012},mt),
    ["3001"]=setmetatable({mainAttributeGrowId=3001,type=101,initialValue=25.0,growValue=8.0},mt),
    ["3002"]=setmetatable({mainAttributeGrowId=3002,type=100,initialValue=113.0,growValue=38.0},mt),
    ["3003"]=setmetatable({mainAttributeGrowId=3003,type=102,initialValue=9.0,growValue=3.0},mt),
    ["3004"]=setmetatable({mainAttributeGrowId=3004,type=121,initialValue=0.063,growValue=0.021},mt),
    ["3005"]=setmetatable({mainAttributeGrowId=3005,type=120,initialValue=0.027,growValue=0.009},mt),
    ["3006"]=setmetatable({mainAttributeGrowId=3006,type=122,initialValue=0.027,growValue=0.009},mt),
    ["4001"]=setmetatable({mainAttributeGrowId=4001,type=101,initialValue=43.0,growValue=9.0},mt),
    ["4002"]=setmetatable({mainAttributeGrowId=4002,type=100,initialValue=389.0,growValue=82.0},mt),
    ["4003"]=setmetatable({mainAttributeGrowId=4003,type=102,initialValue=32.0,growValue=7.0},mt),
    ["4004"]=setmetatable({mainAttributeGrowId=4004,type=121,initialValue=0.216,growValue=0.0458},mt),
    ["4005"]=setmetatable({mainAttributeGrowId=4005,type=120,initialValue=0.0926,growValue=0.0196},mt),
    ["4006"]=setmetatable({mainAttributeGrowId=4006,type=122,initialValue=0.0926,growValue=0.0196},mt),
    ["5001"]=setmetatable({mainAttributeGrowId=5001,type=101,initialValue=68.0,growValue=11.0},mt),
    ["5002"]=setmetatable({mainAttributeGrowId=5002,type=100,initialValue=608.0,growValue=95.0},mt),
    ["5003"]=setmetatable({mainAttributeGrowId=5003,type=102,initialValue=51.0,growValue=8.0},mt),
    ["5004"]=setmetatable({mainAttributeGrowId=5004,type=121,initialValue=0.3375,growValue=0.0525},mt),
    ["5005"]=setmetatable({mainAttributeGrowId=5005,type=120,initialValue=0.1446,growValue=0.0225},mt),
    ["5006"]=setmetatable({mainAttributeGrowId=5006,type=122,initialValue=0.1446,growValue=0.0225},mt),
}
--生成获取数据的方法
---@return MainAttributeGrow
function GetMainAttributeGrowData(id)
    return MainAttributeGrow_Xls[tostring(id)]
end
--自动生成注释
---@class MainAttributeGrow : table 
---@field mainAttributeGrowId number
---@field type number
---@field initialValue number
---@field growValue number
