local default = {id=0,skillId=0,conditionId=0,skillLevel=0,consumeId=0,skillPower=0,effectiveType=0,destroyType=0,triggerCd=0,triggerNum=0,valueType=xlsNilTable,trigger=xlsNilTable,result=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TalentSkillValue_Xls : table 
TalentSkillValue_Xls =
{
    ["5021010"]=setmetatable({id=5021010,skillId=5031010,conditionId=1,skillLevel=1,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5022010"]=setmetatable({id=5022010,skillId=5031010,conditionId=1,skillLevel=1,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5023010"]=setmetatable({id=5023010,skillId=5031010,conditionId=1,skillLevel=1,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5024010"]=setmetatable({id=5024010,skillId=5031010,conditionId=1,skillLevel=1,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5025010"]=setmetatable({id=5025010,skillId=5031010,conditionId=1,skillLevel=1,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5031010"]=setmetatable({id=5031010,skillId=5031010,conditionId=1,skillLevel=1,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5031011"]=setmetatable({id=5031011,skillId=5031010,conditionId=1,skillLevel=2,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5031012"]=setmetatable({id=5031012,skillId=5031010,conditionId=1,skillLevel=3,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5031013"]=setmetatable({id=5031013,skillId=5031010,conditionId=1,skillLevel=4,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5031014"]=setmetatable({id=5031014,skillId=5031010,conditionId=1,skillLevel=5,consumeId=0,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5032010"]=setmetatable({id=5032010,skillId=5032010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5033010"]=setmetatable({id=5033010,skillId=5033010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5034010"]=setmetatable({id=5034010,skillId=5034010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5035010"]=setmetatable({id=5035010,skillId=5035010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5041010"]=setmetatable({id=5041010,skillId=5041010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5041020"]=setmetatable({id=5041020,skillId=5041010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5041030"]=setmetatable({id=5041030,skillId=5041010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5042010"]=setmetatable({id=5042010,skillId=5042010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5042020"]=setmetatable({id=5042020,skillId=5042010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5042030"]=setmetatable({id=5042030,skillId=5042010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5043010"]=setmetatable({id=5043010,skillId=5043010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=2,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5043020"]=setmetatable({id=5043020,skillId=5043010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=2,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5043030"]=setmetatable({id=5043030,skillId=5043010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=2,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5044010"]=setmetatable({id=5044010,skillId=5044010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5044020"]=setmetatable({id=5044020,skillId=5044010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5044030"]=setmetatable({id=5044030,skillId=5044010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5045010"]=setmetatable({id=5045010,skillId=5045010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5045020"]=setmetatable({id=5045020,skillId=5045010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5045030"]=setmetatable({id=5045030,skillId=5045010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5051010"]=setmetatable({id=5051010,skillId=5041010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5052010"]=setmetatable({id=5052010,skillId=5042010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5053010"]=setmetatable({id=5053010,skillId=5043010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5054010"]=setmetatable({id=5054010,skillId=5044010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["5055010"]=setmetatable({id=5055010,skillId=5045010,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["99301"]=setmetatable({id=99301,skillId=9930,conditionId=1,skillLevel=1,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["99401"]=setmetatable({id=99401,skillId=9940,conditionId=1,skillLevel=1,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["99402"]=setmetatable({id=99402,skillId=9940,conditionId=1,skillLevel=2,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["99403"]=setmetatable({id=99403,skillId=9940,conditionId=1,skillLevel=3,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["99404"]=setmetatable({id=99404,skillId=9940,conditionId=1,skillLevel=4,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
    ["99405"]=setmetatable({id=99405,skillId=9940,conditionId=1,skillLevel=5,consumeId=9999,skillPower=50,effectiveType=1,destroyType=1,triggerCd=0,triggerNum=9999,valueType={[1]=1,[2]=2,[3]=3}},mt),
}
--生成获取数据的方法
---@return TalentSkillValue
function GetTalentSkillValueData(id)
    return TalentSkillValue_Xls[tostring(id)]
end
--自动生成注释
---@class TalentSkillValue : table 
---@field id number
---@field skillId number
---@field conditionId number
---@field skillLevel number
---@field consumeId number
---@field skillPower number
---@field effectiveType number
---@field destroyType number
---@field triggerCd number
---@field triggerNum number
---@field valueType table
---@field trigger table
---@field result table
