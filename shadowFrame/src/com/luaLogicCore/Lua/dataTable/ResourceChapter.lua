local default = {id=0,chapterName="",enterImg="",levelId1=0,conditionId1=xlsNilTable,levelId2=0,conditionId2=xlsNilTable,levelId3=0,conditionId3=xlsNilTable,levelId4=0,conditionId4=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ResourceChapter_Xls : table 
ResourceChapter_Xls =
{
    ["301100"]=setmetatable({id=301100,chapterName="物流委托",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=301101,conditionId1={[1]=101},levelId2=301102,conditionId2={[1]=102},levelId3=301103,conditionId3={[1]=103}},mt),
    ["302100"]=setmetatable({id=302100,chapterName="实战演练",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=302101,conditionId1={[1]=101},levelId2=302102,conditionId2={[1]=102},levelId3=302103,conditionId3={[1]=103}},mt),
    ["303100"]=setmetatable({id=303100,chapterName="调律演练",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=303101,conditionId1={[1]=101},levelId2=303102,conditionId2={[1]=102},levelId3=303103,conditionId3={[1]=103}},mt),
    ["304100"]=setmetatable({id=304100,chapterName="突击行动",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=304101,conditionId1={[1]=101},levelId2=304102,conditionId2={[1]=102},levelId3=304103,conditionId3={[1]=103}},mt),
    ["305100"]=setmetatable({id=305100,chapterName="重装打击",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=305101,conditionId1={[1]=101},levelId2=305102,conditionId2={[1]=102},levelId3=305103,conditionId3={[1]=103}},mt),
    ["306100"]=setmetatable({id=306100,chapterName="散射实验",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=306101,conditionId1={[1]=101},levelId2=306102,conditionId2={[1]=102},levelId3=306103,conditionId3={[1]=103}},mt),
    ["307100"]=setmetatable({id=307100,chapterName="单点狙击",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=307101,conditionId1={[1]=101},levelId2=307102,conditionId2={[1]=102},levelId3=307103,conditionId3={[1]=103}},mt),
    ["308100"]=setmetatable({id=308100,chapterName="火元素ε",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=308101,conditionId1={[1]=101},levelId2=308102,conditionId2={[1]=102},levelId3=308103,conditionId3={[1]=103}},mt),
    ["309100"]=setmetatable({id=309100,chapterName="风元素ζ",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=309101,conditionId1={[1]=101},levelId2=309102,conditionId2={[1]=102},levelId3=309103,conditionId3={[1]=103}},mt),
    ["310100"]=setmetatable({id=310100,chapterName="雷元素η",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=310101,conditionId1={[1]=101},levelId2=310102,conditionId2={[1]=102},levelId3=310103,conditionId3={[1]=103}},mt),
}
--生成获取数据的方法
---@return ResourceChapter
function GetResourceChapterData(id)
    return ResourceChapter_Xls[tostring(id)]
end
--自动生成注释
---@class ResourceChapter : table 
---@field id number
---@field chapterName string
---@field enterImg string
---@field levelId1 number
---@field conditionId1 table
---@field levelId2 number
---@field conditionId2 table
---@field levelId3 number
---@field conditionId3 table
---@field levelId4 number
---@field conditionId4 table
