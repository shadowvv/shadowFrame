---@class BattlePower_Xls : table 
BattlePower_Xls =
{
    ["100"]={number=100,beiZhu="总血量",powerWeight=0.1},
    ["101"]={number=101,beiZhu="攻击",powerWeight=1.2},
    ["102"]={number=102,beiZhu="防御",powerWeight=0.7},
    ["103"]={number=103,beiZhu="能量",powerWeight=0.5},
    ["104"]={number=104,beiZhu="暴击",powerWeight=0.5},
    ["200"]={number=200,beiZhu="暴伤加值",powerWeight=24.0},
    ["201"]={number=201,beiZhu="暴击率加值",powerWeight=25.0},
    ["202"]={number=202,beiZhu="能量系数加值",powerWeight=6.5},
    ["203"]={number=203,beiZhu="治疗加值",powerWeight=16.0},
    ["217"]={number=217,beiZhu="极奏能量获取效率",powerWeight=2.4},
    ["311"]={number=311,beiZhu="物理增伤率",powerWeight=6.0},
    ["312"]={number=312,beiZhu="物理反增伤率",powerWeight=21.5},
    ["313"]={number=313,beiZhu="物理减伤率",powerWeight=21.5},
    ["314"]={number=314,beiZhu="物理反减伤率",powerWeight=6.0},
    ["301"]={number=301,beiZhu="通用元素伤害加成",powerWeight=6.0},
    ["302"]={number=302,beiZhu="通用反元素伤害加成",powerWeight=21.5},
    ["303"]={number=303,beiZhu="通用元素伤害抗性",powerWeight=21.5},
    ["304"]={number=304,beiZhu="通用反元素伤害抗性",powerWeight=6.0},
    ["321"]={number=321,beiZhu="火元素伤害加成",powerWeight=6.0},
    ["322"]={number=322,beiZhu="火反元素伤害加成",powerWeight=21.5},
    ["323"]={number=323,beiZhu="火元素伤害抗性",powerWeight=21.5},
    ["324"]={number=324,beiZhu="火反元素伤害抗性",powerWeight=6.0},
    ["331"]={number=331,beiZhu="雷元素伤害加成",powerWeight=6.0},
    ["332"]={number=332,beiZhu="雷反元素伤害加成",powerWeight=21.5},
    ["333"]={number=333,beiZhu="雷元素伤害抗性",powerWeight=21.5},
    ["334"]={number=334,beiZhu="雷反元素伤害抗性",powerWeight=6.0},
    ["341"]={number=341,beiZhu="冰元素伤害加成",powerWeight=6.0},
    ["342"]={number=342,beiZhu="冰反元素伤害加成",powerWeight=21.5},
    ["343"]={number=343,beiZhu="冰元素伤害抗性",powerWeight=21.5},
    ["344"]={number=344,beiZhu="冰反元素伤害抗性",powerWeight=6.0},
    ["351"]={number=351,beiZhu="风元素伤害加成",powerWeight=6.0},
    ["352"]={number=352,beiZhu="风反元素伤害加成",powerWeight=21.5},
    ["353"]={number=353,beiZhu="风元素伤害抗性",powerWeight=21.5},
    ["354"]={number=354,beiZhu="风反元素伤害抗性",powerWeight=6.0},
    ["361"]={number=361,beiZhu="源能元素伤害加成",powerWeight=6.0},
    ["362"]={number=362,beiZhu="源能反元素伤害加成",powerWeight=21.5},
    ["363"]={number=363,beiZhu="源能元素伤害抗性",powerWeight=21.5},
    ["364"]={number=364,beiZhu="源能反元素伤害抗性",powerWeight=6.0},
    ["371"]={number=371,beiZhu="重力元素伤害加成",powerWeight=6.0},
    ["372"]={number=372,beiZhu="重力反元素伤害加成",powerWeight=21.5},
    ["373"]={number=373,beiZhu="重力元素伤害抗性",powerWeight=21.5},
    ["374"]={number=374,beiZhu="重力反元素伤害抗性",powerWeight=6.0},
}
--生成获取数据的方法
---@return BattlePower
function GetBattlePowerData(id)
    return BattlePower_Xls[tostring(id)]
end
--自动生成注释
---@class BattlePower : table 
---@field number number
---@field beiZhu string
---@field powerWeight number
