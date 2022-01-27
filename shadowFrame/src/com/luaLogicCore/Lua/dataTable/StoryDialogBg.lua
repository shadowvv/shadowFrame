---@class StoryDialogBg_Xls : table 
StoryDialogBg_Xls =
{
    ["1"]={id=1,des1="纯黑背景",picter="UI_bg_black"},
    ["3"]={id=3,des1="纯白背景",picter="UI_bg_white"},
    ["103"]={id=103,des1="【BG 2 控制厅。】",picter="UI_bg_kongzhiting"},
    ["104"]={id=104,des1="【插图1 ： 初遇遗迹】",picter="UI_bg_yiji"},
    ["105"]={id=105,des1="临时资源【插图5:图5a：回归圆环】",picter="UI_bg_huiguiyuanhuan_a"},
    ["106"]={id=106,des1="临时资源【插图5:图5b：回归圆环】",picter="UI_bg_huiguiyuanhuan_b"},
    ["107"]={id=107,des1="临时资源【BG3 被污染的云层 】",picter="UI_bg_beiwurandeyunceng"},
    ["108"]={id=108,des1="临时资源【BG4 污染云层，尼伯赞歌 】",picter="UI_bg_wurandeyibozange"},
    ["109"]={id=109,des1="临时资源【插画2】",picter="UI_bg_faniyashike_a"},
    ["110"]={id=110,des1="临时资源【插画3】",picter="UI_bg_faniyashike_b"},
    ["111"]={id=111,des1="临时资源【1-1的奈纳】",picter="UI_bg_naina"},
    ["112"]={id=112,des1="临时资源【尼伯赞歌甲板角落】",picter="UI_bg_jiabanjiaoluo",des2="新序章使用"},
    ["113"]={id=113,des1="临时资源【异生体展露头角】",picter="UI_bg_yishengti"},
    ["114"]={id=114,des1="临时资源【空中的异生体包围法尼娅】",picter="UI_bg_yishengtibaoweifaniya"},
    ["115"]={id=115,des1="临时资源【站在异空坍缩中心的两个背影】",picter="UI_bg_lianggebeiying"},
    ["116"]={id=116,des1="临时资源【斯露德驻队】",picter="UI_bg_siludezhudui"},
    ["117"]={id=117,des1="临时资源【黄昏的温德蓝德低空】",picter="UI_bg_wendelandehuanghun"},
    ["118"]={id=118,des1="临时资源【被毁的斯露德驻队，黄昏】",picter="UI_bg_huidiaosiludezhuduihuanghun"},
    ["119"]={id=119,des1="临时资源【水坝，黄昏】",picter="UI_bg_shuibahuanghun"},
    ["120"]={id=120,des1="临时资源【水坝泄洪】",picter="UI_bg_shuibaxiehong"},
    ["121"]={id=121,des1="临时资源【飞鸟的翅膀之下】",picter="UI_bg_feiniaochibangxia"},
    ["122"]={id=122,des1="临时资源【埃达】",picter="UI_bg_tiankongyewanyu"},
    ["123"]={id=123,des1="临时资源【插画4 血流的街道】",picter="UI_bg_xueliudejiedao"},
    ["124"]={id=124,des1="临时资源【驻队的最后一刻】",picter="UI_bg_zhuduidezuihouyike"},
    ["125"]={id=125,des1="临时资源【田野边的河道】",picter="UI_bg_tianyebiandehedao"},
    ["126"]={id=126,des1="临时资源【主巨人的黄昏】",picter="UI_bg_zhujvrendehuanghun"},
    ["127"]={id=127,des1="临时资源【尼伯赞歌甲板角落】",picter="UI_bg_jiabanjiaoluo"},
    ["128"]={id=128,des1="新版序章2520*1080 【维拉在躺倒在地的导师身边】",picter="UI_bg_weilahedaoshi"},
    ["129"]={id=129,des1="新版序章2520*1080 【控制室】",picter="UI_bg_zhukongshi"},
    ["130"]={id=130,des1="新版序章2520*1080 【源能海天空】",picter="UI_bg_yuannenghaitiankong"},
    ["131"]={id=131,des1="新版序章2520*1080 【尼博赞歌】",picter="UI_bg_nibozange"},
    ["132"]={id=132,des1="新版序章2520*1080 【导师很惨的倒下】",picter="UI_bg_daoshidaoxia"},
    ["133"]={id=133,des1="新版序章2520*1080 【意识之海】",picter="UI_bg_yishizhihai"},
    ["134"]={id=134,des1="新版序章2520*1080 【法尼亚惊醒】",picter="UI_bg_faniyajingxing"},
    ["135"]={id=135,des1="新版序章2520*1080 【法尼亚异生体】",picter="UI_bg_faniyayishengti"},
    ["136"]={id=136,des1="新版序章2520*1080 【小队齐聚】",picter="UI_bg_xiaoduiqiju"},
    ["140"]={id=140,des1="新版序章2520*108 【天空】",picter="UI_bg_tiankong",des2="新序章使用"},
}
--生成获取数据的方法
---@return StoryDialogBg
function GetStoryDialogBgData(id)
    return StoryDialogBg_Xls[tostring(id)]
end
--自动生成注释
---@class StoryDialogBg : table 
---@field id number
---@field des1 string
---@field picter string
---@field des2 string
