local default = {equipRandomId=0,mainAttributeId=0,minorAttributeId1=0,minorAttribute1CountMax=0,minorAttributeWeight1=xlsNilTable,minorAttributeId2=0,minorAttribute2CountMax=0,minorAttributeWeight3=xlsNilTable,newAttribute=0,attributeDuplication=0,randomAttributeDuplication=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class EquipStochastic_Xls : table 
EquipStochastic_Xls =
{
    ["8000201"]=setmetatable({equipRandomId=8000201,mainAttributeId=12001,minorAttributeId1=22002,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32002,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000202"]=setmetatable({equipRandomId=8000202,mainAttributeId=12002,minorAttributeId1=22002,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32002,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000203"]=setmetatable({equipRandomId=8000203,mainAttributeId=12003,minorAttributeId1=22002,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32002,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000204"]=setmetatable({equipRandomId=8000204,mainAttributeId=12004,minorAttributeId1=22002,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32002,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000205"]=setmetatable({equipRandomId=8000205,mainAttributeId=12005,minorAttributeId1=22002,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32002,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000301"]=setmetatable({equipRandomId=8000301,mainAttributeId=12006,minorAttributeId1=22003,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32003,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000302"]=setmetatable({equipRandomId=8000302,mainAttributeId=12007,minorAttributeId1=22003,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32003,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000303"]=setmetatable({equipRandomId=8000303,mainAttributeId=12008,minorAttributeId1=22003,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32003,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000304"]=setmetatable({equipRandomId=8000304,mainAttributeId=12009,minorAttributeId1=22003,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32003,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000305"]=setmetatable({equipRandomId=8000305,mainAttributeId=12010,minorAttributeId1=22003,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32003,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000401"]=setmetatable({equipRandomId=8000401,mainAttributeId=12011,minorAttributeId1=22004,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32004,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000,[2]=0},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000402"]=setmetatable({equipRandomId=8000402,mainAttributeId=12012,minorAttributeId1=22004,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32004,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000,[2]=0},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000403"]=setmetatable({equipRandomId=8000403,mainAttributeId=12013,minorAttributeId1=22004,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32004,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000,[2]=0},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000404"]=setmetatable({equipRandomId=8000404,mainAttributeId=12014,minorAttributeId1=22004,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32004,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000,[2]=0},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000405"]=setmetatable({equipRandomId=8000405,mainAttributeId=12015,minorAttributeId1=22004,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32004,minorAttribute2CountMax=1,minorAttributeWeight3={[1]=1000,[2]=0},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000501"]=setmetatable({equipRandomId=8000501,mainAttributeId=12016,minorAttributeId1=22005,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32005,minorAttribute2CountMax=2,minorAttributeWeight3={[1]=0,[2]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000502"]=setmetatable({equipRandomId=8000502,mainAttributeId=12017,minorAttributeId1=22005,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32005,minorAttribute2CountMax=2,minorAttributeWeight3={[1]=0,[2]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000503"]=setmetatable({equipRandomId=8000503,mainAttributeId=12018,minorAttributeId1=22005,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32005,minorAttribute2CountMax=2,minorAttributeWeight3={[1]=0,[2]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000504"]=setmetatable({equipRandomId=8000504,mainAttributeId=12019,minorAttributeId1=22005,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32005,minorAttribute2CountMax=2,minorAttributeWeight3={[1]=0,[2]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
    ["8000505"]=setmetatable({equipRandomId=8000505,mainAttributeId=12020,minorAttributeId1=22005,minorAttribute1CountMax=2,minorAttributeWeight1={[1]=0,[2]=1000},minorAttributeId2=32005,minorAttribute2CountMax=2,minorAttributeWeight3={[1]=0,[2]=1000},newAttribute=0,attributeDuplication=1,randomAttributeDuplication=1},mt),
}
--生成获取数据的方法
---@return EquipStochastic
function GetEquipStochasticData(id)
    return EquipStochastic_Xls[tostring(id)]
end
--自动生成注释
---@class EquipStochastic : table 
---@field equipRandomId number
---@field mainAttributeId number
---@field minorAttributeId1 number
---@field minorAttribute1CountMax number
---@field minorAttributeWeight1 table
---@field minorAttributeId2 number
---@field minorAttribute2CountMax number
---@field minorAttributeWeight3 table
---@field newAttribute number
---@field attributeDuplication number
---@field randomAttributeDuplication number
