local default = {id=0,rangeName="",levelRange=xlsNilTable,rangIcon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontLevelRange_Xls : table 
AbyssFrontLevelRange_Xls =
{
    ["101"]=setmetatable({id=101,rangeName="资深组",levelRange={[1]=1,[2]=40},rangIcon="icon_bossbattle_rank_1"},mt),
    ["201"]=setmetatable({id=201,rangeName="专家组",levelRange={[1]=41,[2]=60},rangIcon="icon_bossbattle_rank_2"},mt),
    ["301"]=setmetatable({id=301,rangeName="传奇组",levelRange={[1]=61,[2]=80},rangIcon="icon_bossbattle_rank_3"},mt),
}
--生成获取数据的方法
---@return AbyssFrontLevelRange
function GetAbyssFrontLevelRangeData(id)
    return AbyssFrontLevelRange_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontLevelRange : table 
---@field id number
---@field rangeName string
---@field levelRange table
---@field rangIcon string
