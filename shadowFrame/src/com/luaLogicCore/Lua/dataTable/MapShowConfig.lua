---@class MapShowConfig_Xls : table 
MapShowConfig_Xls =
{
    ["1"]={id=1,title="中央舷道",enTitle="A-01 Nibelungen",smallTitle="尼伯赞歌",des="主城首次登录用"},
    ["2"]={id=2,title="遗迹雕像",enTitle="A-01 Nibelungen",smallTitle="尼伯赞歌",des="抽卡timeline用"},
    ["3"]={id=3,title="中央舷道",enTitle="A-01 Nibelungen",smallTitle="尼伯赞歌",des="主城首次登录用"},
    ["4"]={id=4,title="中央舷道",enTitle="A-01 Nibelungen",smallTitle="尼伯赞歌",des="主城首次登录用"},
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
