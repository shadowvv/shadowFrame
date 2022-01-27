---@class ResourceChapter_Xls : table 
ResourceChapter_Xls =
{
    ["301100"]={id=301100,chapterName="物流委托",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=301101,conditionId1={[1]=101},levelId2=301102,conditionId2={[1]=102},levelId3=301103,conditionId3={[1]=103}},
    ["302100"]={id=302100,chapterName="实战演练",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=302101,conditionId1={[1]=101},levelId2=302102,conditionId2={[1]=102},levelId3=302103,conditionId3={[1]=103}},
    ["303100"]={id=303100,chapterName="调律演练",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=303101,conditionId1={[1]=101},levelId2=303102,conditionId2={[1]=102},levelId3=303103,conditionId3={[1]=103}},
    ["304100"]={id=304100,chapterName="突击行动",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=304101,conditionId1={[1]=101},levelId2=304102,conditionId2={[1]=102},levelId3=304103,conditionId3={[1]=103}},
    ["305100"]={id=305100,chapterName="重装打击",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=305101,conditionId1={[1]=101},levelId2=305102,conditionId2={[1]=102},levelId3=305103,conditionId3={[1]=103}},
    ["306100"]={id=306100,chapterName="散射实验",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=306101,conditionId1={[1]=101},levelId2=306102,conditionId2={[1]=102},levelId3=306103,conditionId3={[1]=103}},
    ["307100"]={id=307100,chapterName="单点狙击",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=307101,conditionId1={[1]=101},levelId2=307102,conditionId2={[1]=102},levelId3=307103,conditionId3={[1]=103}},
    ["308100"]={id=308100,chapterName="火元素ε",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=308101,conditionId1={[1]=101},levelId2=308102,conditionId2={[1]=102},levelId3=308103,conditionId3={[1]=103}},
    ["309100"]={id=309100,chapterName="风元素ζ",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=309101,conditionId1={[1]=101},levelId2=309102,conditionId2={[1]=102},levelId3=309103,conditionId3={[1]=103}},
    ["310100"]={id=310100,chapterName="雷元素η",enterImg="texture/BigMap/ResourceLevel/map_reslv_bg_1",levelId1=310101,conditionId1={[1]=101},levelId2=310102,conditionId2={[1]=102},levelId3=310103,conditionId3={[1]=103}},
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
