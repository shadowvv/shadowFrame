local default = {id=0,name="",loopType=0,cuename="",sheetName="",sheetNameawb="",volume=0,is3DPos=0,fadeInTime=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BGM_Xls : table 
BGM_Xls =
{
    ["101001"]=setmetatable({id=101001,name="心灵归处~指挥大厅~",loopType=1,cuename="Music_Menu_Lobby",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101002"]=setmetatable({id=101002,name="~登录~",loopType=1,cuename="Music_Login",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101003"]=setmetatable({id=101003,name="贩售~商城~",loopType=1,cuename="Music_Menu_Shop",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101004"]=setmetatable({id=101004,name="新版~登录~",loopType=2,cuename="Music_VideoLogin",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101006"]=setmetatable({id=101006,name="大地图",loopType=1,cuename="Music_Menu_Map",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101007"]=setmetatable({id=101007,name="抽卡-抽卡过程",loopType=1,cuename="Music_Menu_Drawcard_Result",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101008"]=setmetatable({id=101008,name="抽卡-进入场景",loopType=1,cuename="Music_Menu_Drawcard",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101009"]=setmetatable({id=101009,name="编队界面",loopType=1,cuename="Music_Menu_Formation",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101010"]=setmetatable({id=101010,name="关卡选择界面",loopType=1,cuename="Music_Menu_LevelList",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101011"]=setmetatable({id=101011,name="战斗-胜利",loopType=1,cuename="Music_Battle_Victory",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101013"]=setmetatable({id=101013,name="loading",loopType=1,cuename="Music_Loading",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101014"]=setmetatable({id=101014,name="创角音乐",loopType=1,cuename="Music_CreateRole",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101018"]=setmetatable({id=101018,name="战舰",loopType=1,cuename="Music_Menu_Warship",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101019"]=setmetatable({id=101019,name="剧情空白",loopType=1,cuename="Music_Story_Mute",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101020"]=setmetatable({id=101020,name="抽卡-跳过动画直接进入展示",loopType=1,cuename="Music_Menu_Drawcard_Result_Skip",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101021"]=setmetatable({id=101021,name="结束loading",loopType=1,cuename="Music_LoadingEnd",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101027"]=setmetatable({id=101027,name="聚餐音乐",loopType=1,cuename="Music_Menu_Canteen",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101028"]=setmetatable({id=101028,name="脉流巡检功能音乐",loopType=1,cuename="Music_Menu_Patrol",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["101029"]=setmetatable({id=101029,name="夜晚界面音乐",loopType=1,cuename="Music_Menu_NightLobby",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["201001"]=setmetatable({id=201001,name="SkyEcho",loopType=1,cuename="Music_c1_SkyEcho",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["201002"]=setmetatable({id=201002,name="SkyEcho_歌谣",loopType=1,cuename="Music_c1_SkyEcho_song",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["201003"]=setmetatable({id=201003,name="SkyEcho_高潮",loopType=1,cuename="Music_c1_SkyEcho_hook",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["201004"]=setmetatable({id=201004,name="SkyAside",loopType=1,cuename="Music_Cpt1_SkyAside",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["201007"]=setmetatable({id=201007,name="斯露德主题情绪",loopType=1,cuename="Music_Story_Thrud",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["301003"]=setmetatable({id=301003,name="云端的游戏~移动关卡~",loopType=1,cuename="Music_Battle_MoveStage",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["301004"]=setmetatable({id=301004,name="钢与铁~防守关卡~",loopType=1,cuename="Music_Battle_DefStage",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["302001"]=setmetatable({id=302001,name="未变的尘埃~耶梦加得~",loopType=1,cuename="Music_Battle_Boss_Jormungandr_Stage1",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["302002"]=setmetatable({id=302002,name="绝命破局~耶梦加得~",loopType=1,cuename="Music_Battle_Boss_Jormungandr_Stage2",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401001"]=setmetatable({id=401001,name="一般剧情（普通）",loopType=1,cuename="Music_Story_Common",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401003"]=setmetatable({id=401003,name="迫在眉睫~危机剧情~",loopType=1,cuename="Music_Story_Crisis",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401004"]=setmetatable({id=401004,name="潜伏~紧急剧情~",loopType=1,cuename="Music_Story_Threat",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401005"]=setmetatable({id=401005,name="道中~对话普通~",loopType=1,cuename="Music_Story_Serious",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401006"]=setmetatable({id=401006,name="剧情用",loopType=1,cuename="Music_Story_Serenity",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401007"]=setmetatable({id=401007,name="剧情中：非常紧张",loopType=1,cuename="Music_Story_Crisis2",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401008"]=setmetatable({id=401008,name="剧情中：柔和、安静",loopType=1,cuename="Music_Story_General",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401009"]=setmetatable({id=401009,name="剧情中、战斗",loopType=1,cuename="Music_Story_Warmonger",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401010"]=setmetatable({id=401010,name="剧情中：深沉、阴险",loopType=1,cuename="Music_Story_Clergy",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401011"]=setmetatable({id=401011,name="剧情中：新增通用",loopType=1,cuename="Music_Story_Common",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401012"]=setmetatable({id=401012,name="剧情中：新增诙谐",loopType=1,cuename="Music_Story_Humorous",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401013"]=setmetatable({id=401013,name="剧情：恐怖氛围",loopType=1,cuename="Music_Story_Scary",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401014"]=setmetatable({id=401014,name="剧情：无意识",loopType=1,cuename="Music_Story_Unconscious",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401015"]=setmetatable({id=401015,name="剧情：恐怖氛围_LowPass",loopType=1,cuename="Music_Story_Scary_LowPass",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401016"]=setmetatable({id=401016,name="剧情：神秘决心",loopType=1,cuename="Music_Story_UpliftingAmbience",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401017"]=setmetatable({id=401017,name="剧情：无意识Outro",loopType=1,cuename="Music_Story_Unconscious_Outro",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401018"]=setmetatable({id=401018,name="AVG开始",loopType=1,cuename="Music_Story_Start",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401019"]=setmetatable({id=401019,name="AVG结束",loopType=1,cuename="Music_Story_End",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401020"]=setmetatable({id=401020,name="剧情：启蒙",loopType=1,cuename="Music_Story_Enlightening",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401021"]=setmetatable({id=401021,name="剧情：神秘情绪",loopType=1,cuename="Music_Story_Mysterious",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401022"]=setmetatable({id=401022,name="剧情：放松情绪",loopType=1,cuename="Music_Story_Relaxed",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401023"]=setmetatable({id=401023,name="剧情：异空",loopType=1,cuename="Music_Story_Yikong",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401024"]=setmetatable({id=401024,name="剧情：对峙",loopType=1,cuename="Music_Story_Confront",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["401025"]=setmetatable({id=401025,name="剧情：危机",loopType=1,cuename="Music_Story_Crisis_Atmo",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600001"]=setmetatable({id=600001,name="测试用",loopType=1,cuename="Music_Battle_General",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600011"]=setmetatable({id=600011,name="空中作战",loopType=1,cuename="Music_Battle_General",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600012"]=setmetatable({id=600012,name="雨夜作战",loopType=1,cuename="Music_Battle_NightBattle",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600013"]=setmetatable({id=600013,name="遨游在天空的异兽",loopType=1,cuename="Music_Battle_Boss_Bakekujira_Stage1",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600014"]=setmetatable({id=600014,name="凋零云母",loopType=1,cuename="Music_Battle_Boss_Bakekujira_Stage2",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600015"]=setmetatable({id=600015,name="遨游在天空的异兽",loopType=1,cuename="Music_Battle_Boss_Jormungandr_Stage1",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600016"]=setmetatable({id=600016,name="牧者的角笛",loopType=1,cuename="Music_Battle_Boss_Jormungandr_Stage2",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600017"]=setmetatable({id=600017,name="水母",loopType=1,cuename="Music_Battle_DefStage",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600018"]=setmetatable({id=600018,name="Battle_MoveStage",loopType=1,cuename="Music_Battle_MoveStage",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600019"]=setmetatable({id=600019,name="Boss_Anger_Stage_1",loopType=1,cuename="Music_Battle_Boss_Anger_Stage1",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600020"]=setmetatable({id=600020,name="Boss_Anger_Stage_2",loopType=1,cuename="Music_Battle_Boss_Anger_Stage2",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600021"]=setmetatable({id=600021,name="泡芙技能音乐",loopType=1,cuename="Music_Battle_PaftSkill",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600022"]=setmetatable({id=600022,name="泡芙一开始的极奏音乐Prepare",loopType=1,cuename="Music_StopPaftSkill",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600023"]=setmetatable({id=600023,name="战斗虚空",loopType=1,cuename="Music_Battle_Xukong",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600024"]=setmetatable({id=600024,name="战斗异空",loopType=1,cuename="Music_Battle_Yikong",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600025"]=setmetatable({id=600025,name="Boss_TEO17_Stage_3",loopType=1,cuename="Music_Battle_Boss_TEO17_Stage_3",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600026"]=setmetatable({id=600026,name="Boss_TEO17_Stage_4",loopType=1,cuename="Music_Battle_Boss_TEO17_Stage_4",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600027"]=setmetatable({id=600027,name="战斗空白",loopType=1,cuename="Music_Battle_NONE",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600028"]=setmetatable({id=600028,name="战斗紧张氛围",loopType=1,cuename="Music_Battle_StageTension",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600029"]=setmetatable({id=600029,name="普通战斗音乐2",loopType=1,cuename="Music_Battle_General_02",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["600030"]=setmetatable({id=600030,name="普通战斗音乐2的改版",loopType=1,cuename="Music_Battle_General_02_Alt",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["700114"]=setmetatable({id=700114,name="爬塔背景音",loopType=1,cuename="Music_Menu_Abyss",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
    ["810000"]=setmetatable({id=810000,name="视频空白",loopType=1,cuename="Music_Video_Mute",sheetName="",sheetNameawb="",volume=1,is3DPos=0,fadeInTime=0},mt),
}
--生成获取数据的方法
---@return BGM
function GetBGMData(id)
    return BGM_Xls[tostring(id)]
end
--自动生成注释
---@class BGM : table 
---@field id number
---@field name string
---@field loopType number
---@field cuename string
---@field sheetName string
---@field sheetNameawb string
---@field volume number
---@field is3DPos number
---@field fadeInTime number
