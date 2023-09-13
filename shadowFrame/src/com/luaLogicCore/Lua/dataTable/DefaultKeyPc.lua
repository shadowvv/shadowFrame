local default = {id=0,battleInputType=0,button="",inputName="",defaultKeyFor=xlsNilTable,defaultKeyPc="",defaultKeyPc2="",defaultKeyXbox="",defaultKeyXbox2="",rewrite=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class DefaultKeyPc_Xls : table 
DefaultKeyPc_Xls =
{
    ["1"]=setmetatable({id=1,battleInputType=6,button="普通攻击",inputName="Attack",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Mouse0",defaultKeyPc2="",defaultKeyXbox="JOY_RT",defaultKeyXbox2="",rewrite=1},mt),
    ["2"]=setmetatable({id=2,battleInputType=7,button="序曲",inputName="Skill",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="E",defaultKeyPc2="",defaultKeyXbox="JOY_RB",defaultKeyXbox2="",rewrite=1},mt),
    ["3"]=setmetatable({id=3,battleInputType=8,button="极奏",inputName="Jizou",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Q",defaultKeyPc2="",defaultKeyXbox="JOY_LB",defaultKeyXbox2="",rewrite=1},mt),
    ["4"]=setmetatable({id=4,battleInputType=5,button="闪避冲刺",inputName="Dash",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Space",defaultKeyPc2="",defaultKeyXbox="JOY_B",defaultKeyXbox2="",rewrite=1},mt),
    ["5"]=setmetatable({id=5,battleInputType=13,button="换弹",inputName="Reload",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="R",defaultKeyPc2="",defaultKeyXbox="JOY_X",defaultKeyXbox2="",rewrite=1},mt),
    ["6"]=setmetatable({id=6,battleInputType=210,button="交互",inputName="Interactive",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="F",defaultKeyPc2="",defaultKeyXbox="JOY_A",defaultKeyXbox2="",rewrite=1},mt),
    ["7"]=setmetatable({id=7,battleInputType=12,button="搜索目标",inputName="SearchEnemy",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Tab",defaultKeyPc2="",defaultKeyXbox="JOY_Y",defaultKeyXbox2="",rewrite=1},mt),
    ["8"]=setmetatable({id=8,battleInputType=202,button="1号位斯露德",inputName="Player1",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Alpha1",defaultKeyPc2="",defaultKeyXbox="JOY_DT",defaultKeyXbox2="",rewrite=1},mt),
    ["9"]=setmetatable({id=9,battleInputType=203,button="2号位斯露德",inputName="Player2",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Alpha2",defaultKeyPc2="",defaultKeyXbox="JOY_DL",defaultKeyXbox2="",rewrite=1},mt),
    ["10"]=setmetatable({id=10,battleInputType=204,button="3号位斯露德",inputName="Player3",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Alpha3",defaultKeyPc2="",defaultKeyXbox="JOY_DD",defaultKeyXbox2="",rewrite=1},mt),
    ["11"]=setmetatable({id=11,battleInputType=205,button="4号位斯露德",inputName="Player4",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Alpha4",defaultKeyPc2="",defaultKeyXbox="JOY_DR",defaultKeyXbox2="",rewrite=1},mt),
    ["18"]=setmetatable({id=18,battleInputType=201,button="战斗中暂停",inputName="Pause",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="Escape",defaultKeyPc2="",defaultKeyXbox="JOY_+",defaultKeyXbox2="",rewrite=0},mt),
    ["19"]=setmetatable({id=19,battleInputType=200,button="隐藏按键说明",inputName="HidePcTips",defaultKeyFor={[1]=1},defaultKeyPc="LeftControl",defaultKeyPc2="",defaultKeyXbox="JOY_-",defaultKeyXbox2="",rewrite=1},mt),
    ["20"]=setmetatable({id=20,battleInputType=14,button="教条号令",inputName="Weather",defaultKeyFor={[1]=1,[2]=2},defaultKeyPc="T",defaultKeyPc2="",defaultKeyXbox="JOY_LT",defaultKeyXbox2="",rewrite=1},mt),
}
--生成获取数据的方法
---@return DefaultKeyPc
function GetDefaultKeyPcData(id)
    return DefaultKeyPc_Xls[tostring(id)]
end
--自动生成注释
---@class DefaultKeyPc : table 
---@field id number
---@field battleInputType number
---@field button string
---@field inputName string
---@field defaultKeyFor table
---@field defaultKeyPc string
---@field defaultKeyPc2 string
---@field defaultKeyXbox string
---@field defaultKeyXbox2 string
---@field rewrite number
