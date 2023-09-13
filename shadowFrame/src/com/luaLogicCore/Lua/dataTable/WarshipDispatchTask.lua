local default = {id=0,name="",type=0,icon="",description="",time=0,reward=0,region=0,condition=0,priority=0,money=0,price=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipDispatchTask_Xls : table 
WarshipDispatchTask_Xls =
{
    ["1"]=setmetatable({id=1,name="特殊的赚钱技巧Ⅰ",type=1,icon="monster_1000",description="风险与回报并驾齐驱，我们在寻找最强大的驾驭者。",time=240,reward=14010101,region=1,condition=0,priority=10},mt),
    ["2"]=setmetatable({id=2,name="特殊的赚钱技巧Ⅱ",type=1,icon="monster_1040",description="征服凶险的人，必将获得同等的回报。",time=480,reward=14010102,region=1,condition=0,priority=20},mt),
    ["3"]=setmetatable({id=3,name="特殊的赚钱技巧Ⅲ",type=1,icon="monster_2110",description="请帮我取回遗失的书信，它对我而言非常重要。",time=720,reward=14010103,region=1,condition=0,priority=30},mt),
    ["4"]=setmetatable({id=4,name="特殊的赚钱技巧Ⅳ",type=1,icon="monster_2220",description="一支队伍正在靠近，有人愿意去打听他们的来意吗？",time=1200,reward=14010104,region=1,condition=0,priority=40},mt),
    ["5"]=setmetatable({id=5,name="迷蒙之地的宝藏Ⅰ",type=1,icon="monster_2110",description="万物沉寂之地，千帆覆灭之海，埋藏着令无数人趋之若鹜的宝藏。",time=240,reward=14010105,region=2,condition=0,priority=50},mt),
    ["6"]=setmetatable({id=6,name="迷蒙之地的宝藏Ⅱ",type=1,icon="monster_2210",description="这里埋藏着时间，记忆，以及财富。",time=480,reward=14010106,region=2,condition=0,priority=60},mt),
    ["7"]=setmetatable({id=7,name="迷蒙之地的宝藏Ⅲ",type=1,icon="monster_2310",description="颓败的表象之下，隐藏着意料之外的惊喜。",time=720,reward=14010107,region=2,condition=0,priority=70},mt),
    ["8"]=setmetatable({id=8,name="迷蒙之地的宝藏Ⅳ",type=1,icon="monster_2310",description="万物皆在时之河中流转，我们是和它们相遇的幸运儿。",time=1200,reward=14010108,region=2,condition=0,priority=80},mt),
    ["9"]=setmetatable({id=9,name="返航途中的意外Ⅰ",type=1,icon="monster_2150",description="波谲云诡的旅途，每一缕微风中都交织着危险的气息。",time=240,reward=14010109,region=3,condition=0,priority=90},mt),
    ["10"]=setmetatable({id=10,name="返航途中的意外Ⅱ",type=1,icon="monster_2250",description="意外让归途变得遥远，人们的思念变得愈发强烈。",time=480,reward=14010110,region=3,condition=0,priority=100},mt),
    ["11"]=setmetatable({id=11,name="返航途中的意外Ⅲ",type=1,icon="monster_2350",description="未知的区域，我们可能遇到麻烦了。",time=720,reward=14010111,region=3,condition=0,priority=110},mt),
    ["12"]=setmetatable({id=12,name="返航途中的意外Ⅳ",type=1,icon="monster_2350",description="风向瞬息万变，迷航的孤舟在努力找寻着方向......",time=1200,reward=14010112,region=3,condition=0,priority=120},mt),
    ["13"]=setmetatable({id=13,name="未闻之域的传讯Ⅰ",type=1,icon="monster_2120",description="微弱的讯号，来自无人涉足的领域，是陷阱，还是……",time=240,reward=14010113,region=4,condition=0,priority=130},mt),
    ["14"]=setmetatable({id=14,name="未闻之域的传讯Ⅱ",type=1,icon="monster_2220",description="信号中断，位置消失，危险正在逼近。",time=480,reward=14010114,region=4,condition=0,priority=140},mt),
    ["15"]=setmetatable({id=15,name="未闻之域的传讯Ⅲ",type=1,icon="monster_2320",description="温热残阳堆砌的宫殿之下，旧日的盛宴即将开场。",time=720,reward=14010115,region=4,condition=0,priority=150},mt),
    ["16"]=setmetatable({id=16,name="未闻之域的传讯Ⅳ",type=1,icon="monster_2320",description="你们在哪里？为什么只有微弱的声音，却看不见踪影。",time=1200,reward=14010116,region=4,condition=0,priority=160},mt),
}
--生成获取数据的方法
---@return WarshipDispatchTask
function GetWarshipDispatchTaskData(id)
    return WarshipDispatchTask_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipDispatchTask : table 
---@field id number
---@field name string
---@field type number
---@field icon string
---@field description string
---@field time number
---@field reward number
---@field region number
---@field condition number
---@field priority number
---@field money number
---@field price number
