local default = {id=0,defaultKey="",keyText="",keyImg=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class DefaultKeyShow_Xls : table 
DefaultKeyShow_Xls =
{
    ["1"]=setmetatable({id=1,defaultKey="Alpha1",keyText="1"},mt),
    ["2"]=setmetatable({id=2,defaultKey="Alpha2",keyText="2"},mt),
    ["3"]=setmetatable({id=3,defaultKey="Alpha3",keyText="3"},mt),
    ["4"]=setmetatable({id=4,defaultKey="Alpha4",keyText="4"},mt),
    ["5"]=setmetatable({id=5,defaultKey="Alpha5",keyText="5"},mt),
    ["6"]=setmetatable({id=6,defaultKey="Alpha6",keyText="6"},mt),
    ["7"]=setmetatable({id=7,defaultKey="Alpha7",keyText="7"},mt),
    ["8"]=setmetatable({id=8,defaultKey="Alpha8",keyText="8"},mt),
    ["9"]=setmetatable({id=9,defaultKey="Alpha9",keyText="9"},mt),
    ["10"]=setmetatable({id=10,defaultKey="Alpha0",keyText="0"},mt),
    ["11"]=setmetatable({id=11,defaultKey="JOY_-"},mt),
    ["12"]=setmetatable({id=12,defaultKey="JOY_+"},mt),
    ["13"]=setmetatable({id=13,defaultKey="JOY_A"},mt),
    ["14"]=setmetatable({id=14,defaultKey="JOY_B"},mt),
    ["15"]=setmetatable({id=15,defaultKey="JOY_DD"},mt),
    ["16"]=setmetatable({id=16,defaultKey="JOY_DL"},mt),
    ["17"]=setmetatable({id=17,defaultKey="JOY_DR"},mt),
    ["18"]=setmetatable({id=18,defaultKey="JOY_DT"},mt),
    ["19"]=setmetatable({id=19,defaultKey="JOY_LB"},mt),
    ["20"]=setmetatable({id=20,defaultKey="JOY_RB"},mt),
    ["21"]=setmetatable({id=21,defaultKey="JOY_RT"},mt),
    ["22"]=setmetatable({id=22,defaultKey="JOY_X"},mt),
    ["23"]=setmetatable({id=23,defaultKey="JOY_Y"},mt),
    ["24"]=setmetatable({id=24,defaultKey="LeftAlt",keyText="左Alt"},mt),
    ["25"]=setmetatable({id=25,defaultKey="LeftControl",keyText="左Ctrl"},mt),
    ["26"]=setmetatable({id=26,defaultKey="RightAlt",keyText="右Alt"},mt),
    ["27"]=setmetatable({id=27,defaultKey="RightControl",keyText="右Ctrl"},mt),
    ["28"]=setmetatable({id=28,defaultKey="Escape",keyText="Esc"},mt),
    ["29"]=setmetatable({id=29,defaultKey="Mouse0",keyText="左键",keyImg="icon_set_mouse_left"},mt),
    ["30"]=setmetatable({id=30,defaultKey="Mouse1",keyText="右键",keyImg="icon_set_mouse"},mt),
    ["31"]=setmetatable({id=31,defaultKey="Mouse3",keyText="滚轮上"},mt),
    ["32"]=setmetatable({id=32,defaultKey="Mouse4",keyText="滚轮下"},mt),
    ["33"]=setmetatable({id=33,defaultKey="Space",keyText="空格"},mt),
}
--生成获取数据的方法
---@return DefaultKeyShow
function GetDefaultKeyShowData(id)
    return DefaultKeyShow_Xls[tostring(id)]
end
--自动生成注释
---@class DefaultKeyShow : table 
---@field id number
---@field defaultKey string
---@field keyText string
---@field keyImg string
