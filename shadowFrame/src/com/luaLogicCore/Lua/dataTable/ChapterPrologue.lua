local default = {prologueId=0,condition=0,prologueType=0,prologueParameter="",reduction=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ChapterPrologue_Xls : table 
ChapterPrologue_Xls =
{
    ["101001"]=setmetatable({prologueId=101001,condition=0,prologueType=4,prologueParameter="1100011",reduction="1"},mt),
    ["101002"]=setmetatable({prologueId=101002,condition=101001,prologueType=1,prologueParameter="UICreateRole",reduction="0"},mt),
    ["101003"]=setmetatable({prologueId=101003,condition=101002,prologueType=4,prologueParameter="1100012",reduction="1"},mt),
    ["101004"]=setmetatable({prologueId=101004,condition=101003,prologueType=5,prologueParameter="1022",reduction="1"},mt),
    ["101005"]=setmetatable({prologueId=101005,condition=101004,prologueType=2,prologueParameter="99101",reduction="1"},mt),
    ["101006"]=setmetatable({prologueId=101006,condition=101005,prologueType=4,prologueParameter="1100021",reduction="1"},mt),
    ["101007"]=setmetatable({prologueId=101007,condition=101006,prologueType=2,prologueParameter="99102",reduction="1"},mt),
    ["101008"]=setmetatable({prologueId=101008,condition=101007,prologueType=4,prologueParameter="1100022",reduction="1"},mt),
    ["101009"]=setmetatable({prologueId=101009,condition=101008,prologueType=5,prologueParameter="1023",reduction="1"},mt),
    ["101010"]=setmetatable({prologueId=101010,condition=101009,prologueType=4,prologueParameter="1100023",reduction="1"},mt),
    ["101011"]=setmetatable({prologueId=101011,condition=101010,prologueType=5,prologueParameter="1018",reduction="1"},mt),
    ["101012"]=setmetatable({prologueId=101012,condition=101011,prologueType=4,prologueParameter="1100024",reduction="1"},mt),
    ["101013"]=setmetatable({prologueId=101013,condition=101012,prologueType=5,prologueParameter="4",reduction="1"},mt),
    ["101014"]=setmetatable({prologueId=101014,condition=101013,prologueType=1,prologueParameter="UIMain",reduction="0"},mt),
}
--生成获取数据的方法
---@return ChapterPrologue
function GetChapterPrologueData(id)
    return ChapterPrologue_Xls[tostring(id)]
end
--自动生成注释
---@class ChapterPrologue : table 
---@field prologueId number
---@field condition number
---@field prologueType number
---@field prologueParameter string
---@field reduction string
