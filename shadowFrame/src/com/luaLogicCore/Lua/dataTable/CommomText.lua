local default = {id=0,param=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommomText_Xls : table 
CommomText_Xls =
{
    ["1"]=setmetatable({id=1,param="1、本游戏是一款3D角色扮演飞行射击游戏，适用于年满12周岁及以上的用户，建议未成年人在家长监护下使用游戏产品。\n2、本游戏的故事发生在架空幻想世界中，当前版本仅开放主线剧情与角色交互剧情，玩家可通过通关主线关卡、达成任务目标、游戏内交互等方式解锁并推进游戏的剧情内容。游戏中没有玩家间竞技对抗内容、没有基于文字和语音的陌生人社交系统。\n3、本游戏中有用户实名认证系统，认证为未成年人的用户将接受以下管理：\n3.1游戏中部分玩法和道具需要付费。未满8周岁的用户不能付费；8周岁以上未满16周岁的未成年人用户，单次充值金额不得超过50元人民币，每月充值金额累计不得超过200元人民币；16周岁以上的未成年人用户，单次充值金额不得超过100元人民币，每月充值金额累计不得超过400元人民币。\n3.2未成年用户每周五、周六、周日和法定节假日的20时至21时可使用1小时，其他时间不得使用。\n4、玩家可在游戏中体验扣人心弦的剧情内容、自由爽快的空战玩法，享受精美的画面与高品质音乐带来的出色视听体验。"},mt),
}
--生成获取数据的方法
---@return CommomText
function GetCommomTextData(id)
    return CommomText_Xls[tostring(id)]
end
--自动生成注释
---@class CommomText : table 
---@field id number
---@field param string
