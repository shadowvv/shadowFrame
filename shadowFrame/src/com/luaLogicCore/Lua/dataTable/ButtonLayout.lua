local default = {id=0,name="",dec="",parent=0,position=xlsNilTable,limitScale=xlsNilTable,scale=0,limitAlpha=xlsNilTable,alpha=0,limitSpace=xlsNilTable,hide=0,defaultHide=0,battleSkillIcon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ButtonLayout_Xls : table 
ButtonLayout_Xls =
{
    ["1"]=setmetatable({id=1,name="Point1",dec="射击",parent=6,position={[1]=-430,[2]=400},limitScale={[1]=0.5,[2]=1.2},scale=0.9,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=130,[2]=130},hide=0,defaultHide=0,battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["2"]=setmetatable({id=2,name="Point2",dec="技能",parent=6,position={[1]=-135,[2]=380},limitScale={[1]=0.8,[2]=1.5},scale=1.2,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=70,[2]=70},hide=0,defaultHide=0,battleSkillIcon="hero_skill_faniya_icon2"},mt),
    ["3"]=setmetatable({id=3,name="Point3",dec="极奏",parent=6,position={[1]=-600,[2]=105},limitScale={[1]=0.8,[2]=1.5},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=70,[2]=70},hide=0,defaultHide=0,battleSkillIcon="hero_skill_faniya_icon3"},mt),
    ["4"]=setmetatable({id=4,name="Point4",dec="闪避",parent=6,position={[1]=-400,[2]=105},limitScale={[1]=0.8,[2]=1.5},scale=1.2,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=70,[2]=70},hide=0,defaultHide=0,battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["5"]=setmetatable({id=5,name="Point5",dec="狙击开镜",parent=6,position={[1]=-205,[2]=565},limitScale={[1]=0.8,[2]=1.5},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=50,[2]=50},hide=0,defaultHide=0,battleSkillIcon="battle_btn_aim"},mt),
    ["6"]=setmetatable({id=6,name="Point6",dec="换弹",parent=6,position={[1]=-720,[2]=280},limitScale={[1]=0.8,[2]=1.5},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=50,[2]=50},hide=1,defaultHide=0,battleSkillIcon="battle_btn_reload"},mt),
    ["7"]=setmetatable({id=7,name="LeftRocker",dec="左摇杆",parent=3,position={[1]=390,[2]=270},limitScale={[1]=0.5,[2]=1.5},scale=0.8,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=184,[2]=184},hide=0,defaultHide=0},mt),
    ["8"]=setmetatable({id=8,name="Function1",dec="射击",parent=2,position={[1]=120,[2]=0},limitScale={[1]=0.5,[2]=1.2},scale=0.6,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=130,[2]=130},hide=1,defaultHide=1,battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["9"]=setmetatable({id=9,name="Function2",dec="搜索敌人",parent=6,position={[1]=-680,[2]=500},limitScale={[1]=0.8,[2]=1.5},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=60,[2]=60},hide=1,defaultHide=0,battleSkillIcon="battle_btn_searchenemy"},mt),
    ["10"]=setmetatable({id=10,name="RoleInfo",dec="队伍",parent=4,position={[1]=-260,[2]=-225},limitScale={[1]=0.8,[2]=1.5},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=210,[2]=205},hide=0,defaultHide=0},mt),
    ["11"]=setmetatable({id=11,name="MiniMap",dec="小地图",parent=1,position={[1]=184,[2]=-250},limitScale={[1]=0.8,[2]=1},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=120,[2]=120},hide=1,defaultHide=0},mt),
    ["12"]=setmetatable({id=12,name="Communication",dec="通信",parent=2,position={[1]=280,[2]=50},limitScale={[1]=0.8,[2]=1},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=280,[2]=76},hide=0,defaultHide=0},mt),
    ["13"]=setmetatable({id=13,name="Target",dec="关卡目标",parent=2,position={[1]=236,[2]=50},limitScale={[1]=0.8,[2]=1},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=236,[2]=106},hide=0,defaultHide=0},mt),
    ["14"]=setmetatable({id=14,name="Function7",dec="天气",parent=9,position={[1]=-360,[2]=95},limitScale={[1]=0.8,[2]=1.2},scale=1,limitAlpha={[1]=0.2,[2]=1},alpha=1,limitSpace={[1]=78,[2]=78},hide=0,defaultHide=0},mt),
}
--生成获取数据的方法
---@return ButtonLayout
function GetButtonLayoutData(id)
    return ButtonLayout_Xls[tostring(id)]
end
--自动生成注释
---@class ButtonLayout : table 
---@field id number
---@field name string
---@field dec string
---@field parent number
---@field position table
---@field limitScale table
---@field scale number
---@field limitAlpha table
---@field alpha number
---@field limitSpace table
---@field hide number
---@field defaultHide number
---@field battleSkillIcon string
