local default = {id=0,name="",icon="",campImage=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderCamp_Xls : table 
LeaderCamp_Xls =
{
    ["1"]=setmetatable({id=1,name="REVO",icon="img_camp_REVO",campImage="img_chouka_REVO"},mt),
    ["2"]=setmetatable({id=2,name="燧明",icon="img_camp_suiming",campImage="img_chouka_suiming"},mt),
    ["10001"]=setmetatable({id=10001,name="瓦哈纳",icon="img_camp_wahana",campImage="img_chouka_wahana"},mt),
    ["10002"]=setmetatable({id=10002,name="阐释工坊",icon="img_camp_chanshigongfang",campImage="img_chouka_chanshigongfang"},mt),
    ["10003"]=setmetatable({id=10003,name="唤冬号角",icon="img_camp_huandonghaojiao",campImage="img_chouka_huandonghaojiao"},mt),
    ["10004"]=setmetatable({id=10004,name="锈蚀银腕",icon="img_camp_xiushiyinwan",campImage="img_chouka_xiushiyinwan"},mt),
    ["10005"]=setmetatable({id=10005,name="南方制造",icon="img_camp_nanfangzhizao",campImage="img_chouka_nanfangzhizao"},mt),
    ["10006"]=setmetatable({id=10006,name="痛梦逻辑",icon="img_camp_tongmengluoji",campImage="img_chouka_tongmengluoji"},mt),
    ["10007"]=setmetatable({id=10007,name="越野社",icon="img_camp_yueyeshe",campImage="img_chouka_yueyeshe"},mt),
    ["10008"]=setmetatable({id=10008,name="快山速运",icon="img_camp_kuaishansuyun",campImage="img_chouka_kuaishansuyun"},mt),
    ["10009"]=setmetatable({id=10009,name="阐释工坊-进化组",icon="img_camp_jinhuajianglin",campImage="img_chouka_jinhuajianglin"},mt),
    ["10010"]=setmetatable({id=10010,name="曙光",icon="img_camp_shuguang",campImage="img_chouka_shuguang"},mt),
    ["10011"]=setmetatable({id=10011,name="快山时报",icon="img_camp_kuaishanshibao",campImage="img_chouka_kuaishanshibao"},mt),
    ["10012"]=setmetatable({id=10012,name="神谕奇点",icon="img_camp_shenyuqidian",campImage="img_chouka_shenyuqidian"},mt),
    ["10013"]=setmetatable({id=10013,name="伊登之实",icon="img_camp_yidengzhishi",campImage="img_chouka_yidengzhishi"},mt),
    ["10014"]=setmetatable({id=10014,name="希格德",icon="img_camp_xigede",campImage="img_chouka_xigede"},mt),
    ["10015"]=setmetatable({id=10015,name="阐释工坊-机工组",icon="img_camp_jigongzu",campImage="img_chouka_jigongzu"},mt),
    ["10016"]=setmetatable({id=10016,name="长子",icon="img_camp_zhangzi",campImage="img_chouka_zhangzi"},mt),
}
--生成获取数据的方法
---@return LeaderCamp
function GetLeaderCampData(id)
    return LeaderCamp_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderCamp : table 
---@field id number
---@field name string
---@field icon string
---@field campImage string
