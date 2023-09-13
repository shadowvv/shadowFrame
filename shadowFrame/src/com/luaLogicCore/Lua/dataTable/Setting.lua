local default = {id=0,type=0,valueType=0,choiceValue=0,typeText=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Setting_Xls : table 
Setting_Xls =
{
    ["100"]=setmetatable({id=100,type=1,valueType=1,choiceValue=1,typeText="默认全局声音开关（0-关，1-开）"},mt),
    ["101"]=setmetatable({id=101,type=1,valueType=2,choiceValue=60,typeText="默认音乐音量"},mt),
    ["102"]=setmetatable({id=102,type=1,valueType=2,choiceValue=60,typeText="默认音效音量"},mt),
    ["103"]=setmetatable({id=103,type=1,valueType=2,choiceValue=60,typeText="默认语音音量"},mt),
    ["104"]=setmetatable({id=104,type=1,valueType=2,choiceValue=100,typeText="默认主音量"},mt),
    ["105"]=setmetatable({id=105,type=1,valueType=1,choiceValue=0,typeText="PC后台播放声音配置"},mt),
    ["211"]=setmetatable({id=211,type=2,valueType=2,choiceValue=60,typeText="默认异形屏适配值（0-100）"},mt),
    ["301"]=setmetatable({id=301,type=3,valueType=1,choiceValue=1,typeText="1开、0关"},mt),
    ["302"]=setmetatable({id=302,type=3,valueType=1,choiceValue=0,typeText="1跟随、0固定"},mt),
    ["303"]=setmetatable({id=303,type=3,valueType=1,choiceValue=1,typeText="1开、0关"},mt),
    ["304"]=setmetatable({id=304,type=3,valueType=1,choiceValue=0,typeText="默认攻击方式（0-手动开火，1-自动开火）"},mt),
    ["305"]=setmetatable({id=305,type=3,valueType=1,choiceValue=0,typeText="默认手动上弹"},mt),
    ["306"]=setmetatable({id=306,type=3,valueType=1,choiceValue=0,typeText="默认小地图显示"},mt),
    ["307"]=setmetatable({id=307,type=3,valueType=2,choiceValue=50,typeText="默认灵敏度（下限<默认灵敏度<上限）"},mt),
    ["308"]=setmetatable({id=308,type=3,valueType=1,choiceValue=1,typeText="使用手机操控模式"},mt),
    ["309"]=setmetatable({id=309,type=3,valueType=2,choiceValue=50,typeText="默认灵敏度（下限<默认灵敏度<上限）"},mt),
    ["310"]=setmetatable({id=310,type=3,valueType=1,choiceValue=1,typeText="1开、0关"},mt),
    ["401"]=setmetatable({id=401,type=4,valueType=2,choiceValue=33,typeText="默认灵敏度（下限<默认灵敏度<上限）"},mt),
    ["501"]=setmetatable({id=501,type=5,valueType=2,choiceValue=33,typeText="默认灵敏度（下限<默认灵敏度<上限）"},mt),
    ["901"]=setmetatable({id=901,type=9,valueType=2,choiceValue=20,typeText="镜头灵敏度下限（<上限，>0）"},mt),
    ["902"]=setmetatable({id=902,type=9,valueType=2,choiceValue=80,typeText="镜头灵敏度上限（>下限，<99）"},mt),
    ["9301"]=setmetatable({id=9301,type=3,valueType=1,choiceValue=1,typeText="废弃"},mt),
    ["9302"]=setmetatable({id=9302,type=3,valueType=1,choiceValue=0,typeText="废弃"},mt),
    ["9303"]=setmetatable({id=9303,type=3,valueType=1,choiceValue=0,typeText="废弃"},mt),
    ["9304"]=setmetatable({id=9304,type=3,valueType=2,choiceValue=50,typeText="废弃"},mt),
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
---@field valueType number
---@field choiceValue number
---@field typeText string
