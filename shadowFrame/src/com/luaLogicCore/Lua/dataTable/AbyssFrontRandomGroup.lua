local default = {id="",belongLevelRange=xlsNilTable,levelGroup=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontRandomGroup_Xls : table 
AbyssFrontRandomGroup_Xls =
{
    ["1"]=setmetatable({id="1",belongLevelRange={[1]=101},levelGroup={[1]=1,[2]=2,[3]=5}},mt),
    ["2"]=setmetatable({id="2",belongLevelRange={[1]=101},levelGroup={[1]=2,[2]=4,[3]=5}},mt),
    ["3"]=setmetatable({id="3",belongLevelRange={[1]=101},levelGroup={[1]=3,[2]=4,[3]=5}},mt),
    ["4"]=setmetatable({id="4",belongLevelRange={[1]=201},levelGroup={[1]=6,[2]=7,[3]=8,[4]=9}},mt),
    ["5"]=setmetatable({id="5",belongLevelRange={[1]=201},levelGroup={[1]=7,[2]=8,[3]=9}},mt),
    ["6"]=setmetatable({id="6",belongLevelRange={[1]=201},levelGroup={[1]=6,[2]=8,[3]=9,[4]=10}},mt),
    ["7"]=setmetatable({id="7",belongLevelRange={[1]=301},levelGroup={[1]=11,[2]=12,[3]=13,[4]=14}},mt),
    ["8"]=setmetatable({id="8",belongLevelRange={[1]=301},levelGroup={[1]=12,[2]=13,[3]=14}},mt),
    ["9"]=setmetatable({id="9",belongLevelRange={[1]=301},levelGroup={[1]=11,[2]=13,[3]=14,[4]=15}},mt),
}
--生成获取数据的方法
---@return AbyssFrontRandomGroup
function GetAbyssFrontRandomGroupData(id)
    return AbyssFrontRandomGroup_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontRandomGroup : table 
---@field id string
---@field belongLevelRange table
---@field levelGroup table
