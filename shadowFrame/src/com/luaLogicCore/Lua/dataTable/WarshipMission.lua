local default = {id=0,isusable=0,desc="",name="",optionText="",tag=0,acceptFlag=0,limit=0,refreshLimit=0,acceptMethod=0,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=0,acceptRequire=0,questFailed="",interactIcon="",interactName="",reward=0,npcShow="",priority=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipMission_Xls : table 
WarshipMission_Xls =
{
    ["1001"]=setmetatable({id=1001,isusable=0,desc="",name="故事的开始",optionText="",tag=1,acceptFlag=1,limit=1,refreshLimit=0,acceptMethod=1,acceptSceneId=1,acceptNpcId=2001001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=1001,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="获得道具"},mt),
    ["1002"]=setmetatable({id=1002,isusable=0,desc="",name="麻烦的工作",optionText="",tag=1,acceptFlag=1,limit=1,refreshLimit=0,acceptMethod=2,acceptSceneId=1,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=1002,acceptRequire=0,questFailed="2",interactIcon="warship_xuanxiangtb2",interactName="去到指定地点"},mt),
    ["1003"]=setmetatable({id=1003,isusable=0,desc="",name="勇气和力量",optionText="",tag=1,acceptFlag=1,limit=1,refreshLimit=0,acceptMethod=3,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=1060001,acceptPerformance=0,appearRequire=1002,acceptRequire=1003,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="跟npc对话"},mt),
    ["1004"]=setmetatable({id=1004,isusable=0,desc="",name="自由之战",optionText="",tag=1,acceptFlag=2,limit=1,refreshLimit=0,acceptMethod=1,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=0,acceptRequire=0,questFailed="0",interactIcon="warship_xuanxiangtb2",interactName="跟npc对话"},mt),
    ["1005"]=setmetatable({id=1005,isusable=0,desc="",name="正式的测试任务",optionText="",tag=1,acceptFlag=2,limit=1,refreshLimit=0,acceptMethod=1,acceptSceneId=1,acceptNpcId=2001001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=0,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="你的呆毛",reward=0,npcShow="UI_faniya_6_sikao"},mt),
    ["2001"]=setmetatable({id=2001,isusable=0,desc="",name="浮生若梦",optionText="",tag=2,acceptFlag=2,limit=2,refreshLimit=6001,acceptMethod=0,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=0,acceptRequire=0,questFailed="0",interactIcon="warship_xuanxiangtb2",interactName="通关关卡"},mt),
    ["3001"]=setmetatable({id=3001,isusable=0,desc="",name="暗夜英雄",optionText="接还是不接",tag=3,acceptFlag=3,limit=0,refreshLimit=0,acceptMethod=0,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=0,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="没在用"},mt),
    ["2002"]=setmetatable({id=2002,isusable=0,desc="",name="迫近的危机",optionText="",tag=2,acceptFlag=2,limit=0,refreshLimit=0,acceptMethod=1,acceptSceneId=0,acceptNpcId=2001001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=1001,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="通关关卡"},mt),
    ["2003"]=setmetatable({id=2003,isusable=0,desc="",name="不问出处",optionText="",tag=2,acceptFlag=2,limit=0,refreshLimit=0,acceptMethod=1,acceptSceneId=0,acceptNpcId=2002001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=1001,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="通关关卡"},mt),
    ["2004"]=setmetatable({id=2004,isusable=0,desc="",name="奈何花落去",optionText="",tag=2,acceptFlag=2,limit=0,refreshLimit=0,acceptMethod=1,acceptSceneId=0,acceptNpcId=2003001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=1001,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="通关关卡"},mt),
    ["1100001"]=setmetatable({id=1100001,isusable=0,desc="",name="下一站：温德兰德",optionText="",tag=1,acceptFlag=2,limit=1,refreshLimit=0,acceptMethod=1,acceptSceneId=0,acceptNpcId=2001001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=0,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="出发",reward=0,npcShow="UI_faniya_1_xi",priority=1000},mt),
    ["1100101"]=setmetatable({id=1100101,isusable=0,desc="庭审进行到了重要阶段，找法尼娅进行商讨吧。",name="举措商议",optionText="",tag=1,acceptFlag=1,limit=1,refreshLimit=0,acceptMethod=0,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=110010199,acceptRequire=0,questFailed="1",interactIcon="",interactName="",reward=0,npcShow="UI_faniya_6_sikao",priority=999},mt),
    ["1100201"]=setmetatable({id=1100201,isusable=0,desc="回到尼伯赞歌号，法尼娅似乎心事重重。",name="了解情况",optionText="",tag=1,acceptFlag=1,limit=1,refreshLimit=0,acceptMethod=0,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=110020199,acceptRequire=0,questFailed="1",interactIcon="",interactName="",reward=0,npcShow="UI_faniya_6_sikao",priority=998},mt),
    ["1100301"]=setmetatable({id=1100301,isusable=0,desc="耶拉告诉我们，进入遗迹之前，还需要再进行一次浮空遗迹知识问答。掌握了足够的知识，才能应对各种危险。",name="遗迹问答",optionText="",tag=1,acceptFlag=1,limit=1,refreshLimit=0,acceptMethod=0,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=110030199,acceptRequire=0,questFailed="1",interactIcon="",interactName="",reward=0,npcShow="UI_yela_0",priority=997},mt),
    ["1100401"]=setmetatable({id=1100401,isusable=0,desc="出发前夕，瓦希缇对TEO-17的状态进行了许多分析与测算，去听听她的想法吧。",name="出发准备",optionText="",tag=1,acceptFlag=1,limit=1,refreshLimit=0,acceptMethod=0,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=110040199,acceptRequire=0,questFailed="1",interactIcon="",interactName="",reward=0,npcShow="UI_waxiti_1",priority=996},mt),
    ["1100501"]=setmetatable({id=1100501,isusable=0,desc="差点被攻击到的夏洛被送回尼伯赞歌进行检查，安慰夏洛。",name="关心",optionText="",tag=1,acceptFlag=1,limit=1,refreshLimit=0,acceptMethod=0,acceptSceneId=0,acceptNpcId=0,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=110050199,acceptRequire=0,questFailed="1",interactIcon="",interactName="",reward=0,npcShow="UI_xialuo_3_ai",priority=995},mt),
    ["2100101"]=setmetatable({id=2100101,isusable=0,desc="法尼娅的心情似乎不太好……",name="姐姐，晚餐。",optionText="",tag=2,acceptFlag=2,limit=1,refreshLimit=0,acceptMethod=1,acceptSceneId=1,acceptNpcId=2001001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=210010199,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="打招呼",reward=0,npcShow="UI_faniya_3_ai"},mt),
    ["2100201"]=setmetatable({id=2100201,isusable=0,desc="奈纳似乎在因为什么事而烦恼，找她了解一下吧。",name="奈纳的请求",optionText="",tag=2,acceptFlag=2,limit=1,refreshLimit=0,acceptMethod=1,acceptSceneId=1,acceptNpcId=2002001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=210020199,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="倾听“请求”",reward=0,npcShow="UI_naina_6_sikao",priority=899},mt),
    ["2100301"]=setmetatable({id=2100301,isusable=0,desc="驻足倾听夏洛的哼唱吧。",name="记忆中的曲调",optionText="",tag=2,acceptFlag=2,limit=1,refreshLimit=0,acceptMethod=1,acceptSceneId=1,acceptNpcId=2003001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=210030199,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="聆听",reward=0,npcShow="UI_xialuo_0_moren",priority=898},mt),
    ["2100501"]=setmetatable({id=2100501,isusable=0,desc="听取维拉关于瓦希缇的报告。",name="",optionText="",tag=2,acceptFlag=2,limit=1,refreshLimit=0,acceptMethod=1,acceptSceneId=1,acceptNpcId=2004001,accepTtriggerId=0,acceptItemId=0,acceptPerformance=0,appearRequire=210050199,acceptRequire=0,questFailed="1",interactIcon="warship_xuanxiangtb2",interactName="维拉的警告",reward=0,npcShow="UI_waxiti_7"},mt),
}
--生成获取数据的方法
---@return WarshipMission
function GetWarshipMissionData(id)
    return WarshipMission_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipMission : table 
---@field id number
---@field isusable number
---@field desc string
---@field name string
---@field optionText string
---@field tag number
---@field acceptFlag number
---@field limit number
---@field refreshLimit number
---@field acceptMethod number
---@field acceptSceneId number
---@field acceptNpcId number
---@field accepTtriggerId number
---@field acceptItemId number
---@field acceptPerformance number
---@field appearRequire number
---@field acceptRequire number
---@field questFailed string
---@field interactIcon string
---@field interactName string
---@field reward number
---@field npcShow string
---@field priority number
