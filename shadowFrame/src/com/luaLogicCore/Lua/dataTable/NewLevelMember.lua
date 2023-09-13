local default = {id=0,group=0,classify=0,member1=xlsNilTable,member2=xlsNilTable,member3=xlsNilTable,member4=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class NewLevelMember_Xls : table 
NewLevelMember_Xls =
{
    ["1"]=setmetatable({id=1,group=1,classify=1,member1={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member2={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member3={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member4={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0}},mt),
    ["2"]=setmetatable({id=2,group=1,classify=2,member1={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member2={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member3={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member4={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0}},mt),
    ["3"]=setmetatable({id=3,group=1,classify=3,member1={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member2={[1]=1.5,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member3={[1]=2.25,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member4={[1]=4.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0}},mt),
    ["4"]=setmetatable({id=4,group=1,classify=4,member1={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member2={[1]=2.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member3={[1]=3.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},member4={[1]=4.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0}},mt),
}
--生成获取数据的方法
---@return NewLevelMember
function GetNewLevelMemberData(id)
    return NewLevelMember_Xls[tostring(id)]
end
--自动生成注释
---@class NewLevelMember : table 
---@field id number
---@field group number
---@field classify number
---@field member1 table
---@field member2 table
---@field member3 table
---@field member4 table
