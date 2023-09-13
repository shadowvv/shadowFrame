local default = {id=0,levelId=0,stageLevel=0,battleTypeId=0,levelLocation="",cot=0,userExpReward=0,levelName="",loading=0,preLevel=0,weaponShow=0,weaponRewardId=0,passRewardShow=0,passRewardId=0,battleTimeLimit=0,recommendLevel=0,recommendPower=0,teamType=0,saveTeamType=0,insType=0,indexDes="",levelDes="",powerCost=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponLevel_Xls : table 
WeaponLevel_Xls =
{
    ["486101"]=setmetatable({id=486101,levelId=1030201,stageLevel=1,battleTypeId=1001,levelLocation="UIWorldMap_Sprite_location_battle",cot=3,userExpReward=0,levelName="至暗领域",loading=486101,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=3,recommendPower=486101,teamType=2,saveTeamType=1,insType=101,indexDes="T-W-1",levelDes="它们身上有着这个世界的影子，试图用拙劣的模仿蒙蔽我们的眼睛，它们与这个世界格格不入，剿灭它们，是我们唯一的目的。",powerCost=1},mt),
    ["486102"]=setmetatable({id=486102,levelId=1030202,stageLevel=1,battleTypeId=1002,levelLocation="UIWorldMap_Sprite_location_battle",cot=3,userExpReward=0,levelName="深渊之凝",loading=486102,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=12,recommendPower=486102,teamType=2,saveTeamType=1,insType=101,indexDes="T-W-2",levelDes="漆黑的身影越聚越多，数目庞大的群落嗅到了宝藏的气息，它们愈发贪婪且疯狂，继续前进意味着风险，但没有人甘心就此止步。",powerCost=1},mt),
    ["486103"]=setmetatable({id=486103,levelId=1030202,stageLevel=1,battleTypeId=1003,levelLocation="UIWorldMap_Sprite_location_battle",cot=5,userExpReward=0,levelName="凌空狙击",loading=486103,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=23,recommendPower=486103,teamType=2,saveTeamType=1,insType=101,indexDes="T-W-3",levelDes="加速，加速。向着危险聚集的地方，向着未知的地方，向着英雄和宝藏沉睡的地方。",powerCost=1},mt),
    ["486104"]=setmetatable({id=486104,levelId=1030202,stageLevel=1,battleTypeId=1004,levelLocation="UIWorldMap_Sprite_location_battle",cot=5,userExpReward=0,levelName="极限惩袭",loading=486104,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=33,recommendPower=486104,teamType=2,saveTeamType=1,insType=101,indexDes="T-W-4",levelDes="梦魇盘踞在不属于它们的天空，战火在未知的尺度上燃烧。这里是终点吗？在战斗结束之前，没有人能做出正确的回答。",powerCost=1},mt),
    ["486105"]=setmetatable({id=486105,levelId=3020001,stageLevel=1,battleTypeId=1005,levelLocation="UIWorldMap_Sprite_location_battle",cot=1,userExpReward=0,levelName="冷郁的风暴Ⅰ",loading=486105,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=4,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="T-N-1",levelDes="盘旋在高空的异生体群落，犹如一场难以消散的黑色风暴。就像海鸥聚集的地方，往往代表着食物，或者死亡。这一次，迎接我们的又将是什么呢？",powerCost=1},mt),
    ["486106"]=setmetatable({id=486106,levelId=3020002,stageLevel=1,battleTypeId=1005,levelLocation="UIWorldMap_Sprite_location_battle",cot=1,userExpReward=0,levelName="冷郁的风暴Ⅱ",loading=486106,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=16,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="T-N-2",levelDes="曾几何时，人们认为是异生体漫无目的的移动，引发了区域内的一系列灾害——我们将击溃它们，连同它们留在人们心底的风暴。",powerCost=1},mt),
    ["486107"]=setmetatable({id=486107,levelId=3020003,stageLevel=1,battleTypeId=1005,levelLocation="UIWorldMap_Sprite_location_battle",cot=1,userExpReward=0,levelName="冷郁的风暴Ⅲ",loading=486107,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=19,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="T-N-3",levelDes="沉郁而湿冷的空气，因为战斗的震荡，不断变换着流向，形成一个个难以察觉的风团陷阱。我们在未知的领域中寻找着隐藏的宝藏，这比想象中更加困难。",powerCost=1},mt),
    ["486108"]=setmetatable({id=486108,levelId=3020004,stageLevel=1,battleTypeId=1005,levelLocation="UIWorldMap_Sprite_location_battle",cot=1,userExpReward=0,levelName="冷郁的风暴Ⅳ",loading=486108,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=26,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="T-N-4",levelDes="风中夹杂着无数讯息，死亡，危险，还有希望与重生——这是这个世界仅剩的，近乎严苛的公正，我们来拿回属于我们的东西，夺取属于我们的胜利。",powerCost=1},mt),
    ["486109"]=setmetatable({id=486109,levelId=3020005,stageLevel=1,battleTypeId=1005,levelLocation="UIWorldMap_Sprite_location_battle",cot=1,userExpReward=0,levelName="冷郁的风暴Ⅴ",loading=486109,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=28,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="T-N-5",levelDes="黑色的影子无数次在面前聚集又散开，我们仿佛见证了一天之中，昼夜的无数次交替。在某个短暂的瞬间，我们窥视到了宝藏的所在，那里将是我们此行的终点。",powerCost=1},mt),
    ["486110"]=setmetatable({id=486110,levelId=3020006,stageLevel=1,battleTypeId=1005,levelLocation="UIWorldMap_Sprite_location_battle",cot=1,userExpReward=0,levelName="冷郁的风暴Ⅵ",loading=486110,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=42,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="T-N-6",levelDes="赤色的云霞在涌动，如同血液在激烈流淌，如果在此刻坠落，身体将消失无踪，属于我们的荣耀，长存不灭。",powerCost=1},mt),
    ["486111"]=setmetatable({id=486111,levelId=3020007,stageLevel=1,battleTypeId=1005,levelLocation="UIWorldMap_Sprite_location_battle",cot=1,userExpReward=0,levelName="冷郁的风暴Ⅶ",loading=486111,preLevel=498104,weaponShow=591001,weaponRewardId=9200000,passRewardShow=591001,passRewardId=9200000,battleTimeLimit=300,recommendLevel=45,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="T-N-7",levelDes="伏击，剿灭。飞行的范围一点点缩小，异生体再一次聚集，不过这一次，它们才是笼中的困兽。别犹豫了，给它们送上这致命的一击。",powerCost=1},mt),
}
--生成获取数据的方法
---@return WeaponLevel
function GetWeaponLevelData(id)
    return WeaponLevel_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponLevel : table 
---@field id number
---@field levelId number
---@field stageLevel number
---@field battleTypeId number
---@field levelLocation string
---@field cot number
---@field userExpReward number
---@field levelName string
---@field loading number
---@field preLevel number
---@field weaponShow number
---@field weaponRewardId number
---@field passRewardShow number
---@field passRewardId number
---@field battleTimeLimit number
---@field recommendLevel number
---@field recommendPower number
---@field teamType number
---@field saveTeamType number
---@field insType number
---@field indexDes string
---@field levelDes string
---@field powerCost number
