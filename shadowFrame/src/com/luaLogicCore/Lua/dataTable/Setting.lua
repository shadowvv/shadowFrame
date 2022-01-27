---@class Setting_Xls : table 
Setting_Xls =
{
    ["100"]={id=100,type=1,typeSub=0,choiceValue=1,typeText="",des="声音-全局开关"},
    ["101"]={id=101,type=1,typeSub=1,choiceValue=60,typeText="",des="声音-音乐"},
    ["102"]={id=102,type=1,typeSub=2,choiceValue=60,typeText="",des="声音-音效"},
    ["103"]={id=103,type=1,typeSub=3,choiceValue=60,typeText="",des="声音-语音"},
    ["104"]={id=104,type=1,typeSub=4,choiceValue=0,typeText="",des="声音-语言"},
    ["301"]={id=301,type=3,typeSub=1,choiceValue=1,typeText="基础：受到攻击伤害震动；增强：增强攻击时的震动效果",des="游戏性-震动效果"},
    ["302"]={id=302,type=3,typeSub=2,choiceValue=1,typeText="受到部分敌人攻击前预警",des="游戏性-攻击预警"},
    ["303"]={id=303,type=3,typeSub=3,choiceValue=0,typeText="敌人弹幕通过角色平面后将立即隐藏",des="游戏性-敌人子弹隐藏"},
    ["304"]={id=304,type=3,typeSub=4,choiceValue=0,typeText="敌人显示辅助边缘线",des="游戏性-敌人辅助显示"},
    ["305"]={id=305,type=3,typeSub=5,choiceValue=2,typeText="数值越高摇杆越灵敏",des="游戏性-摇杆灵敏度"},
}
--生成获取数据的方法
---@return Setting
function GetSettingData(id)
    return Setting_Xls[tostring(id)]
end
--自动生成注释
---@class Setting : table 
---@field id number
---@field type number
---@field typeSub number
---@field choiceValue number
---@field typeText string
---@field des string
