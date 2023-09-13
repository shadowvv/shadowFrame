local default = {id=0,title="",enTitle="",smallTitle="",des=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MapShowConfig_Xls : table 
MapShowConfig_Xls =
{
    ["1"]=setmetatable({id=1,title="中央舷道",enTitle="A-01 Nibelungen",smallTitle="尼伯赞歌",des="主城首次登录用"},mt),
    ["2"]=setmetatable({id=2,title="遗迹雕像",enTitle="A-01 Nibelungen",smallTitle="尼伯赞歌",des="抽卡timeline用"},mt),
    ["3"]=setmetatable({id=3,title="中央舷道",enTitle="A-01 Nibelungen",smallTitle="尼伯赞歌",des="主城首次登录用"},mt),
    ["4"]=setmetatable({id=4,title="中央舷道",enTitle="A-01 Nibelungen",smallTitle="尼伯赞歌",des="主城首次登录用"},mt),
}
--生成获取数据的方法
---@return MapShowConfig
function GetMapShowConfigData(id)
    return MapShowConfig_Xls[tostring(id)]
end
--自动生成注释
---@class MapShowConfig : table 
---@field id number
---@field title string
---@field enTitle string
---@field smallTitle string
---@field des string
