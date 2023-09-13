local default = {leaderId=0,enName="",chCv="",jaCv="",born="",camp=0,team=0,birthday=xlsNilTable,age="",height=0,hobby="",wandShow=0,wandName="",wandWeight="",storyShow=0,story=0,voiceShow=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderBook_Xls : table 
LeaderBook_Xls =
{
    ["599996"]=setmetatable({leaderId=599996,enName="导师"},mt),
    ["599997"]=setmetatable({leaderId=599997,enName="Zeus"},mt),
    ["700000"]=setmetatable({leaderId=700000,enName="SHOPgirl"},mt),
    ["2001001"]=setmetatable({leaderId=2001001,enName="Faria",chCv="十四",jaCv="李震",born="诺斯海姆地区",camp=1,team=10001,birthday={[1]=2,[2]=6},age="16",height=1.63,hobby="记录见到的东西",wandShow=0,wandName="调停",wandWeight="3.3kg",storyShow=1,story=200100103,voiceShow=1},mt),
    ["2002001"]=setmetatable({leaderId=2002001,enName="Nana",chCv="蟲蟲",jaCv="李震",born="双峰地区",camp=1,team=10001,birthday={[1]=4,[2]=28},age="16",height=1.54,hobby="偷懒赚钱",wandShow=0,wandName="裁决",wandWeight="7.6kg",storyShow=1,story=200200103,voiceShow=1},mt),
    ["2003001"]=setmetatable({leaderId=2003001,enName="Charlotte",chCv="四白",jaCv="李震",born="双峰地区",camp=1,team=10001,birthday={[1]=6,[2]=1},age="16",height=1.62,hobby="唱歌",wandShow=0,wandName="虚妄",wandWeight="4.3kg",storyShow=1,story=200300103,voiceShow=1},mt),
    ["2004001"]=setmetatable({leaderId=2004001,enName="Willa",chCv="穆雪婷",jaCv="李震",born="未知",camp=1,team=10001,birthday={[1]=1,[2]=16},age="21",height=1.71,hobby="教训人",wandShow=0,wandName="慈悲",wandWeight="4.6kg",storyShow=1,story=200400103,voiceShow=1},mt),
    ["2005001"]=setmetatable({leaderId=2005001,enName="Vashti",chCv="陶典",jaCv="李震",born="未知",camp=1,team=10001,birthday={[1]=8,[2]=29},age="17",height=1.65,hobby="看书",wandShow=0,wandName="光耀",wandWeight="4.3kg",storyShow=1,story=200500103,voiceShow=1},mt),
    ["2006001"]=setmetatable({leaderId=2006001,enName="Nakai",chCv="吴迪",jaCv="李震",born="特罗姆斯雪原",camp=1,team=10002,birthday={[1]=9,[2]=24},age="19",height=1.68,hobby="冥想",wandShow=0,wandName="营火",wandWeight="5.7kg",storyShow=1,story=200600103,voiceShow=1},mt),
    ["2007001"]=setmetatable({leaderId=2007001,enName="Blank",chCv="陈雨",jaCv="李震",born="未知",camp=1,team=10002,birthday={[1]=6,[2]=29},age="15（？）",height=1.56,hobby="欣赏风景",wandShow=0,wandName="瓶",wandWeight="本重3.6kg【负重不限】",storyShow=1,story=200700103,voiceShow=1},mt),
    ["2008001"]=setmetatable({leaderId=2008001,enName="Yera",chCv="裴致莹",jaCv="李震",born="特罗姆斯雪原",camp=1,team=10002,birthday={[1]=1,[2]=18},age="26",height=1.68,hobby="战斗",wandShow=0,wandName="荒山",wandWeight="6.2kg",storyShow=1,story=200800103,voiceShow=1},mt),
    ["2009001"]=setmetatable({leaderId=2009001,enName="White",chCv="刘雯",jaCv="李震",born="特罗姆斯雪原",camp=1,team=10003,birthday={[1]=11,[2]=1},age="15",height=1.45,hobby="雪花、同伴",wandShow=0,wandName="凇",wandWeight="7.0kg",storyShow=1,story=200900103,voiceShow=1},mt),
    ["2010001"]=setmetatable({leaderId=2010001,enName="Alethea",chCv="龟娘",jaCv="李震",born="双峰地区",camp=1,team=10002,birthday={[1]=11,[2]=29},age="17",height=1.56,hobby="发明、符文编程",wandShow=0,wandName="米勒蒂",wandWeight="4.5kg",storyShow=1,story=201000103,voiceShow=1},mt),
    ["2011001"]=setmetatable({leaderId=2011001,enName="GwyrDolyn",chCv="陈婷婷",jaCv="李震",born="尼弗利亚群岛",camp=1,team=10004,birthday={[1]=12,[2]=4},age="21",height=1.74,hobby="纯粹的人与事物",wandShow=0,wandName="轻骑兵",wandWeight="4.8kg",storyShow=1,story=201100103,voiceShow=1},mt),
    ["2012001"]=setmetatable({leaderId=2012001,enName="Tawil",chCv="钟可",jaCv="李震",born="特罗姆斯雪原",camp=1,team=10003,birthday={[1]=9,[2]=16},age="18",height=1.62,hobby="研究料理",wandShow=0,wandName="驯鹿",wandWeight="4.5kg",storyShow=1,story=201200103,voiceShow=1},mt),
    ["2013001"]=setmetatable({leaderId=2013001,enName="Ray",chCv="宴宁",jaCv="李震",born="大维涅尔地区",camp=1,team=10004,birthday={[1]=12,[2]=8},age="18",height=1.6,hobby="甜食、医学",wandShow=0,wandName="象牙塔",wandWeight="3.2KG",storyShow=1,story=201300103,voiceShow=1},mt),
    ["2014001"]=setmetatable({leaderId=2014001,enName="Guimo",chCv="王雅欣",jaCv="李震",born="燧明",camp=2,team=10005,birthday={[1]=10,[2]=22},age="18",height=1.6,hobby="甜的巧克力",wandShow=0,wandName="赤霄",wandWeight="3.9kg",storyShow=1,story=201400103,voiceShow=1},mt),
    ["2015001"]=setmetatable({leaderId=2015001,enName="Hervor",chCv="谢莹",jaCv="李震",born="双峰地区",camp=2,team=10005,birthday={[1]=7,[2]=13},age="16",height=1.62,hobby="探索遗迹",wandShow=0,wandName="羽裂菱叶",wandWeight="3.1kg",storyShow=1,story=201500103,voiceShow=1},mt),
    ["2016001"]=setmetatable({leaderId=2016001,enName="Chun",chCv="瑞比",jaCv="李震",born="燧明",camp=2,team=10005,birthday={[1]=12,[2]=22},age="20",height=1.45,hobby="恶作剧",wandShow=0,wandName="南冥",wandWeight="3.4kg",storyShow=1,story=201600103,voiceShow=1},mt),
    ["2017001"]=setmetatable({leaderId=2017001,enName="Xandra",chCv="木雅瑞林",jaCv="李震",born="未知",camp=1,team=10003,birthday={[1]=5,[2]=8},age="14",height=1.45,hobby="西洋棋",wandShow=0,wandName="迷途者",wandWeight="3.6kg",storyShow=1,story=201700103,voiceShow=1},mt),
    ["2018001"]=setmetatable({leaderId=2018001,enName="Paft",chCv="洪海天",jaCv="李震",born="双峰地区",camp=1,team=10006,birthday={[1]=11,[2]=3},age="17",height=1.52,hobby="编曲",wandShow=0,wandName="环世界",wandWeight="5.0kg",storyShow=1,story=201800103,voiceShow=1},mt),
    ["2019001"]=setmetatable({leaderId=2019001,enName="Anti",chCv="多多",jaCv="李震",born="双峰地区",camp=1,team=10006,birthday={[1]=7,[2]=7},age="16",height=1.53,hobby="绘画",wandShow=0,wandName="蜜蜡",wandWeight="4.1kg",storyShow=1,story=201900103,voiceShow=1},mt),
    ["2020001"]=setmetatable({leaderId=2020001,enName="Edna",chCv="宋媛媛",jaCv="李震",born="未知",camp=1,team=10003,birthday={[1]=5,[2]=8},age="14",height=1.42,hobby="宅",wandShow=0,wandName="叙事者",wandWeight="3.4kg",storyShow=1,story=202000103,voiceShow=1},mt),
    ["2021001"]=setmetatable({leaderId=2021001,enName="Webber",chCv="MACE",jaCv="李震",born="大维涅尔地区",camp=1,team=10006,birthday={[1]=3,[2]=8},age="21",height=1.75,hobby="符文编程",wandShow=0,wandName="金丝绒",wandWeight="3.8kg",storyShow=1,story=202100103,voiceShow=1},mt),
    ["2023001"]=setmetatable({leaderId=2023001,enName="McDownroad",chCv="喵酱油",jaCv="李震",born="大维涅尔地区",camp=1,team=10006,birthday={[1]=7,[2]=9},age="23",height=1.7,hobby="催眠",wandShow=0,wandName="挚爱",wandWeight="5.6kg",storyShow=1,story=202300103,voiceShow=1},mt),
    ["2024001"]=setmetatable({leaderId=2024001,enName="Ollie",chCv="大汪",jaCv="李震",born="未知",camp=1,team=10007,birthday={[1]=7,[2]=29},age="19",height=1.75,hobby="滑板",wandShow=0,wandName="千狱",wandWeight="7.8kg",storyShow=1,story=202400103,voiceShow=1},mt),
    ["2025001"]=setmetatable({leaderId=2025001,enName="Calif",chCv="张琦",jaCv="李震",born="双峰地区",camp=1,team=10007,birthday={[1]=2,[2]=12},age="18",height=1.62,hobby="时尚",wandShow=0,wandName="酩酊香氛",wandWeight="5.8kg",storyShow=1,story=202500103,voiceShow=1},mt),
    ["2026001"]=setmetatable({leaderId=2026001,enName="Boning",chCv="周帅",jaCv="李震",born="特罗姆斯雪原",camp=1,team=10007,birthday={[1]=5,[2]=13},age="25",height=1.69,hobby="新奇的东西",wandShow=0,wandName="幻葬",wandWeight="6.3kg",storyShow=1,story=202600103,voiceShow=1},mt),
    ["2027001"]=setmetatable({leaderId=2027001,enName="Chaohu",chCv="秦紫翼",jaCv="李震",born="双峰地区",camp=1,team=10009,birthday={[1]=1,[2]=21},age="21",height=1.71,hobby="吃鱼",wandShow=0,wandName="鳍",wandWeight="3.5kg",storyShow=1,story=202700103,voiceShow=1},mt),
    ["2028001"]=setmetatable({leaderId=2028001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103},mt),
    ["2029001"]=setmetatable({leaderId=2029001,enName="Trilobita",chCv="蒋丽",jaCv="李震",born="双峰地区",camp=1,team=10009,birthday={[1]=9,[2]=22},age="15",height=1.55,hobby="化石收集",wandShow=0,wandName="二叶",wandWeight="3.2kg",storyShow=1,story=202900103,voiceShow=1},mt),
    ["2030001"]=setmetatable({leaderId=2030001,enName="Zooid",chCv="陈章",jaCv="李震",born="双峰地区",camp=1,team=10009,birthday={[1]=5,[2]=2},age="17",height=1.65,hobby="侦探小说",wandShow=0,wandName="雾巷",wandWeight="4.3kg",storyShow=1,story=203000103,voiceShow=1},mt),
    ["2031001"]=setmetatable({leaderId=2031001,enName="Heidr",chCv="启明星",jaCv="李震",born="双峰地区",camp=1,team=10008,birthday={[1]=1,[2]=12},age="16",height=1.58,hobby="清点快件",wandShow=0,wandName="风聆",wandWeight="3.1kg",storyShow=1,story=203100103,voiceShow=1},mt),
    ["2032001"]=setmetatable({leaderId=2032001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103},mt),
    ["2033001"]=setmetatable({leaderId=2033001,enName="Syn",chCv="徐慧",jaCv="李震",born="大维涅尔地区",camp=1,team=10010,birthday={[1]=4,[2]=20},age="21",height=1.65,hobby="执行任务",wandShow=0,wandName="辉耀",wandWeight="5.1kg",storyShow=1,story=203300103,voiceShow=1},mt),
    ["2034001"]=setmetatable({leaderId=2034001,enName="Thaler",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103,voiceShow=1},mt),
    ["2036001"]=setmetatable({leaderId=2036001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103,voiceShow=1},mt),
    ["2037001"]=setmetatable({leaderId=2037001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103},mt),
    ["2038001"]=setmetatable({leaderId=2038001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103},mt),
    ["2039001"]=setmetatable({leaderId=2039001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103},mt),
    ["2040001"]=setmetatable({leaderId=2040001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103},mt),
    ["2041001"]=setmetatable({leaderId=2041001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103},mt),
    ["2042001"]=setmetatable({leaderId=2042001,enName="aaaa",chCv="啊啊啊啊",jaCv="李震",born="BuZhiDao",camp=1,team=10001,birthday={[1]=11,[2]=29},age="17",height=1.7,hobby="BuZhiDao",wandShow=0,wandName="暂无",wandWeight="暂无",storyShow=0,story=200100103},mt),
}
--生成获取数据的方法
---@return LeaderBook
function GetLeaderBookData(id)
    return LeaderBook_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderBook : table 
---@field leaderId number
---@field enName string
---@field chCv string
---@field jaCv string
---@field born string
---@field camp number
---@field team number
---@field birthday table
---@field age string
---@field height number
---@field hobby string
---@field wandShow number
---@field wandName string
---@field wandWeight string
---@field storyShow number
---@field story number
---@field voiceShow number
