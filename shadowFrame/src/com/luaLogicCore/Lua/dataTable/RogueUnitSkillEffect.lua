local default = {id=0,effectType=0,params=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RogueUnitSkillEffect_Xls : table 
RogueUnitSkillEffect_Xls =
{
    ["1010100"]=setmetatable({id=1010100,effectType=7,params={[1]=442.0}},mt),
    ["1010101"]=setmetatable({id=1010101,effectType=1,params={[1]=411.0}},mt),
    ["1010102"]=setmetatable({id=1010102,effectType=1,params={[1]=449.0}},mt),
    ["1010200"]=setmetatable({id=1010200,effectType=8,params={[1]=1010102.0}},mt),
    ["1010201"]=setmetatable({id=1010201,effectType=6,params={[1]=1010203.0}},mt),
    ["1010202"]=setmetatable({id=1010202,effectType=6,params={[1]=1010204.0}},mt),
    ["1010203"]=setmetatable({id=1010203,effectType=1,params={[1]=449.0}},mt),
    ["1010204"]=setmetatable({id=1010204,effectType=1,params={[1]=450.0}},mt),
    ["1010205"]=setmetatable({id=1010205,effectType=4,params={[1]=411.0,[2]=20.0}},mt),
    ["1010301"]=setmetatable({id=1010301,effectType=5,params={[1]=1010101.0,[2]=2.0}},mt),
    ["1010401"]=setmetatable({id=1010401,effectType=9,params={[1]=2.0,[2]=451.0}},mt),
    ["1020100"]=setmetatable({id=1020100,effectType=7,params={[1]=443.0}},mt),
    ["1020101"]=setmetatable({id=1020101,effectType=1,params={[1]=446.0}},mt),
    ["1020201"]=setmetatable({id=1020201,effectType=2,params={[1]=10201.0,[2]=1020202.0}},mt),
    ["1020202"]=setmetatable({id=1020202,effectType=1,params={[1]=447.0}},mt),
    ["1020301"]=setmetatable({id=1020301,effectType=6,params={[1]=10203.0}},mt),
    ["1020302"]=setmetatable({id=1020302,effectType=1,params={[1]=310003.0}},mt),
    ["1020401"]=setmetatable({id=1020401,effectType=3,params={[1]=10201.0,[2]=1020101.0,[3]=1020402.0}},mt),
    ["1020402"]=setmetatable({id=1020402,effectType=1,params={[1]=448.0}},mt),
    ["1030100"]=setmetatable({id=1030100,effectType=7,params={[1]=444.0}},mt),
    ["1030101"]=setmetatable({id=1030101,effectType=1,params={[1]=458.0}},mt),
    ["1030201"]=setmetatable({id=1030201,effectType=3,params={[1]=10301.0,[2]=1030101.0,[3]=1030202.0}},mt),
    ["1030202"]=setmetatable({id=1030202,effectType=1,params={[1]=459.0}},mt),
    ["1030301"]=setmetatable({id=1030301,effectType=1,params={[1]=1626033.0}},mt),
    ["1030401"]=setmetatable({id=1030401,effectType=1,params={[1]=452.0}},mt),
    ["1040100"]=setmetatable({id=1040100,effectType=7,params={[1]=445.0}},mt),
    ["1040101"]=setmetatable({id=1040101,effectType=1,params={[1]=453.0}},mt),
    ["1040201"]=setmetatable({id=1040201,effectType=1,params={[1]=455.0}},mt),
    ["1040301"]=setmetatable({id=1040301,effectType=1,params={[1]=456.0}},mt),
    ["1040401"]=setmetatable({id=1040401,effectType=1,params={[1]=457.0}},mt),
}
--生成获取数据的方法
---@return RogueUnitSkillEffect
function GetRogueUnitSkillEffectData(id)
    return RogueUnitSkillEffect_Xls[tostring(id)]
end
--自动生成注释
---@class RogueUnitSkillEffect : table 
---@field id number
---@field effectType number
---@field params table
