local default = {monsterSeniorAttributeId=0,weaknessElementType=xlsNilTable,valueType=xlsNilTable,value=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MonsterSeniorAttribute_Xls : table 
MonsterSeniorAttribute_Xls =
{
    ["999999"]=setmetatable({monsterSeniorAttributeId=999999,weaknessElementType=xlsNilTable,valueType={[1]=301,[2]=303,[3]=311,[4]=313,[5]=321,[6]=323,[7]=331,[8]=333,[9]=341,[10]=343},value={[1]=0.0,[2]=0.0,[3]=0.0,[4]=0.0,[5]=0.0,[6]=0.0,[7]=0.0,[8]=0.0,[9]=0.0,[10]=0.0}},mt),
    ["1001"]=setmetatable({monsterSeniorAttributeId=1001,weaknessElementType={[1]=2},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=-0.5,[2]=0.0,[3]=0.0,[4]=0.0,[5]=-0.3,[6]=0.0,[7]=0.0,[8]=0.0}},mt),
    ["1002"]=setmetatable({monsterSeniorAttributeId=1002,weaknessElementType={[1]=3},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=-0.5,[3]=0.0,[4]=0.0,[5]=0.0,[6]=-0.3,[7]=0.0,[8]=0.0}},mt),
    ["1003"]=setmetatable({monsterSeniorAttributeId=1003,weaknessElementType={[1]=5},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=0.0,[3]=-0.5,[4]=0.0,[5]=0.0,[6]=0.0,[7]=-0.3,[8]=0.0}},mt),
    ["1004"]=setmetatable({monsterSeniorAttributeId=1004,weaknessElementType={[1]=4},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=0.0,[3]=0.0,[4]=-0.5,[5]=0.0,[6]=0.0,[7]=0.0,[8]=-0.3}},mt),
    ["2001"]=setmetatable({monsterSeniorAttributeId=2001,weaknessElementType={[1]=2},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=-0.5,[2]=0.0,[3]=0.0,[4]=0.0,[5]=-0.2,[6]=0.0,[7]=0.0,[8]=0.0}},mt),
    ["2002"]=setmetatable({monsterSeniorAttributeId=2002,weaknessElementType={[1]=3},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=-0.5,[3]=0.0,[4]=0.0,[5]=0.0,[6]=-0.2,[7]=0.0,[8]=0.0}},mt),
    ["2003"]=setmetatable({monsterSeniorAttributeId=2003,weaknessElementType={[1]=5},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=0.0,[3]=-0.5,[4]=0.0,[5]=0.0,[6]=0.0,[7]=-0.2,[8]=0.0}},mt),
    ["2004"]=setmetatable({monsterSeniorAttributeId=2004,weaknessElementType={[1]=4},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=0.0,[3]=0.0,[4]=-0.5,[5]=0.0,[6]=0.0,[7]=0.0,[8]=-0.2}},mt),
    ["3001"]=setmetatable({monsterSeniorAttributeId=3001,weaknessElementType={[1]=2},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=-0.25,[2]=0.0,[3]=0.0,[4]=0.0,[5]=-0.2,[6]=0.0,[7]=0.0,[8]=0.0}},mt),
    ["3002"]=setmetatable({monsterSeniorAttributeId=3002,weaknessElementType={[1]=3},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=-0.25,[3]=0.0,[4]=0.0,[5]=0.0,[6]=-0.2,[7]=0.0,[8]=0.0}},mt),
    ["3003"]=setmetatable({monsterSeniorAttributeId=3003,weaknessElementType={[1]=5},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=0.0,[3]=-0.25,[4]=0.0,[5]=0.0,[6]=0.0,[7]=-0.2,[8]=0.0}},mt),
    ["3004"]=setmetatable({monsterSeniorAttributeId=3004,weaknessElementType={[1]=4},valueType={[1]=326,[2]=336,[3]=356,[4]=346,[5]=322,[6]=332,[7]=352,[8]=342},value={[1]=0.0,[2]=0.0,[3]=0.0,[4]=-0.25,[5]=0.0,[6]=0.0,[7]=0.0,[8]=-0.2}},mt),
}
--生成获取数据的方法
---@return MonsterSeniorAttribute
function GetMonsterSeniorAttributeData(id)
    return MonsterSeniorAttribute_Xls[tostring(id)]
end
--自动生成注释
---@class MonsterSeniorAttribute : table 
---@field monsterSeniorAttributeId number
---@field weaknessElementType table
---@field valueType table
---@field value table
