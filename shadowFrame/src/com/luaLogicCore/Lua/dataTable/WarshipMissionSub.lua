local default = {id=0,desc="",name="",objectivedesc="",missionId=0,step=0,interactIcon="",interactName="",objective=0,objectiveEnd=0,objectiveSceneId=0,reward=0,jumpId=0,onBeginStory=0,onBeginStoryRelink=0,onBegin1=0,onBeginParam1="",onBegin2=0,onBeginParam2="",onEndStory=0,onEndStoryRelink=0,onEnd1=0,onEndParam1="",onEnd2=0,onEndParam2=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipMissionSub_Xls : table 
WarshipMissionSub_Xls =
{
    ["1001001"]=setmetatable({id=1001001,desc="传奇的故事都有传奇的开始",name="目标在前",objectivedesc="获得道具",missionId=1001,step=1,interactIcon="warship_xuanxiangtb2",interactName="获得道具",objective=1004,objectiveEnd=10,objectiveSceneId=0,reward=0,jumpId=0,onBeginStory=0,onBeginStoryRelink=0,onBegin1=101,onBeginParam1="1030012#10",onBegin2=5,onBeginParam2="10012",onEndStory=0,onEndStoryRelink=0,onEnd1=1,onEndParam1="1030012#10"},mt),
    ["1001002"]=setmetatable({id=1001002,desc="传奇的故事都有传奇的开始",name="成为工具人",objectivedesc="去到指定地点",missionId=1001,step=2,interactIcon="warship_xuanxiangtb2",interactName="去到指定地点",objective=1005,objectiveEnd=0,objectiveSceneId=0,reward=0,jumpId=0,onBeginStory=0,onBeginStoryRelink=0,onBegin1=3,onBeginParam1="",onBegin2=102,onBeginParam2="1030011#10",onEndStory=0,onEndStoryRelink=0,onEnd1=4,onEndParam1="1"},mt),
    ["1001003"]=setmetatable({id=1001003,desc="传奇的故事都有传奇的开始",name="无用的社交",objectivedesc="跟npc对话",missionId=1001,step=3,interactIcon="warship_xuanxiangtb2",interactName="跟npc对话",objective=1006,objectiveEnd=0,objectiveSceneId=1,reward=0,jumpId=0,onBeginStory=0,onBeginStoryRelink=0,onBegin1=2,onBeginParam1="1030011#10",onBegin2=0,onBeginParam2="",onEndStory=0,onEndStoryRelink=0,onEnd1=3},mt),
    ["1002001"]=setmetatable({id=1002001,desc="传奇的故事都有传奇的开始",name="曾经拥有",objectivedesc="跟npc对话",missionId=1002,step=1,interactIcon="warship_xuanxiangtb2",interactName="跟npc对话",objective=1007,objectiveEnd=0,objectiveSceneId=1,reward=0,jumpId=0,onBeginStory=0,onBeginStoryRelink=0,onBegin1=4,onBeginParam1="1"},mt),
    ["1003001"]=setmetatable({id=1003001,desc="传奇的故事都有传奇的开始",name="战神",objectivedesc="通关关卡",missionId=1003,step=1,interactIcon="warship_xuanxiangtb2",interactName="通关关卡",objective=1008,objectiveEnd=1,objectiveSceneId=0,reward=0,jumpId=0,onBeginStory=0,onBeginStoryRelink=0,onBegin1=5,onBeginParam1="10012"},mt),
    ["1004001"]=setmetatable({id=1004001,desc="传奇的故事都有传奇的开始",name="接到了就是有bug",objectivedesc="没在用",missionId=1004,step=1,interactIcon="warship_xuanxiangtb2",interactName="没在用",objective=1007},mt),
    ["1005001"]=setmetatable({id=1005001,desc="传奇故事的第1步",name="奈纳在哪里",objectivedesc="找奈纳对话",missionId=1005,step=1,interactIcon="warship_xuanxiangtb2",interactName="你好",objective=1005001,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005002"]=setmetatable({id=1005002,desc="传奇故事的第2步",name="夏洛在哪里",objectivedesc="找夏洛对话",missionId=1005,step=2,interactIcon="warship_xuanxiangtb2",interactName="再见",objective=1005002,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005003"]=setmetatable({id=1005003,desc="传奇故事的第3步",name="法尼娅在哪里",objectivedesc="找法尼娅对话",missionId=1005,step=3,interactIcon="warship_xuanxiangtb2",interactName="看那边",objective=1005003,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005004"]=setmetatable({id=1005004,desc="传奇故事的第4步",name="奈纳在哪里",objectivedesc="找奈纳对话",missionId=1005,step=4,interactIcon="warship_xuanxiangtb2",interactName="你好",objective=1005004,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005005"]=setmetatable({id=1005005,desc="传奇故事的第5步",name="夏洛在哪里",objectivedesc="找夏洛对话",missionId=1005,step=5,interactIcon="warship_xuanxiangtb2",interactName="再见",objective=1005005,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005006"]=setmetatable({id=1005006,desc="传奇故事的第6步",name="法尼娅在哪里",objectivedesc="找法尼娅对话",missionId=1005,step=6,interactIcon="warship_xuanxiangtb2",interactName="看那边",objective=1005006,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005007"]=setmetatable({id=1005007,desc="传奇故事的第7步",name="奈纳在哪里",objectivedesc="找奈纳对话",missionId=1005,step=7,interactIcon="warship_xuanxiangtb2",interactName="你好",objective=1005007,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005008"]=setmetatable({id=1005008,desc="传奇故事的第8步",name="夏洛在哪里",objectivedesc="找夏洛对话",missionId=1005,step=8,interactIcon="warship_xuanxiangtb2",interactName="再见",objective=1005008,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005009"]=setmetatable({id=1005009,desc="传奇故事的第9步",name="法尼娅在哪里",objectivedesc="找法尼娅对话",missionId=1005,step=9,interactIcon="warship_xuanxiangtb2",interactName="看那边",objective=1005009,objectiveEnd=1,objectiveSceneId=1},mt),
    ["1005010"]=setmetatable({id=1005010,desc="传奇故事的第10步",name="奈纳在哪里",objectivedesc="找奈纳对话",missionId=1005,step=10,interactIcon="warship_xuanxiangtb2",interactName="你好",objective=1005010,objectiveEnd=1,objectiveSceneId=1},mt),
    ["2001001"]=setmetatable({id=2001001,desc="传奇的故事都有传奇的开始",name="曾经拥有·1",objectivedesc="唯一的支线",missionId=2001,step=1,interactIcon="warship_xuanxiangtb2",interactName="唯一的支线",objective=1007},mt),
    ["2002001"]=setmetatable({id=2002001,desc="传奇的故事都有传奇的开始",name="曾经拥有·2",objectivedesc="唯一的支线",missionId=2002,step=1,interactIcon="warship_xuanxiangtb2",interactName="唯一的支线",objective=1009},mt),
    ["2003001"]=setmetatable({id=2003001,desc="传奇的故事都有传奇的开始",name="曾经拥有·3",objectivedesc="唯一的支线",missionId=2003,step=1,interactIcon="warship_xuanxiangtb2",interactName="唯一的支线",objective=1010},mt),
    ["2004001"]=setmetatable({id=2004001,desc="传奇的故事都有传奇的开始",name="曾经拥有·4",objectivedesc="唯一的支线",missionId=2004,step=1,interactIcon="warship_xuanxiangtb2",interactName="唯一的支线",objective=1010},mt),
    ["3001001"]=setmetatable({id=3001001,desc="传奇的故事都有传奇的开始",name="战神之后",objectivedesc="唯一的日常",missionId=3001,step=1,interactIcon="warship_xuanxiangtb2",interactName="唯一的日常",objective=1008},mt),
    ["110000101"]=setmetatable({id=110000101,desc="在前往温德兰德之前，先将刚刚的遭遇战战果汇报给REVO，职场琐事也要做好。",name="作战报告",objectivedesc="与维拉对话，发送作战报告",missionId=1100001,step=1,interactIcon="warship_xuanxiangtb2",interactName="【主线】发送作战报告",objective=110000101,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110010101"]=setmetatable({id=110010101,desc="庭审进行到了重要阶段，找法尼娅进行商讨吧。",name="询问法尼娅",objectivedesc="与法尼娅对话",missionId=1100101,step=1,interactIcon="warship_xuanxiangtb2",interactName="【主线】询问",objective=110010101,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110010102"]=setmetatable({id=110010102,desc="出发前，必须先安抚好奈纳的情绪，她对温德兰德早有诸多不满……",name="安慰奈纳",objectivedesc="与奈纳对话",missionId=1100101,step=2,interactIcon="warship_xuanxiangtb2",interactName="【主线】安慰",objective=110010102,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110010103"]=setmetatable({id=110010103,desc="奈纳的情绪有所好转，我决定和维拉讨论目前的情况。",name="不安的气息",objectivedesc="与维拉对话",missionId=1100101,step=3,interactIcon="warship_xuanxiangtb2",interactName="【主线】讨论",objective=110010103,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110020101"]=setmetatable({id=110020101,desc="回到尼伯赞歌号，法尼娅似乎心事重重。",name="了解法尼娅的想法",objectivedesc="与法尼娅对话",missionId=1100201,step=1,interactIcon="warship_xuanxiangtb2",interactName="【主线】询问",objective=110020101,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110020102"]=setmetatable({id=110020102,desc="残酷的战争，让我们都有所成长，我决定和维拉讨论目前的情况。",name="成长",objectivedesc="与维拉对话",missionId=1100201,step=2,interactIcon="warship_xuanxiangtb2",interactName="【主线】讨论",objective=110020102,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110030101"]=setmetatable({id=110030101,desc="耶拉告诉我们，进入遗迹之前，还需要再进行一次浮空遗迹知识问答。掌握了足够的知识，才能应对各种危险。",name="耶拉的提问",objectivedesc="与耶拉对话",missionId=1100301,step=1,interactIcon="warship_xuanxiangtb2",interactName="【主线】遗迹知识问答测试",objective=110030101,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110030102"]=setmetatable({id=110030102,desc="娜卡伊准备了第二个遗迹问答测试。",name="娜卡伊的提问",objectivedesc="与娜卡伊对话",missionId=1100301,step=2,interactIcon="warship_xuanxiangtb2",interactName="【主线】遗迹知识问答测试",objective=110030102,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110030103"]=setmetatable({id=110030103,desc="阿莱西娅准备了第三个遗迹问答测试，似乎打算刁难导师一下……",name="阿莱西亚的提问",objectivedesc="与阿莱西娅对话",missionId=1100301,step=3,interactIcon="warship_xuanxiangtb2",interactName="【主线】遗迹知识问答测试",objective=110030103,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110030104"]=setmetatable({id=110030104,desc="空准备了最后一个遗迹问答测试。",name="空的提问",objectivedesc="与空对话",missionId=1100301,step=4,interactIcon="warship_xuanxiangtb2",interactName="【主线】遗迹知识问答测试",objective=110030104,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110030105"]=setmetatable({id=110030105,desc="虽然过程有点曲折，但是对遗迹有了更深的了解，准备出发吧！",name="通过测试",objectivedesc="与耶拉对话",missionId=1100301,step=5,interactIcon="warship_xuanxiangtb2",interactName="【主线】向耶拉报告",objective=110030105,objectiveEnd=0,objectiveSceneId=1},mt),
    ["110040101"]=setmetatable({id=110040101,desc="出发前夕，瓦希缇对TEO-17的状态进行了许多分析与测算，去听听她的想法吧。",name="担忧",objectivedesc="和瓦希缇对话",missionId=1100401,step=1,interactIcon="warship_xuanxiangtb2",interactName="【主线】委婉转述担忧",objective=110040101},mt),
    ["110040102"]=setmetatable({id=110040102,desc="在二层书架附近寻找相关资料。",name="查找资料",objectivedesc="到达指定地点",missionId=1100401,step=2,interactIcon="warship_xuanxiangtb2",interactName="【主线】查找",objective=110040102},mt),
    ["110040103"]=setmetatable({id=110040103,desc="在二层书架附近寻找相关资料。",name="查找资料",objectivedesc="到达指定地点",missionId=1100401,step=3,interactIcon="warship_xuanxiangtb2",interactName="【主线】查找",objective=110040103},mt),
    ["110040104"]=setmetatable({id=110040104,desc="在二层书架附近寻找相关资料。",name="查找资料",objectivedesc="到达指定地点",missionId=1100401,step=4,interactIcon="warship_xuanxiangtb2",interactName="【主线】查找",objective=110040104},mt),
    ["110040105"]=setmetatable({id=110040105,desc="将寻找到的资料交给瓦希缇，听听她的分析。",name="回复瓦希缇",objectivedesc="和瓦希缇对话",missionId=1100401,step=5,interactIcon="warship_xuanxiangtb2",interactName="【主线】将资料递给瓦希缇",objective=110040105},mt),
    ["110050101"]=setmetatable({id=110050101,desc="差点被攻击到的夏洛被送回尼伯赞歌进行检查，安慰夏洛。",name="关心夏洛",objectivedesc="和夏洛对话",missionId=1100501,step=1,interactIcon="warship_xuanxiangtb2",interactName="【主线】扶夏洛休息",objective=110050101},mt),
    ["110050102"]=setmetatable({id=110050102,desc="帮夏洛取回纱布包扎一下。",name="寻找纱布",objectivedesc="到达指定地点",missionId=1100501,step=2,interactIcon="warship_xuanxiangtb2",interactName="【主线】取得纱布",objective=110050102},mt),
    ["110050103"]=setmetatable({id=110050103,desc="帮夏洛包扎并关心她的状况。",name="包扎",objectivedesc="和夏洛对话",missionId=1100501,step=3,interactIcon="warship_xuanxiangtb2",interactName="【主线】帮夏洛包扎",objective=110050103,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210010101"]=setmetatable({id=210010101,desc="在进行战斗录影之前要先做好作战准备。",name="战前准备",objectivedesc="提升法尼娅等级",missionId=2100101,step=1,interactIcon="warship_xuanxiangtb2",interactName="战前准备",objective=210010101,objectiveEnd=1,objectiveSceneId=0,reward=0,jumpId=2701},mt),
    ["210010102"]=setmetatable({id=210010102,desc="请用源能无人机将法尼娅战斗的英姿拍摄下来把。",name="战斗录影",objectivedesc="完成【法尼娅】副本2",missionId=2100101,step=2,interactIcon="warship_xuanxiangtb2",interactName="战斗录影",objective=210010102,objectiveEnd=1,objectiveSceneId=0,reward=0,jumpId=2601},mt),
    ["210010103"]=setmetatable({id=210010103,desc="给法尼娅播放刚刚录下的战斗影像吧。",name="观赏录影",objectivedesc="和法尼娅对话",missionId=2100101,step=3,interactIcon="warship_xuanxiangtb2",interactName="观赏录影",objective=210010103,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210010104"]=setmetatable({id=210010104,desc="导师让维拉从档案库调取的珍贵录像，里面到底是什么内容？",name="维拉的帮助",objectivedesc="找到维拉并和维拉对话",missionId=2100101,step=4,interactIcon="warship_xuanxiangtb2",interactName="维拉的帮助",objective=210010104,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210010105"]=setmetatable({id=210010105,desc="希望这两份录像能解开法尼娅的困惑。",name="时刻陪伴",objectivedesc="找到法尼娅并和法尼娅对话，给法尼娅播放另一份战斗录影。",missionId=2100101,step=5,interactIcon="warship_xuanxiangtb2",interactName="时刻陪伴",objective=210010105,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210020101"]=setmetatable({id=210020101,desc="或许夏洛会知道奈纳到处借钱的原因。",name="询问情况",objectivedesc="和夏洛对话",missionId=2100201,step=1,interactIcon="warship_xuanxiangtb2",interactName="询问",objective=210020101,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210020102"]=setmetatable({id=210020102,desc="帮助奈纳筹钱，完成任意【资源-金色战线】",name="帮助奈纳",objectivedesc="完成任意【资源-金色战线】",missionId=2100201,step=2,interactIcon="warship_xuanxiangtb2",interactName="",objective=210020102,objectiveEnd=1,objectiveSceneId=0,reward=0,jumpId=201},mt),
    ["210020103"]=setmetatable({id=210020103,desc="快将已经筹到足够钱的事情告知奈纳吧。",name="告知奈纳",objectivedesc="和奈纳对话",missionId=2100201,step=3,interactIcon="warship_xuanxiangtb2",interactName="将已筹到钱的事告知奈纳",objective=210020103,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210020104"]=setmetatable({id=210020104,desc="跟踪奈纳，看看她究竟需要这笔钱去做什么吧。",name="追踪去向",objectivedesc="完成【奈纳】副本2",missionId=2100201,step=4,interactIcon="warship_xuanxiangtb2",interactName="",objective=210020104,objectiveEnd=1,objectiveSceneId=0,reward=0,jumpId=2601},mt),
    ["210020105"]=setmetatable({id=210020105,desc="找到奈纳",name="跟丢",objectivedesc="找到奈纳",missionId=2100201,step=5,interactIcon="warship_xuanxiangtb2",interactName="寻找奈纳",objective=210020105,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210020106"]=setmetatable({id=210020106,desc="等跟奈纳的关系再好一点，再去问她情况吧！",name="打熟关系",objectivedesc="提升奈纳等级",missionId=2100201,step=6,interactIcon="warship_xuanxiangtb2",interactName="",objective=210020106,objectiveEnd=1,objectiveSceneId=0,reward=0,jumpId=2701},mt),
    ["210020107"]=setmetatable({id=210020107,desc="既然关系都已经这么好了，奈纳应该不会再藏着掖着了吧？",name="了解真相",objectivedesc="和奈纳对话",missionId=2100201,step=7,interactIcon="warship_xuanxiangtb2",interactName="关于之前的那笔钱……",objective=210020107,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210030101"]=setmetatable({id=210030101,desc="询问瓦希缇关于夏洛的‘曲调’。",name="请教",objectivedesc="和瓦希缇对话",missionId=2100301,step=1,interactIcon="warship_xuanxiangtb2",interactName="请教瓦希缇",objective=210030101,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210030102"]=setmetatable({id=210030102,desc="或许耶拉会知道更多。",name="请教",objectivedesc="和耶拉对话",missionId=2100301,step=2,interactIcon="warship_xuanxiangtb2",interactName="请教耶拉",objective=210030102,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210030103"]=setmetatable({id=210030103,desc="按照耶拉所说进行战斗感受。",name="验证猜想",objectivedesc="完成 任意【资源-高压底线】",missionId=2100301,step=3,interactIcon="warship_xuanxiangtb2",interactName="",objective=210030103,objectiveEnd=1,objectiveSceneId=0,reward=0,jumpId=301},mt),
    ["210030104"]=setmetatable({id=210030104,desc="将感受讲给耶拉，听取耶拉的分析。",name="验证猜想",objectivedesc="和耶拉对话",missionId=2100301,step=4,interactIcon="warship_xuanxiangtb2",interactName="讲述自己的感受",objective=210030104,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210030105"]=setmetatable({id=210030105,desc="将得知的情况告知夏洛，听听她的想法。",name="告知夏洛",objectivedesc="和夏洛对话",missionId=2100301,step=5,interactIcon="warship_xuanxiangtb2",interactName="将得知的情况告知夏洛",objective=210030105,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210030106"]=setmetatable({id=210030106,desc="帮助夏洛提升【位阶】，想起更多曲调。",name="提升共鸣",objectivedesc="提升夏洛的【位阶】",missionId=2100301,step=6,interactIcon="warship_xuanxiangtb2",interactName="",objective=210030106,objectiveEnd=1,objectiveSceneId=0,reward=0,jumpId=2701},mt),
    ["210030107"]=setmetatable({id=210030107,desc="夏洛想起了更多的曲调……",name="倾听",objectivedesc="和夏洛对话",missionId=2100301,step=7,interactIcon="warship_xuanxiangtb2",interactName="静静聆听夏洛哼歌",objective=210030107,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210030108"]=setmetatable({id=210030108,desc="通过更多的曲调来让耶拉进行分析，倾听结论。",name="担忧",objectivedesc="和耶拉对话",missionId=2100301,step=8,interactIcon="warship_xuanxiangtb2",interactName="将担忧诉说给耶拉",objective=210030108,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210030109"]=setmetatable({id=210030109,desc="将得到的结论告知夏洛，倾听她的感受。",name="担忧",objectivedesc="和夏洛对话",missionId=2100301,step=9,interactIcon="warship_xuanxiangtb2",interactName="着急告知夏洛实情",objective=210030109,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210050101"]=setmetatable({id=210050101,desc="询问瓦希缇正在做的事情。",name="询问",objectivedesc="和瓦希缇对话",missionId=2100501,step=1,interactIcon="warship_xuanxiangtb2",interactName="询问瓦希缇",objective=210050101,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210050102"]=setmetatable({id=210050102,desc="收集需要的线索",name="线索",objectivedesc="完成 任意【资源-深层恐惧】",missionId=2100501,step=2,interactIcon="warship_xuanxiangtb2",interactName="",objective=210050102,objectiveEnd=0,objectiveSceneId=0,reward=0,jumpId=601},mt),
    ["210050103"]=setmetatable({id=210050103,desc="将收集到的线索交给瓦希缇并听她的分析。",name="线索",objectivedesc="和瓦希缇对话",missionId=2100501,step=3,interactIcon="warship_xuanxiangtb2",interactName="与瓦希缇讨论收集到的线索",objective=210050103,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210050104"]=setmetatable({id=210050104,desc="提升瓦希缇的战斗能力。",name="战斗力",objectivedesc="提升瓦希缇等级",missionId=2100501,step=4,interactIcon="warship_xuanxiangtb2",interactName="",objective=210050104,objectiveEnd=0,objectiveSceneId=0,reward=0,jumpId=2701},mt),
    ["210050105"]=setmetatable({id=210050105,desc="收集散落在空间之中的线索。",name="收集信息",objectivedesc="完成【瓦希缇】副本2",missionId=2100501,step=5,interactIcon="warship_xuanxiangtb2",interactName="",objective=210050105,objectiveEnd=0,objectiveSceneId=0,reward=0,jumpId=2601},mt),
    ["210050106"]=setmetatable({id=210050106,desc="将收集到的线索交给瓦希缇。",name="猜测",objectivedesc="和瓦希缇对话",missionId=2100501,step=6,interactIcon="warship_xuanxiangtb2",interactName="像瓦希缇报告",objective=210050106,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210050107"]=setmetatable({id=210050107,desc="耶拉或许能搞明白这些线索记载的信息。",name="猜测",objectivedesc="找到耶拉并和耶拉对话",missionId=2100501,step=7,interactIcon="warship_xuanxiangtb2",interactName="和瓦希缇一起询问耶拉",objective=210050107,objectiveEnd=0,objectiveSceneId=1},mt),
    ["210050108"]=setmetatable({id=210050108,desc="瓦希缇需要下定决心，听听看她做出了怎样的选择吧。",name="抉择",objectivedesc="和瓦希缇对话",missionId=2100501,step=8,interactIcon="warship_xuanxiangtb2",interactName="听听瓦希缇的决定",objective=210050108,objectiveEnd=0,objectiveSceneId=1},mt),
}
--生成获取数据的方法
---@return WarshipMissionSub
function GetWarshipMissionSubData(id)
    return WarshipMissionSub_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipMissionSub : table 
---@field id number
---@field desc string
---@field name string
---@field objectivedesc string
---@field missionId number
---@field step number
---@field interactIcon string
---@field interactName string
---@field objective number
---@field objectiveEnd number
---@field objectiveSceneId number
---@field reward number
---@field jumpId number
---@field onBeginStory number
---@field onBeginStoryRelink number
---@field onBegin1 number
---@field onBeginParam1 string
---@field onBegin2 number
---@field onBeginParam2 string
---@field onEndStory number
---@field onEndStoryRelink number
---@field onEnd1 number
---@field onEndParam1 string
---@field onEnd2 number
---@field onEndParam2 string
