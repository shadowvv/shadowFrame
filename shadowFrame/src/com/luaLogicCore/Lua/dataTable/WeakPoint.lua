local default = {id=0,maxHp=0,weakTime=0,weakHurtParam=0,weakReactHurtParam=0,weakBreakBuff=xlsNilTable,weakUI=0,hitEffect=0,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position=xlsNilTable,randomFall=xlsNilTable,probability=xlsNilTable,randomFallObjectCount=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeakPoint_Xls : table 
WeakPoint_Xls =
{
    ["1"]=setmetatable({id=1,maxHp=1000,weakTime=999,weakHurtParam=1.5,weakReactHurtParam=1.5,weakBreakBuff=xlsNilTable,weakUI=2},mt),
    ["2"]=setmetatable({id=2,maxHp=0.99,weakTime=999,weakHurtParam=1.5,weakReactHurtParam=1.5,weakBreakBuff=xlsNilTable,weakUI=0,hitEffect=201175},mt),
    ["3"]=setmetatable({id=3,maxHp=100,weakTime=20,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff=xlsNilTable,weakUI=1},mt),
    ["4"]=setmetatable({id=4,maxHp=300,weakTime=7,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff=xlsNilTable,weakUI=1},mt),
    ["102001"]=setmetatable({id=102001,maxHp=0.99,weakTime=999,weakHurtParam=1.5,weakReactHurtParam=1.5,weakBreakBuff=xlsNilTable,weakUI=0,hitEffect=201175},mt),
    ["107001"]=setmetatable({id=107001,maxHp=0.05,weakTime=8,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="9001"},weakUI=1,hitEffect=201175,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=0.0,[2]=12.8,[3]=11.2},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["305101"]=setmetatable({id=305101,maxHp=0.99,weakTime=999,weakHurtParam=1.5,weakReactHurtParam=1.5,weakBreakBuff=xlsNilTable,weakUI=0,hitEffect=201175},mt),
    ["30101"]=setmetatable({id=30101,maxHp=0.05,weakTime=8,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="9001"},weakUI=1,hitEffect=201175,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=-6.5,[2]=3.6,[3]=19.6},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["30102"]=setmetatable({id=30102,maxHp=0.03,weakTime=10,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="9003"},weakUI=1,hitEffect=201175,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=0.0,[2]=0.0,[3]=17.6},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["30103"]=setmetatable({id=30103,maxHp=0.1,weakTime=8,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="9003"},weakUI=1,hitEffect=201175,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=-6.5,[2]=3.6,[3]=19.6},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["303101"]=setmetatable({id=303101,maxHp=0.05,weakTime=99,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="9004"},weakUI=1,hitEffect=201175,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=0.0,[2]=3.0,[3]=14.0},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["303102"]=setmetatable({id=303102,maxHp=0.105,weakTime=99,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="9004"},weakUI=1,hitEffect=201175,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=0.0,[2]=0.0,[3]=1.0},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["303103"]=setmetatable({id=303103,maxHp=0.105,weakTime=19,weakHurtParam=1,weakReactHurtParam=1,weakBreakBuff={[1]="104012"},weakUI=1,hitEffect=201175,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=0.0,[2]=0.0,[3]=1.0}},mt),
    ["304101"]=setmetatable({id=304101,maxHp=0.99,weakTime=30,weakHurtParam=1,weakReactHurtParam=1,weakBreakBuff={[1]="304113"},weakUI=1,hitEffect=201175},mt),
    ["304102"]=setmetatable({id=304102,maxHp=0.99,weakTime=15,weakHurtParam=1,weakReactHurtParam=1,weakBreakBuff={[1]="304113"},weakUI=1,hitEffect=201175},mt),
    ["306201"]=setmetatable({id=306201,maxHp=0.5,weakTime=15,weakHurtParam=1.5,weakReactHurtParam=1.5,weakBreakBuff={[1]="9001"},weakUI=1,hitEffect=201175,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=-5.0,[2]=62.0,[3]=2.0},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["306202"]=setmetatable({id=306202,maxHp=0.99,weakTime=999,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff=xlsNilTable,weakUI=0,hitEffect=201175},mt),
    ["308001"]=setmetatable({id=308001,maxHp=0.01,weakTime=1,weakHurtParam=1.3,weakReactHurtParam=2,weakBreakBuff={[1]="308011"},weakUI=3,hitEffect=0,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=0.0,[2]=1.0,[3]=0.0},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["308002"]=setmetatable({id=308002,maxHp=0.02,weakTime=1.5,weakHurtParam=1.1,weakReactHurtParam=1.7,weakBreakBuff={[1]="308012"},weakUI=1,hitEffect=0,fallObjectId=xlsNilTable,fallObjectCount=xlsNilTable,position={[1]=0.0,[2]=1.0,[3]=0.0},randomFall={[1]=20000,[2]=20002,[3]=20003},probability={[1]=1.0,[2]=1.0,[3]=1.0},randomFallObjectCount=1},mt),
    ["102001240"]=setmetatable({id=102001240,maxHp=0.99,weakTime=8,weakHurtParam=1.2,weakReactHurtParam=1,weakBreakBuff=xlsNilTable,weakUI=1,hitEffect=201175},mt),
    ["308101"]=setmetatable({id=308101,maxHp=0.05,weakTime=9,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="20105"},weakUI=1,hitEffect=201175},mt),
    ["308102"]=setmetatable({id=308102,maxHp=0.05,weakTime=9,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="20110"},weakUI=1,hitEffect=201175},mt),
    ["308103"]=setmetatable({id=308103,maxHp=0.05,weakTime=9,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="20115"},weakUI=1,hitEffect=201175},mt),
    ["308104"]=setmetatable({id=308104,maxHp=0.05,weakTime=9,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff={[1]="20120"},weakUI=1,hitEffect=201175},mt),
    ["308105"]=setmetatable({id=308105,maxHp=0.99,weakTime=999,weakHurtParam=2,weakReactHurtParam=2,weakBreakBuff=xlsNilTable,weakUI=0,hitEffect=201175},mt),
    ["308106"]=setmetatable({id=308106,maxHp=0.99,weakTime=16,weakHurtParam=1,weakReactHurtParam=1,weakBreakBuff=xlsNilTable,weakUI=1,hitEffect=201175},mt),
}
--生成获取数据的方法
---@return WeakPoint
function GetWeakPointData(id)
    return WeakPoint_Xls[tostring(id)]
end
--自动生成注释
---@class WeakPoint : table 
---@field id number
---@field maxHp number
---@field weakTime number
---@field weakHurtParam number
---@field weakReactHurtParam number
---@field weakBreakBuff table
---@field weakUI number
---@field hitEffect number
---@field fallObjectId table
---@field fallObjectCount table
---@field position table
---@field randomFall table
---@field probability table
---@field randomFallObjectCount number
