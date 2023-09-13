local default = {id=0,battleTypeDis="",battlePic=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattleLevelType_Xls : table 
BattleLevelType_Xls =
{
    ["1"]=setmetatable({id=1,battleTypeDis="遭遇战",battlePic="UIWorldMap_Sprite_zaoyu"},mt),
    ["2"]=setmetatable({id=2,battleTypeDis="守护战",battlePic="UIWorldMap_Sprite_shouhu"},mt),
    ["3"]=setmetatable({id=3,battleTypeDis="护送目标",battlePic="UIWorldMap_Sprite_husong"},mt),
    ["4"]=setmetatable({id=4,battleTypeDis="剧情",battlePic="UIWorldMap_Sprite_juqing"},mt),
    ["5"]=setmetatable({id=5,battleTypeDis="boss战",battlePic="UIWorldMap_Sprite_boss"},mt),
    ["6"]=setmetatable({id=6,battleTypeDis="限时类、采集类",battlePic="UIWorldMap_Sprite_teshu"},mt),
    ["7"]=setmetatable({id=7,battleTypeDis="极速飞行",battlePic="UIWorldMap_Sprite_coin"},mt),
    ["101"]=setmetatable({id=101,battleTypeDis="遭遇战",battlePic="UIWorldMap_Sprite_location_battle_icon"},mt),
    ["102"]=setmetatable({id=102,battleTypeDis="首领战",battlePic="UIWorldMap_Sprite_location_battle_icon3"},mt),
    ["1001"]=setmetatable({id=1001,battleTypeDis="突击类宝藏关",battlePic="UIWorldMap_Sprite_tuji"},mt),
    ["1002"]=setmetatable({id=1002,battleTypeDis="重装类宝藏关",battlePic="UIWorldMap_Sprite_zhongzhuang"},mt),
    ["1003"]=setmetatable({id=1003,battleTypeDis="狙击类宝藏关",battlePic="UIWorldMap_Sprite_juji"},mt),
    ["1004"]=setmetatable({id=1004,battleTypeDis="散射类宝藏关",battlePic="UIWorldMap_Sprite_sanshe"},mt),
    ["1005"]=setmetatable({id=1005,battleTypeDis="宝箱类宝藏关",battlePic="UIWorldMap_Sprite_baoxiang"},mt),
    ["1010"]=setmetatable({id=1010,battleTypeDis="挑战关",battlePic="UIWorldMap_Sprite_jiaoxue"},mt),
    ["2001"]=setmetatable({id=2001,battleTypeDis="奈纳角色支线-战斗",battlePic="UIWorldMap_Sprite_naina_battle"},mt),
    ["2002"]=setmetatable({id=2002,battleTypeDis="奈纳角色支线-剧情",battlePic="UIWorldMap_Sprite_naina_story"},mt),
    ["2003"]=setmetatable({id=2003,battleTypeDis="夏洛角色支线-战斗",battlePic="UIWorldMap_Sprite_xialuo_battle"},mt),
    ["2004"]=setmetatable({id=2004,battleTypeDis="夏洛角色支线-剧情",battlePic="UIWorldMap_Sprite_xialuo_story"},mt),
}
--生成获取数据的方法
---@return BattleLevelType
function GetBattleLevelTypeData(id)
    return BattleLevelType_Xls[tostring(id)]
end
--自动生成注释
---@class BattleLevelType : table 
---@field id number
---@field battleTypeDis string
---@field battlePic string
