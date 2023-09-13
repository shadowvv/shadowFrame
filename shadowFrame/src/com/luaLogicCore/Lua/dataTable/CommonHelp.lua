local default = {id=0,num=0,title="",page=0,word="",pic=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonHelp_Xls : table 
CommonHelp_Xls =
{
    ["1"]=setmetatable({id=1,num=1,title="故事",page=1,word="　　　下一个故事的发生点会以点位的形式标记在地图中。点击点位可查看详情。",pic="help_worldmap_0"},mt),
    ["2"]=setmetatable({id=2,num=1,title="故事",page=2,word="　　　确认信息，准备完毕后，可开始作战前准备。",pic="help_worldmap_1"},mt),
    ["3"]=setmetatable({id=3,num=21,title="详情",page=1,word="　　　想要战胜敌人，就要不断"},mt),
    ["4"]=setmetatable({id=4,num=22,title="训练",page=1,word="　　　训练可提高斯露德属性。突破可开放更高斯露德等级上限和具现等级上限。点击素材图标添加后，点击使用按钮进行升级。",pic="help_thrud_2"},mt),
    ["5"]=setmetatable({id=5,num=23,title="具现",page=1,word="具现：每个斯露德都会有3个具现技能。随着导师等级的提高，可以解锁斯露德的具现等级上限，获得更高的战力。\n序曲技能：角色的普通攻击，不消耗能量，没有冷却时间。\n侵攻技能：角色的主动技能，不消耗能量，会有冷却时间。\n极奏技能：消耗能量才能够释放，同时会进入冷却，角色最强力的技能。\n\n"},mt),
    ["6"]=setmetatable({id=6,num=24,title="位阶",page=1,word="　　　晋升斯露德位阶，可为斯露德增加属性。点击晋升按钮，可晋升斯露德位阶。解锁更高位阶，可以获得额外技能。",pic="help_weijie_1"},mt),
    ["7"]=setmetatable({id=7,num=25,title="武装",page=1,word="　　　武装是斯露德的武器，可为斯露德提供属性与额外技能。点击替换按钮进入替换页，选中武装后点击替换按钮进行替换。",pic="help_weapon_0"},mt),
    ["8"]=setmetatable({id=8,num=25,title="武装",page=2,word="　　　升级武装可以提升属性。点击强化按钮进入强化页，使用自动选择按钮自动选取素材，也可手动选择。",pic="help_weapon_1"},mt),
    ["9"]=setmetatable({id=9,num=26,title="镜像",page=1,word="　　　镜像可提供斯露德大量属性，凑成套装可以提供额外能力。点击镜像部位进入替换页，选中镜像后点击替换按钮进行替换。",pic="help_equip_0"},mt),
    ["10"]=setmetatable({id=10,num=26,title="镜像",page=2,word="　　　升级镜像能提升主属性、提升或添加副属性。点击强化按钮进入强化页，使用自动选择按钮自动选取素材，也可手动选择。",pic="help_equip_1"},mt),
    ["23"]=setmetatable({id=23,num=3,title="编队",page=1,word="　　　点击阵容中的空位可添加新的作战队员。",pic="help_team_0"},mt),
    ["24"]=setmetatable({id=24,num=3,title="编队",page=2,word="　　　可在列表中选择希望出战的斯露德队员。",pic="help_team_1"},mt),
    ["25"]=setmetatable({id=25,num=3,title="编队",page=3,word="　　　点击编入队伍，可让队员正式加入当前阵容。",pic="help_team_2"},mt),
    ["26"]=setmetatable({id=26,num=3,title="编队",page=4,word="　　　一切就绪后，点击作战开始，正式进入战斗。",pic="help_team_3"},mt),
    ["27"]=setmetatable({id=27,num=4,title="回忆模式",page=1,word="　　　回忆模式中可查看已经历过的故事。点击可查看故事详情，可也重新体验。",pic="help_memory_0"},mt),
    ["28"]=setmetatable({id=28,num=4,title="回忆模式",page=2,word="　　　点击此处可在不同故事章节间切换。",pic="help_memory_1"},mt),
    ["29"]=setmetatable({id=29,num=4,title="回忆模式",page=3,word="　　　点击此处可查看此章节的收集奖励，记得及时来领取哦。",pic="help_memory_2"},mt),
    ["30"]=setmetatable({id=30,num=4,title="困难",page=4,word="　　　困难难度开启后，可通过此处切换，困难难度下关卡中的敌人会大幅增强，请小心行事。",pic="help_memory_3"},mt),
    ["31"]=setmetatable({id=31,num=5,title="抽卡",page=1,word="　　　点击查看抽卡概率及历史抽卡记录。"},mt),
    ["32"]=setmetatable({id=32,num=6,title="任务",page=1,word="<color=#53B88E>【每日任务】</color>\n每日任务将在4:00刷新，每项任务完成同时累计一定数量的活跃度，活跃度达到20/40/60/80/100时可以领取活跃度奖励。\n刷新时重置任务进度和活跃度进度，未领取的任务奖励不会补发。\n\n<color=#53B88E>【章节任务】</color>\n完成全部章节任务并领取完全部奖励后，开启下一章节的任务。"},mt),
    ["33"]=setmetatable({id=33,num=7,title="资源",page=1,word="<color=#53B88E>【特种作战】</color>\n强大的怪物撕扯着战线，漫长的战斗中我们终将获得勇气和崭新的力量。\n获得的基础材料分为贡献点数、战斗评估报告、深潜记录3种，通过它们将极大的提高斯露德的训练效率；\n另外更高等级的材料可以获得更好的训练效果，请导师尽可能的获取最好的材料吧。\n\n<color=#53B88E>【万物醒转】</color>\n万物之理于此苏醒，自然的意志凝结成灾害天象。“灾厄即是吾辈的力量。”这是来自指挥塔的训诫。\n可以获得斯露德训练突破阶段时，所需的必要材料醒转晶体；\n注意醒转晶体分为多种元素属性，请针对每位斯露德的不同需求选择不同的晶体；\n在战斗前请一定确认好适合的元素类型，熟练使用元素反应是清扫异生体的关键。\n\n<color=#53B88E>【合金危机】</color>\n不同的装备能够应对不同的战场，一切作战资料都将被记录下来，成为进一步开发武装的宝贵资料。\n成功击败异生体后，可以获得高熵合金和解构端口，它们可以用于武装的升级和突破。\n\n<color=#53B88E>【空之回响】</color>\n斯露德们各自的思念与记忆随着源能海的涟漪被刻录在异生体的体内。这些蕴藏着心灵能量的战利品，将让我们更加强大……也更加复杂。\n在战斗前请一定确认好适合的元素类型，熟练使用元素反应是清扫异生体的关键；\n胜利后有几率获得稀有的镜像。"},mt),
    ["34"]=setmetatable({id=34,num=34,title="交界虚空",page=1,word="<color=#53B88E>【交界虚空】</color>\n等文创\n\n【连续深入】\n交界虚空中，每一处区域由3轮挑战组成，每个挑战战斗结束后选择“继续深入”可进行下一挑战。连续深入的过程中不可以更换编队成员。\n每个挑战都可获取固定的协议酬劳奖励，3轮挑战全部通关后才可进入下一处区域。\n\n【扭曲与律令】\n斯露德出发时会受到“深空律令”的正面效果，在每个区域都会持续起效。\n另外每一区域虚空扭曲的情况各不相同，被称为“境界扭曲”，扭曲会对场上的斯露德造成各种正面或负面效果。请编队时一定认真考虑此效果再决定编队成员\n\n【象限】\n在虚空最深处的区域，挑战会分散在正负两个象限中，需要派遣两只斯露德小队分别挑战，两队全都成功时才可获取协议酬劳。"},mt),
}
--生成获取数据的方法
---@return CommonHelp
function GetCommonHelpData(id)
    return CommonHelp_Xls[tostring(id)]
end
--自动生成注释
---@class CommonHelp : table 
---@field id number
---@field num number
---@field title string
---@field page number
---@field word string
---@field pic string
