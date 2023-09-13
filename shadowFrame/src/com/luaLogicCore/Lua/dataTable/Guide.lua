local default = {id=0,note="",isOpen=0,isForceGuide=0,guideType=0,hasRestorePoint=0,guideParam="",closeParam="",needReturnMainPanel=0,guideDialogId=0,restorePoint=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Guide_Xls : table 
Guide_Xls =
{
    ["101"]=setmetatable({id=101,note="序章结束通过大地图进入战斗",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=1,guideParam="",closeParam="",needReturnMainPanel=0,guideDialogId=10101},mt),
    ["104"]=setmetatable({id=104,note="1-1通关提升斯露德等级",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101101,\"nextLevelId\":101102}",closeParam="",needReturnMainPanel=0,guideDialogId=10401},mt),
    ["107"]=setmetatable({id=107,note="1-2通关领取任务、武器教学",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101102,\"nextLevelId\":101103}",closeParam="",needReturnMainPanel=0,guideDialogId=10701},mt),
    ["127"]=setmetatable({id=127,note="主界面新手任务开启后 引导看新手活动",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=1,guideParam="{\"openFuncId\":[290]}",closeParam="",needReturnMainPanel=0,guideDialogId=12702},mt),
    ["139"]=setmetatable({id=139,note="1-3引导结束后查看新增关卡",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101103,\"nextLevelId\":461101}",closeParam="",needReturnMainPanel=0,guideDialogId=12701},mt),
    ["106"]=setmetatable({id=106,note="新增关后通关抽卡",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":461101,\"nextLevelId\":101104}",closeParam="",needReturnMainPanel=0,guideDialogId=10601,restorePoint=10602},mt),
    ["140"]=setmetatable({id=140,note="1-4结束后引导设置",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101104,\"nextLevelId\":101105}",closeParam="",needReturnMainPanel=0,guideDialogId=12701},mt),
    ["102"]=setmetatable({id=102,note="1-5上阵夏洛",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"roleId\":2003001,\"lastLevelId\":101104,\"currentLevelId\":101105}",closeParam="",needReturnMainPanel=0,guideDialogId=10201},mt),
    ["137"]=setmetatable({id=137,note="1-5再次武器穿戴",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101105,\"nextLevelId\":101106}",closeParam="",needReturnMainPanel=0,guideDialogId=13701},mt),
    ["113"]=setmetatable({id=113,note="1-10资源关卡",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101110,\"nextLevelId\":101111}",closeParam="",needReturnMainPanel=0,guideDialogId=11301},mt),
    ["103"]=setmetatable({id=103,note="1-11通关查看回忆模式",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101111,\"nextLevelId\":101112}",closeParam="",needReturnMainPanel=0,guideDialogId=10301},mt),
    ["109"]=setmetatable({id=109,note="2-3通关武装刷",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":102103,\"nextLevelId\":102104}",closeParam="",needReturnMainPanel=0,guideDialogId=10901},mt),
    ["122"]=setmetatable({id=122,note="2-4 第二次进战舰 进改造和派遣",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":102104,\"nextLevelId\":102105}",closeParam="",needReturnMainPanel=0,guideDialogId=12201},mt),
    ["120"]=setmetatable({id=120,note="2-6编队界面 元素共鸣说明",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"lastLevelId\":102105,\"currentLevelId\":102106}",closeParam="",needReturnMainPanel=0,guideDialogId=12089},mt),
    ["121"]=setmetatable({id=121,note="2-8 第一次进战舰 进餐厅",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":102108,\"nextLevelId\":102109}",closeParam="",needReturnMainPanel=0,guideDialogId=12101},mt),
    ["108"]=setmetatable({id=108,note="2-13通关查看困难难度",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":102113,\"nextLevelId\":103101}",closeParam="",needReturnMainPanel=0,guideDialogId=10801},mt),
    ["111"]=setmetatable({id=111,note="3-12爬塔说明",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":103112,\"nextLevelId\":104101}",closeParam="",needReturnMainPanel=0,guideDialogId=11198},mt),
    ["201"]=setmetatable({id=201,note="弱引导：前往大地图，1-3首次通关前",isOpen=1,isForceGuide=0,guideType=0,hasRestorePoint=0,guideParam="{\"lastLevelId\":101101,\"nextLevelId\":461101}",closeParam="",needReturnMainPanel=0,guideDialogId=20101},mt),
    ["202"]=setmetatable({id=202,note="弱引导：前往关卡 1-1通关后，1-3首次通关前",isOpen=1,isForceGuide=0,guideType=0,hasRestorePoint=0,guideParam="{\"lastLevelId\":101101,\"levelId\":[101101,101102,101103],\"nextLevelId\":101103}",closeParam="",needReturnMainPanel=0,guideDialogId=20201},mt),
    ["203"]=setmetatable({id=203,note="弱引导：前往关卡 1-3通关后，附加关通关前",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"lastLevelId\":101103,\"levelId\":[461101],\"nextLevelId\":461101}",closeParam="",needReturnMainPanel=0,guideDialogId=20301},mt),
    ["119"]=setmetatable({id=119,note="1-4编队界面 固定编队教学",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"lastLevelId\":101104,\"currentLevelId\":101105}",closeParam="",needReturnMainPanel=0,guideDialogId=11901},mt),
    ["124"]=setmetatable({id=124,note="功能开启后主界面触发 进入乌拉拉玩法",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=1,guideParam="{\"openFuncId\":[450,420]}",closeParam="",needReturnMainPanel=0,guideDialogId=12498},mt),
    ["126"]=setmetatable({id=126,note="乌拉拉进入界面后引导",isOpen=1,isForceGuide=1,guideType=2,hasRestorePoint=0,guideParam="{\"prefabName\":\"UIPatrol\"}",closeParam="",needReturnMainPanel=0,guideDialogId=12601},mt),
    ["138"]=setmetatable({id=138,note="功能开启后主界面触发 具现引导",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"openFuncId\":[205]}",closeParam="",needReturnMainPanel=0,guideDialogId=13801},mt),
    ["133"]=setmetatable({id=133,note="小战场教学 主界面没有其他引导和其他弹出界面时判断：异域功能开启且小战场功能开启",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=1,guideParam="{\"openFuncId\":[450,600]}",closeParam="",needReturnMainPanel=0,guideDialogId=13301},mt),
    ["136"]=setmetatable({id=136,note="大战场教学 主界面没有其他引导和其他弹出界面时判断：异域功能开启且大战场功能开启",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=1,guideParam="{\"openFuncId\":[450,900]}",closeParam="",needReturnMainPanel=0,guideDialogId=13601},mt),
    ["105"]=setmetatable({id=105,note="关闭",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101111,\"nextLevelId\":101112}",closeParam="",needReturnMainPanel=0,guideDialogId=11201},mt),
    ["112"]=setmetatable({id=112,note="1-5角色位阶强化说明",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101105,\"nextLevelId\":101106}",closeParam="",needReturnMainPanel=0,guideDialogId=11201},mt),
    ["114"]=setmetatable({id=114,note="玩家没有完成战舰任务21008，也没接到战舰任务（符合条件反复触发）",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"taskId\":1100001}",closeParam="",needReturnMainPanel=0,guideDialogId=11403},mt),
    ["115"]=setmetatable({id=115,note="玩家没有完成战舰任务21008，但是接到战舰任务21008",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"taskId\":1100001}",closeParam="",needReturnMainPanel=0,guideDialogId=11501},mt),
    ["116"]=setmetatable({id=116,note="2-12结束后引导悬赏（每日委托）",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":102112,\"nextLevelId\":103101}",closeParam="",needReturnMainPanel=0,guideDialogId=11601,restorePoint=11699},mt),
    ["117"]=setmetatable({id=117,note="第一章战舰关后 好感度引导",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"taskId\":1100101}",closeParam="",needReturnMainPanel=0,guideDialogId=11701},mt),
    ["123"]=setmetatable({id=123,note="多人BOSS战教学 主界面没有其他引导和其他弹出界面时判断：异域功能开启且多人BOSS战开启",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=1,guideParam="{\"openFuncId\":[450,300]}",closeParam="",needReturnMainPanel=0,guideDialogId=12399},mt),
    ["125"]=setmetatable({id=125,note="3-7后引导到资源关镜像",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":103103,\"nextLevelId\":103104}",closeParam="",needReturnMainPanel=0,guideDialogId=12501},mt),
    ["128"]=setmetatable({id=128,note="1-8 突破升级",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101108,\"nextLevelId\":101109}",closeParam="",needReturnMainPanel=0,guideDialogId=12801},mt),
    ["131"]=setmetatable({id=131,note="2-7结束后角色支线",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=0,guideParam="{\"levelId\":102107,\"nextLevelId\":102108}",closeParam="",needReturnMainPanel=0,guideDialogId=13101},mt),
    ["132"]=setmetatable({id=132,note="3-4结束后挑战关卡",isOpen=0,isForceGuide=1,guideType=1,hasRestorePoint=0,guideParam="{\"levelId\":103104,\"nextLevelId\":103105}",closeParam="",needReturnMainPanel=0,guideDialogId=13201},mt),
    ["130"]=setmetatable({id=130,note="1-4编队界面 上阵教学",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"lastLevelId\":101103,\"currentLevelId\":101104}",closeParam="",needReturnMainPanel=0,guideDialogId=13002},mt),
    ["134"]=setmetatable({id=134,note="主界面没有其他引导和其他弹出界面时判断：主界面赛季按钮可以点击时触发",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="",closeParam="",needReturnMainPanel=0,guideDialogId=13401},mt),
    ["135"]=setmetatable({id=135,note="主界面没有其他引导和其他弹出界面时判断：玩家背包有perk类型道具",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="",closeParam="",needReturnMainPanel=0,guideDialogId=13501},mt),
    ["129"]=setmetatable({id=129,note="功能开启后主界面触发 具现引导",isOpen=0,isForceGuide=1,guideType=0,hasRestorePoint=1,guideParam="{\"openFuncId\":[205]}",closeParam="",needReturnMainPanel=0,guideDialogId=13801},mt),
    ["143"]=setmetatable({id=143,note="武装洗练进入界面后引导",isOpen=1,isForceGuide=1,guideType=4,hasRestorePoint=0,guideParam="{\"uiName\":\"UIWeaponIntensify\",\"buttonName\":\"RecastingSkillTab\"}",closeParam="",needReturnMainPanel=0,guideDialogId=14305},mt),
    ["142"]=setmetatable({id=142,note="挂机功能开启后引导",isOpen=1,isForceGuide=1,guideType=4,hasRestorePoint=0,guideParam="{\"uiName\":\"UITrainLevelDetail\",\"buttonName\":\"HangUpBattleBtn\"}",closeParam="",needReturnMainPanel=0,guideDialogId=14201},mt),
    ["145"]=setmetatable({id=145,note="职业教学",isOpen=1,isForceGuide=1,guideType=4,hasRestorePoint=0,guideParam="{\"uiName\":\"UIHeroDevelop_InfoTabContent\",\"buttonName\":\"HaveState\"}",closeParam="",needReturnMainPanel=0,guideDialogId=14501},mt),
    ["146"]=setmetatable({id=146,note="团本教学",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="{\"openFuncId\":[440]}",closeParam="",needReturnMainPanel=0,guideDialogId=14601},mt),
    ["147"]=setmetatable({id=147,note="肉鸽天赋引导",isOpen=1,isForceGuide=1,guideType=2,hasRestorePoint=0,guideParam="{\"prefabName\":\"UIRoguelikeTalent\"}",closeParam="",needReturnMainPanel=0,guideDialogId=14701},mt),
    ["148"]=setmetatable({id=148,note="肉鸽奖励引导",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="",closeParam="",needReturnMainPanel=0,guideDialogId=14801},mt),
    ["149"]=setmetatable({id=149,note="肉鸽关卡引导",isOpen=1,isForceGuide=1,guideType=2,hasRestorePoint=0,guideParam="{\"prefabName\":\"UIRoguelikeLevel\"}",closeParam="",needReturnMainPanel=0,guideDialogId=14901},mt),
    ["150"]=setmetatable({id=150,note="肉鸽主题引导",isOpen=1,isForceGuide=1,guideType=2,hasRestorePoint=0,guideParam="{\"prefabName\":\"UIRoguelikeBuffType\"}",closeParam="",needReturnMainPanel=0,guideDialogId=15001},mt),
    ["170"]=setmetatable({id=170,note="1-12通过后查看肉鸽玩法",isOpen=1,isForceGuide=1,guideType=1,hasRestorePoint=1,guideParam="{\"levelId\":101112,\"nextLevelId\":102101}",closeParam="",needReturnMainPanel=0,guideDialogId=17001},mt),
    ["180"]=setmetatable({id=180,note="0907 新Perk引导",isOpen=1,isForceGuide=1,guideType=0,hasRestorePoint=0,guideParam="",closeParam="",needReturnMainPanel=0,guideDialogId=13501},mt),
}
--生成获取数据的方法
---@return Guide
function GetGuideData(id)
    return Guide_Xls[tostring(id)]
end
--自动生成注释
---@class Guide : table 
---@field id number
---@field note string
---@field isOpen number
---@field isForceGuide number
---@field guideType number
---@field hasRestorePoint number
---@field guideParam string
---@field closeParam string
---@field needReturnMainPanel number
---@field guideDialogId number
---@field restorePoint number
