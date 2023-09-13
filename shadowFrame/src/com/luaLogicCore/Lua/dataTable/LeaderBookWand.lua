local default = {id=0,wandName="",wandWeight=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderBookWand_Xls : table 
LeaderBookWand_Xls =
{
    ["200100102"]=setmetatable({id=200100102,wandName="调停（Intervene）",wandWeight="3.3kg"},mt),
    ["200200102"]=setmetatable({id=200200102,wandName="裁决（Adjudication）",wandWeight="7.6kg"},mt),
    ["200300102"]=setmetatable({id=200300102,wandName="虚妄（Nefelibata）",wandWeight="4.3kg"},mt),
    ["200400102"]=setmetatable({id=200400102,wandName="慈悲（Hand of mercy）",wandWeight="4.6kg"},mt),
    ["200500102"]=setmetatable({id=200500102,wandName="光耀（Brilliance）",wandWeight="4.3kg"},mt),
    ["200600102"]=setmetatable({id=200600102,wandName="营火（Campfire）",wandWeight="5.7kg"},mt),
    ["200700102"]=setmetatable({id=200700102,wandName="瓶（Bottle）",wandWeight="本重3.6kg【负重不限】"},mt),
    ["200800102"]=setmetatable({id=200800102,wandName="荒山（Barren mountain）",wandWeight="6.2KG"},mt),
    ["200900102"]=setmetatable({id=200900102,wandName="凇（Ice bloom）",wandWeight="7.0kg"},mt),
    ["201000102"]=setmetatable({id=201000102,wandName="米勒蒂（Melody）",wandWeight="4.5kg"},mt),
    ["201100102"]=setmetatable({id=201100102,wandName="轻骑兵",wandWeight="4.8kg"},mt),
    ["201200102"]=setmetatable({id=201200102,wandName="驯鹿",wandWeight="4.5kg"},mt),
    ["201300102"]=setmetatable({id=201300102,wandName="象牙塔",wandWeight="3.2KG"},mt),
    ["201400102"]=setmetatable({id=201400102,wandName="赤霄",wandWeight="3.9kg"},mt),
    ["201500102"]=setmetatable({id=201500102,wandName="羽裂菱叶",wandWeight="3.1kg"},mt),
    ["201600102"]=setmetatable({id=201600102,wandName="南冥",wandWeight="3.4kg"},mt),
    ["201700102"]=setmetatable({id=201700102,wandName="迷途者",wandWeight="3.6kg"},mt),
    ["201800102"]=setmetatable({id=201800102,wandName="环世界",wandWeight="5.0kg"},mt),
    ["201900102"]=setmetatable({id=201900102,wandName="蜜蜡",wandWeight="4.1kg"},mt),
    ["202000102"]=setmetatable({id=202000102,wandName="叙事者",wandWeight="3.4kg"},mt),
    ["202100102"]=setmetatable({id=202100102,wandName="金丝绒",wandWeight="3.8kg"},mt),
    ["202200102"]=setmetatable({id=202200102,wandName="野猫",wandWeight="neco"},mt),
    ["202300102"]=setmetatable({id=202300102,wandName="挚爱",wandWeight="5.6kg"},mt),
    ["202400102"]=setmetatable({id=202400102,wandName="千狱",wandWeight="7.8kg"},mt),
    ["202500102"]=setmetatable({id=202500102,wandName="酩酊香氛",wandWeight="5.8kg"},mt),
    ["202600102"]=setmetatable({id=202600102,wandName="幻葬",wandWeight="6.3kg"},mt),
    ["202700102"]=setmetatable({id=202700102,wandName="巢湖",wandWeight="Chaohu"},mt),
    ["202900102"]=setmetatable({id=202900102,wandName="二叶",wandWeight="3.2kg"},mt),
    ["203000102"]=setmetatable({id=203000102,wandName="佐伊德",wandWeight="Zooid"},mt),
    ["203100102"]=setmetatable({id=203100102,wandName="海德",wandWeight="Heidr"},mt),
}
--生成获取数据的方法
---@return LeaderBookWand
function GetLeaderBookWandData(id)
    return LeaderBookWand_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderBookWand : table 
---@field id number
---@field wandName string
---@field wandWeight string
