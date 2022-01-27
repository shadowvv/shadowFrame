---@class UIView_Xls : table 
UIView_Xls =
{
    ["UILogin"]={id="UILogin",des="测试界面",layer=2000},
    ["UITask"]={id="UITask",des="任务界面",layer=2000,sceneName="",openId=0,showBack=1,showHome=1,showCurrency1=1},
    ["UITopMenu"]={id="UITopMenu",des="顶部菜单",layer=2000},
    ["UIMain"]={id="UIMain",des="主界面",layer=2000},
    ["UICombat"]={id="UICombat",des="战斗UI",layer=2000},
    ["UILoading"]={id="UILoading",des="加载",layer=2000},
    ["UISignInMonthly"]={id="UISignInMonthly",des="月签到",layer=3000},
    ["UIPlotDialogue"]={id="UIPlotDialogue",des="剧情对话",layer=2000},
    ["UIPlotDialogueHistory"]={id="UIPlotDialogueHistory",des="剧情对话历史记录",layer=3000},
    ["UIPlotDialogueSkip"]={id="UIPlotDialogueSkip",des="剧情对话跳过面板",layer=3000},
    ["UIPlayerInfo"]={id="UIPlayerInfo",des="玩家信息",layer=2000,sceneName="",openId=0,showBack=1,showHome=1},
    ["UIMail"]={id="UIMail",des="邮件",layer=2000,sceneName="",openId=0,showBack=1,showHome=1},
    ["UIHeroList"]={id="UIHeroList",des="角色列表",layer=2000,sceneName="",openId=0,showBack=1,showHome=1},
    ["UIHeroDevelop"]={id="UIHeroDevelop",des="角色养成",layer=2000,sceneName="",openId=0,showBack=1,showHome=1},
    ["UIHeroListScreen"]={id="UIHeroListScreen",des="角色列表筛选",layer=3000},
    ["UIHeroListSort"]={id="UIHeroListSort",des="角色列表排序",layer=3000},
    ["UINotice"]={id="UINotice",des="游戏内公告",layer=3000},
    ["UIHeroSkillPart"]={id="UIHeroSkillPart",des="角色养成技能页签",layer=3000},
    ["UIMapShow"]={id="UIMapShow",des="左下地点显示",layer=2000},
    ["UIHeroQualityPart"]={id="UIHeroQualityPart",des="角色养成位阶页签",layer=3000},
    ["UIPlayerInfoShowCard"]={id="UIPlayerInfoShowCard",des="玩家对外信息展示",layer=3000,sceneName="",openId=0,showBack=1,showHome=1},
    ["UIChangeName"]={id="UIChangeName",des="玩家改名",layer=3000},
    ["UIChangeBirthday"]={id="UIChangeBirthday",des="玩家改生日",layer=3000},
    ["UIChangeHead"]={id="UIChangeHead",des="玩家改头像",layer=3000},
    ["UIGacha"]={id="UIGacha",des="抽卡",layer=2000,sceneName="",openId=0,showBack=1,showHome=1,showCurrency1=1},
    ["UIGachaRecord"]={id="UIGachaRecord",des="抽卡记录",layer=3000},
    ["UIGachaRule"]={id="UIGachaRule",des="抽卡规则",layer=3000},
    ["UIGachaResultShow"]={id="UIGachaResultShow",des="抽卡跳过",layer=2000},
    ["UIGachaTenResult"]={id="UIGachaTenResult",des="抽卡十连结果页",layer=3000},
    ["UIAchievement"]={id="UIAchievement",des="成就",layer=2000,sceneName="",openId=0,showBack=1,showHome=1,showCurrency1=1},
    ["UIAchievementDetail"]={id="UIAchievementDetail",des="成就详情",layer=2000,sceneName="",openId=0,showBack=1,showHome=1,showCurrency1=1},
    ["UIPlayerLevelUp"]={id="UIPlayerLevelUp",des="导师升级",layer=2000},
    ["UIShowHeroSwitch"]={id="UIShowHeroSwitch",des="导师切换展示角色",layer=3000},
    ["UIItemGetShow"]={id="UIItemGetShow",des="物品获得展示页",layer=3000},
    ["UIShop"]={id="UIShop",des="商城",layer=2000,sceneName="",openId=0,showBack=1,showHome=1},
    ["UIShopPropConfirm"]={id="UIShopPropConfirm",des="商城购买二次确认",layer=3000},
    ["UIShopRefresh"]={id="UIShopRefresh",des="商城刷新",layer=3000},
    ["UIShopClothScreen"]={id="UIShopClothScreen",des="商城皮肤筛选",layer=3000},
    ["UICreateRole"]={id="UICreateRole",des="创角",layer=2000},
    ["UINetBlock"]={id="UINetBlock",des="弱网重试网络屏蔽",layer=3000},
}
--生成获取数据的方法
---@return UIView
function GetUIViewData(id)
    return UIView_Xls[tostring(id)]
end
--自动生成注释
---@class UIView : table 
---@field id string
---@field des string
---@field layer number
---@field sceneName string
---@field openId number
---@field showBack number
---@field showHome number
---@field showCurrency1 number
