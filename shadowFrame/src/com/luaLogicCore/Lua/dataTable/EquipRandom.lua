local default = {equipRandomId=0,mainAttributeId=0,minorAttributeId=0,minorAttributeCountMax=0,minorAttributeWeight=xlsNilTable,newAttribute=0,attributeDuplication=0,randomAttributeDuplication=0,stochasticMethod=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class EquipRandom_Xls : table 
EquipRandom_Xls =
{
    ["7000301"]=setmetatable({equipRandomId=7000301,mainAttributeId=4001,minorAttributeId=51001,minorAttributeCountMax=1,minorAttributeWeight={[1]=100,[2]=100,[3]=0,[4]=0,[5]=0},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7000302"]=setmetatable({equipRandomId=7000302,mainAttributeId=4002,minorAttributeId=52001,minorAttributeCountMax=1,minorAttributeWeight={[1]=100,[2]=100,[3]=0,[4]=0,[5]=0},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7000303"]=setmetatable({equipRandomId=7000303,mainAttributeId=4003,minorAttributeId=53001,minorAttributeCountMax=1,minorAttributeWeight={[1]=100,[2]=100,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=0,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7000304"]=setmetatable({equipRandomId=7000304,mainAttributeId=4004,minorAttributeId=54001,minorAttributeCountMax=1,minorAttributeWeight={[1]=100,[2]=100,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7000305"]=setmetatable({equipRandomId=7000305,mainAttributeId=4005,minorAttributeId=55001,minorAttributeCountMax=1,minorAttributeWeight={[1]=100,[2]=100,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["7010401"]=setmetatable({equipRandomId=7010401,mainAttributeId=4001,minorAttributeId=51001,minorAttributeCountMax=2,minorAttributeWeight={[1]=0,[2]=100,[3]=100,[4]=0,[5]=0},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7010402"]=setmetatable({equipRandomId=7010402,mainAttributeId=4002,minorAttributeId=52001,minorAttributeCountMax=2,minorAttributeWeight={[1]=0,[2]=100,[3]=100,[4]=0,[5]=0},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7010403"]=setmetatable({equipRandomId=7010403,mainAttributeId=4003,minorAttributeId=53001,minorAttributeCountMax=2,minorAttributeWeight={[1]=0,[2]=100,[3]=100,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=0,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7010404"]=setmetatable({equipRandomId=7010404,mainAttributeId=4004,minorAttributeId=54001,minorAttributeCountMax=2,minorAttributeWeight={[1]=0,[2]=100,[3]=100,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7010405"]=setmetatable({equipRandomId=7010405,mainAttributeId=4005,minorAttributeId=55001,minorAttributeCountMax=2,minorAttributeWeight={[1]=0,[2]=100,[3]=100,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["7020401"]=setmetatable({equipRandomId=7020401,mainAttributeId=4001,minorAttributeId=51001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7020402"]=setmetatable({equipRandomId=7020402,mainAttributeId=4002,minorAttributeId=52001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7020403"]=setmetatable({equipRandomId=7020403,mainAttributeId=4003,minorAttributeId=53001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=10000,attributeDuplication=0,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7020404"]=setmetatable({equipRandomId=7020404,mainAttributeId=4004,minorAttributeId=54001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7020405"]=setmetatable({equipRandomId=7020405,mainAttributeId=4005,minorAttributeId=55001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["7010501"]=setmetatable({equipRandomId=7010501,mainAttributeId=5001,minorAttributeId=51001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7010502"]=setmetatable({equipRandomId=7010502,mainAttributeId=5002,minorAttributeId=52001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7010503"]=setmetatable({equipRandomId=7010503,mainAttributeId=5003,minorAttributeId=53001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=10000,attributeDuplication=0,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7010504"]=setmetatable({equipRandomId=7010504,mainAttributeId=5004,minorAttributeId=54001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7010505"]=setmetatable({equipRandomId=7010505,mainAttributeId=5005,minorAttributeId=55001,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["7020501"]=setmetatable({equipRandomId=7020501,mainAttributeId=5001,minorAttributeId=55001,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=100},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7020502"]=setmetatable({equipRandomId=7020502,mainAttributeId=5002,minorAttributeId=55001,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=100},newAttribute=5000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7020503"]=setmetatable({equipRandomId=7020503,mainAttributeId=5003,minorAttributeId=55001,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=100},newAttribute=10000,attributeDuplication=0,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7020504"]=setmetatable({equipRandomId=7020504,mainAttributeId=5004,minorAttributeId=55001,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=100},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=1},mt),
    ["7020505"]=setmetatable({equipRandomId=7020505,mainAttributeId=5005,minorAttributeId=55001,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=0,[3]=100,[4]=100,[5]=100},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000201"]=setmetatable({equipRandomId=8000201,mainAttributeId=2001,minorAttributeId=20010,minorAttributeCountMax=1,minorAttributeWeight={[1]=1000,[2]=0,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000202"]=setmetatable({equipRandomId=8000202,mainAttributeId=2002,minorAttributeId=20020,minorAttributeCountMax=1,minorAttributeWeight={[1]=1000,[2]=0,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000203"]=setmetatable({equipRandomId=8000203,mainAttributeId=2003,minorAttributeId=20030,minorAttributeCountMax=1,minorAttributeWeight={[1]=1000,[2]=0,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000204"]=setmetatable({equipRandomId=8000204,mainAttributeId=2004,minorAttributeId=20040,minorAttributeCountMax=1,minorAttributeWeight={[1]=1000,[2]=0,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000205"]=setmetatable({equipRandomId=8000205,mainAttributeId=2005,minorAttributeId=20050,minorAttributeCountMax=1,minorAttributeWeight={[1]=1000,[2]=0,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000301"]=setmetatable({equipRandomId=8000301,mainAttributeId=3001,minorAttributeId=30010,minorAttributeCountMax=2,minorAttributeWeight={[1]=1000,[2]=1000,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000302"]=setmetatable({equipRandomId=8000302,mainAttributeId=3002,minorAttributeId=30020,minorAttributeCountMax=2,minorAttributeWeight={[1]=1000,[2]=1000,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000303"]=setmetatable({equipRandomId=8000303,mainAttributeId=3003,minorAttributeId=30030,minorAttributeCountMax=2,minorAttributeWeight={[1]=1000,[2]=1000,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000304"]=setmetatable({equipRandomId=8000304,mainAttributeId=3004,minorAttributeId=30040,minorAttributeCountMax=2,minorAttributeWeight={[1]=1000,[2]=1000,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000305"]=setmetatable({equipRandomId=8000305,mainAttributeId=3005,minorAttributeId=30050,minorAttributeCountMax=2,minorAttributeWeight={[1]=1000,[2]=1000,[3]=0,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000401"]=setmetatable({equipRandomId=8000401,mainAttributeId=4001,minorAttributeId=40010,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000402"]=setmetatable({equipRandomId=8000402,mainAttributeId=4002,minorAttributeId=40020,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000403"]=setmetatable({equipRandomId=8000403,mainAttributeId=4003,minorAttributeId=40030,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000404"]=setmetatable({equipRandomId=8000404,mainAttributeId=4004,minorAttributeId=40040,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000405"]=setmetatable({equipRandomId=8000405,mainAttributeId=4005,minorAttributeId=40050,minorAttributeCountMax=3,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=0,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000501"]=setmetatable({equipRandomId=8000501,mainAttributeId=5001,minorAttributeId=50010,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=1000,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000502"]=setmetatable({equipRandomId=8000502,mainAttributeId=5002,minorAttributeId=50020,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=1000,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000503"]=setmetatable({equipRandomId=8000503,mainAttributeId=5003,minorAttributeId=50030,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=1000,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000504"]=setmetatable({equipRandomId=8000504,mainAttributeId=5004,minorAttributeId=50040,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=1000,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
    ["8000505"]=setmetatable({equipRandomId=8000505,mainAttributeId=5005,minorAttributeId=50050,minorAttributeCountMax=4,minorAttributeWeight={[1]=0,[2]=1000,[3]=1000,[4]=1000,[5]=0},newAttribute=10000,attributeDuplication=1,randomAttributeDuplication=1,stochasticMethod=2},mt),
}
--生成获取数据的方法
---@return EquipRandom
function GetEquipRandomData(id)
    return EquipRandom_Xls[tostring(id)]
end
--自动生成注释
---@class EquipRandom : table 
---@field equipRandomId number
---@field mainAttributeId number
---@field minorAttributeId number
---@field minorAttributeCountMax number
---@field minorAttributeWeight table
---@field newAttribute number
---@field attributeDuplication number
---@field randomAttributeDuplication number
---@field stochasticMethod number
