local default = {id=0,tabName="",tabPicture="",classifyTab=0,classifyName="",classifyPicture="",classifyPictureWoman="",classifyStory="",classifyTypeId=0,classifyChapterPlace=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CollectionClassify_Xls : table 
CollectionClassify_Xls =
{
    ["11"]=setmetatable({id=11,tabName="·怪物图鉴·",tabPicture="UIHandbook_gw",classifyTab=4,classifyName="小型异生体",classifyPicture="monster_small",classifyPictureWoman="monster_small",classifyStory="",classifyTypeId=1},mt),
    ["12"]=setmetatable({id=12,tabName="·怪物图鉴·",tabPicture="UIHandbook_gw",classifyTab=4,classifyName="中型异生体",classifyPicture="monster_middle",classifyPictureWoman="monster_middle",classifyStory="",classifyTypeId=2},mt),
    ["13"]=setmetatable({id=13,tabName="·怪物图鉴·",tabPicture="UIHandbook_gw",classifyTab=4,classifyName="大型异生体",classifyPicture="monster_boss",classifyPictureWoman="monster_boss",classifyStory="",classifyTypeId=3},mt),
    ["21"]=setmetatable({id=21,tabName="·武装图鉴·",tabPicture="UIHandbook_wz",classifyTab=2,classifyName="突击型",classifyPicture="weapon_1gechang",classifyPictureWoman="weapon_1gechang",classifyStory="",classifyTypeId=1},mt),
    ["22"]=setmetatable({id=22,tabName="·武装图鉴·",tabPicture="UIHandbook_wz",classifyTab=2,classifyName="龙骑兵",classifyPicture="weapon_1gechang",classifyPictureWoman="weapon_1gechang",classifyStory="",classifyTypeId=2},mt),
    ["23"]=setmetatable({id=23,tabName="·武装图鉴·",tabPicture="UIHandbook_wz",classifyTab=2,classifyName="狙击型",classifyPicture="weapon_1gechang",classifyPictureWoman="weapon_1gechang",classifyStory="",classifyTypeId=3},mt),
    ["24"]=setmetatable({id=24,tabName="·武装图鉴·",tabPicture="UIHandbook_wz",classifyTab=2,classifyName="重装型",classifyPicture="weapon_1gechang",classifyPictureWoman="weapon_1gechang",classifyStory="",classifyTypeId=4},mt),
    ["25"]=setmetatable({id=25,tabName="·武装图鉴·",tabPicture="UIHandbook_wz",classifyTab=2,classifyName="散射型",classifyPicture="weapon_1gechang",classifyPictureWoman="weapon_1gechang",classifyStory="",classifyTypeId=5},mt),
    ["40"]=setmetatable({id=40,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="序章",classifyPicture="UIHandbook_0",classifyPictureWoman="UIHandbook_0",classifyStory="这是我们旅程中的一幕，却也是一切改变的契机。湛蓝的天空中，神秘的舰船上，危机同时来袭。",classifyTypeId=99,classifyChapterPlace="温德兰德"},mt),
    ["41"]=setmetatable({id=41,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="剧情第一章",classifyPicture="UIHandbook_1_man",classifyPictureWoman="UIHandbook_1_woman",classifyStory="因为一次意外的相遇，几个人命运联系到了一起。",classifyTypeId=101,classifyChapterPlace="温德兰德"},mt),
    ["42"]=setmetatable({id=42,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="剧情第二章",classifyPicture="UIHandbook_2",classifyPictureWoman="UIHandbook_2",classifyStory="被巨大遗迹笼罩的城市，异生体再度复苏。博学的驻地斯露德——瓦希缇将助瓦哈纳一臂之力，拯救这座城市。",classifyTypeId=102,classifyChapterPlace="波伽兰德"},mt),
    ["43"]=setmetatable({id=43,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="剧情第三章",classifyPicture="UIHandbook_3",classifyPictureWoman="UIHandbook_3",classifyStory="瓦哈纳接到REVO的紧急指派：与【阐释工坊】的专家们合作取回深藏于某处遗迹内的神秘文物。REVO为何要突然抽调人力去进行考古工作？",classifyTypeId=103,classifyChapterPlace="铵格尔会议庭遗迹"},mt),
    ["44"]=setmetatable({id=44,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="剧情第四章",classifyPicture="UIHandbook_4",classifyPictureWoman="UIHandbook_4",classifyStory="瓦哈纳小队在风雪交加的拉普兰地区前行任务点，却突然收到了不符合常理的求救信号。最终，众人决定前往名为【奥拉菲斯伯格】的地点进行援助……",classifyTypeId=104,classifyChapterPlace="奥拉菲斯伯格"},mt),
    ["45"]=setmetatable({id=45,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="剧情第五章",classifyPicture="UIHandbook_5",classifyPictureWoman="UIHandbook_5",classifyStory="【蛇】体内的奇景隐藏着深深的危机，神秘少女的最终目的究竟是什么？监视者小队【锈蚀银腕】又将在其中做出怎样的选择？",classifyTypeId=105,classifyChapterPlace="奥拉菲斯伯格"},mt),
    ["46"]=setmetatable({id=46,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="剧情第六章",classifyPicture="UIHandbook_6",classifyPictureWoman="UIHandbook_6",classifyStory="【南方制造】小队一行人来到沙漠中的聚居地【坎拉玛】，调查稀世传说之物——涅石，从而踏入了一个巨大的阴谋旋涡。",classifyTypeId=106,classifyChapterPlace="坎拉玛"},mt),
    ["47"]=setmetatable({id=47,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="剧情第七章",classifyPicture="UIHandbook_7",classifyPictureWoman="UIHandbook_7",classifyStory="坎拉玛城主的求救信号，黑市的神秘机器，【南方制造】的分裂与背叛……导师是否能解决这场危机？【你】与【我】，是否还能成为【我们】？",classifyTypeId=107,classifyChapterPlace="坎拉玛"},mt),
    ["48"]=setmetatable({id=48,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="剧情第八章",classifyPicture="UIHandbook_8",classifyPictureWoman="UIHandbook_8",classifyStory="诡异的预言再次降临于混沌的漩涡，那“真正的敌人”究竟是谁？是叛徒？是长子？是人心难测？还是某些依附于光明生长的黑暗……",classifyTypeId=108,classifyChapterPlace="温德兰德"},mt),
    ["49"]=setmetatable({id=49,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="S1A1-深空歧梦",classifyPicture="UIHandbook_S_1_A_1",classifyPictureWoman="UIHandbook_S_1_A_1",classifyStory="什么是梦境，什么是异空。\n危机降临，与新伙伴一起登场的，除了埋藏在心底的沉疴，还有我们一直未曾关注的隐秘。\n当梦与真实的联系被揭开，我们可触及到的，是真相，亦或是深渊……",classifyTypeId=800,classifyChapterPlace="梦境空间"},mt),
    ["50"]=setmetatable({id=50,tabName="·剧情图鉴·",tabPicture="UIHandbook_jq",classifyTab=1,classifyName="S1A2-金色梦乡",classifyPicture="UI_S1E2_Main_Bg_2",classifyPictureWoman="UI_S1E2_Main_Bg_2",classifyStory="对梦境的探索还未停止，又出现了意外的情况，重叠的梦境到底发生了什么故事？这充满梦幻与天真的梦境出口又在哪里？",classifyTypeId=801,classifyChapterPlace="梦境空间"},mt),
}
--生成获取数据的方法
---@return CollectionClassify
function GetCollectionClassifyData(id)
    return CollectionClassify_Xls[tostring(id)]
end
--自动生成注释
---@class CollectionClassify : table 
---@field id number
---@field tabName string
---@field tabPicture string
---@field classifyTab number
---@field classifyName string
---@field classifyPicture string
---@field classifyPictureWoman string
---@field classifyStory string
---@field classifyTypeId number
---@field classifyChapterPlace string
