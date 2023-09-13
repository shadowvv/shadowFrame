local default = {id=0,text=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LevelText_Xls : table 
LevelText_Xls =
{
    ["1"]=setmetatable({id=1,text="高威胁个体预警"},mt),
    ["2"]=setmetatable({id=2,text="Precautious Entities Warning"},mt),
    ["10001"]=setmetatable({id=10001,text="武装过载警告"},mt),
    ["10002"]=setmetatable({id=10002,text="负载重置中"},mt),
    ["20001"]=setmetatable({id=20001,text="方向错误，正在远离任务区域"},mt),
    ["20002"]=setmetatable({id=20002,text="已进入骇尘区域，请尽快远离boss"},mt),
    ["304101"]=setmetatable({id=304101,text="<color=#FFFFFF>火力诱捕\n<color=#B9B9B9>提示：<color=#86FFBD>击破触角</color>避免伤害</color></color>"},mt),
    ["304102"]=setmetatable({id=304102,text="<color=#FFFFFF>异步陷阱\n<color=#B9B9B9>提示：前往<color=#86FFBD>碰触触手光晕</color>可转移标记</color></color>"},mt),
    ["304103"]=setmetatable({id=304103,text="<color=#FFFFFF>猎者吐息\n<color=#B9B9B9>提示：全力<color=#86FFBD>击破蓄能球</color>阻止吐息</color></color>"},mt),
    ["304104"]=setmetatable({id=304104,text="瘫痪状态，全力输出"},mt),
    ["304105"]=setmetatable({id=304105,text="<color=#FFFFFF>火力诱捕\n<color=#B9B9B9>提示：<color=#86FFBD>击破触角</color>避免伤害</color></color>"},mt),
    ["308001"]=setmetatable({id=308001,text="引诱昆汀进入笼子后\n再开启水晶对其进行压制"},mt),
    ["309001"]=setmetatable({id=309001,text="全力输出，击破铵格尔之茧的弱点或部位来中断其技能！"},mt),
    ["309002"]=setmetatable({id=309002,text="虎鲸发起冲撞！击破弱点或引诱其撞击岩石来停止它的攻击！"},mt),
    ["309003"]=setmetatable({id=309003,text="控制头部、双臂的血量\n短时间内同时击破可使铵格尔之茧暴露核心进入瘫痪状态。"},mt),
    ["309004"]=setmetatable({id=309004,text="进入瘫痪状态，全力对核心输出！"},mt),
    ["309005"]=setmetatable({id=309005,text="利用【冻结】控制滞锁极境，再攻击其尾巴弱点！"},mt),
    ["309006"]=setmetatable({id=309006,text="虎鲸即将发起冲撞，请做好准备，寻找岩石。"},mt),
    ["309007"]=setmetatable({id=309007,text="虎鲸眩晕！全力输出！"},mt),
    ["1000304"]=setmetatable({id=1000304,text="全速冲刺，前往目标点"},mt),
    ["1000305"]=setmetatable({id=1000305,text="消灭异生体，解析符文"},mt),
    ["1000306"]=setmetatable({id=1000306,text="小心敌人，前往目标点"},mt),
    ["1000307"]=setmetatable({id=1000307,text="善用元素相变，快速消灭敌人"},mt),
    ["1000308"]=setmetatable({id=1000308,text="全速冲刺，前往目标点"},mt),
    ["1000309"]=setmetatable({id=1000309,text="全速冲刺，前往目标点"},mt),
    ["1000310"]=setmetatable({id=1000310,text="前往目标点，开启门"},mt),
    ["1000312"]=setmetatable({id=1000312,text="锁链变红会灼烧，锁链变紫会沉默"},mt),
    ["10041001"]=setmetatable({id=10041001,text="小心敌人，前往目标点"},mt),
    ["10041002"]=setmetatable({id=10041002,text="小心敌人，前往目标点"},mt),
    ["1010404"]=setmetatable({id=1010404,text="前往目标点，观察记录TEO-17"},mt),
    ["1000502"]=setmetatable({id=1000502,text="小心敌人，前往目标点"},mt),
    ["1000503"]=setmetatable({id=1000503,text="探测波动，前往目标点"},mt),
    ["1000504"]=setmetatable({id=1000504,text="前往光柱，找寻支点"},mt),
    ["1000505"]=setmetatable({id=1000505,text="靠近光柱，收集力量碎片"},mt),
    ["1000506"]=setmetatable({id=1000506,text="小心冰风暴，前往目标点"},mt),
    ["1000509"]=setmetatable({id=1000509,text="小心敌人，前往目标点"},mt),
    ["1010502"]=setmetatable({id=1010502,text="小心敌人，前往目标点"},mt),
    ["1000602"]=setmetatable({id=1000602,text="小心敌人，前往目标点"},mt),
    ["1000603"]=setmetatable({id=1000603,text="小心敌人，前往目标点"},mt),
    ["1000604"]=setmetatable({id=1000604,text="小心敌人，前往目标点"},mt),
    ["1000606"]=setmetatable({id=1000606,text="小心敌人，前往目标点"},mt),
    ["1000710"]=setmetatable({id=1000710,text="击落光环小怪，解除首领状态"},mt),
    ["1000711"]=setmetatable({id=1000711,text="无敌状态解除，请全力输出"},mt),
    ["1010602"]=setmetatable({id=1010602,text="小心敌人，前往目标点"},mt),
    ["1020010"]=setmetatable({id=1020010,text="保护目标不被敌人摧毁！"},mt),
    ["1020020"]=setmetatable({id=1020020,text="敌人即将涌出，准备将其击灭！"},mt),
    ["2040101"]=setmetatable({id=2040101,text="点击左上【境界扭曲】图标，即可查看特殊附加效果，取得战斗优势来进行战斗吧。"},mt),
    ["2070011"]=setmetatable({id=2070011,text="奈纳是法尼娅的最佳帮手，试着掌握雷火元素相变吧！"},mt),
    ["2070021"]=setmetatable({id=2070021,text="蕾的序曲技能可以帮助奈纳打出大量的元素相变"},mt),
    ["2070031"]=setmetatable({id=2070031,text="使用序曲技能攻击被冰霜元素附着的敌人"},mt),
    ["2070041"]=setmetatable({id=2070041,text="使用符能相变可以更容易的触发其他元素相变"},mt),
    ["2070051"]=setmetatable({id=2070051,text="瓦希缇附着元素的能力非常强，多多利用元素相变吧！"},mt),
    ["2070061"]=setmetatable({id=2070061,text="你知道吗，其他斯露德也可以接住娜卡依的回旋镖"},mt),
    ["2070071"]=setmetatable({id=2070071,text="使用符能相变可以更容易的触发其他元素相变"},mt),
    ["2070081"]=setmetatable({id=2070081,text="耶拉可以连续打出风能元素攻击，触发多个元素相变"},mt),
    ["2070091"]=setmetatable({id=2070091,text="蕾的序曲技能可以帮助白打出大量的元素相变"},mt),
    ["2070101"]=setmetatable({id=2070101,text="使用符能相变可以更容易的触发其他元素相变"},mt),
    ["2070111"]=setmetatable({id=2070111,text="利用元素相变，格薇德林能打出更大威力"},mt),
    ["2070121"]=setmetatable({id=2070121,text="护盾可以帮助队友持续作战"},mt),
    ["2070131"]=setmetatable({id=2070131,text="蕾不在场时也能打出风能元素攻击，触发元素相变"},mt),
    ["2070141"]=setmetatable({id=2070141,text="归陌可以为武装附魔，打出火焰元素攻击配合队友"},mt),
    ["2070151"]=setmetatable({id=2070151,text="火焰元素和冰霜元素产生的元素相变，可以降低敌人的护甲"},mt),
    ["2070161"]=setmetatable({id=2070161,text="奈纳是椿的最佳帮手，可以打出大量的元素相变"},mt),
    ["2070171"]=setmetatable({id=2070171,text="珊多拉可以对大量敌人施加冰霜元素附着"},mt),
    ["2070181"]=setmetatable({id=2070181,text="跟上泡芙的节奏释放音波，可以将敌人的攻击全部消除"},mt),
    ["2070191"]=setmetatable({id=2070191,text="安迪可以施加持续的火焰元素附着，试着利用这一点吧"},mt),
    ["2070201"]=setmetatable({id=2070201,text="艾德娜的极奏会使敌人暴露弱点，任意攻击都视为命中弱点"},mt),
    ["2070211"]=setmetatable({id=2070211,text="韦伯擅长清理大量的敌人，只需要普通攻击就够了"},mt),
    ["2070221"]=setmetatable({id=2070221,text="野猫（废弃）"},mt),
    ["2070231"]=setmetatable({id=2070231,text="元素相变可以为麦当然的序曲技能提供强化能量"},mt),
    ["2070241"]=setmetatable({id=2070241,text="奥利的生命值越低战斗力越强"},mt),
    ["2070251"]=setmetatable({id=2070251,text="加利福通过命中敌人的弱点可以使最后一颗子弹提高伤害"},mt),
    ["2070261"]=setmetatable({id=2070261,text="剔骨可以召唤额外的武装来助战"},mt),
    ["3050001"]=setmetatable({id=3050001,text="第{1}波敌人"},mt),
    ["3040001"]=setmetatable({id=3040001,text="第{1}波"},mt),
    ["3040002"]=setmetatable({id=3040002,text="使用极奏技能，开始挑战！"},mt),
}
--生成获取数据的方法
---@return LevelText
function GetLevelTextData(id)
    return LevelText_Xls[tostring(id)]
end
--自动生成注释
---@class LevelText : table 
---@field id number
---@field text string
