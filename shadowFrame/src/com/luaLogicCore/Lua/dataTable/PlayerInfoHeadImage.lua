local default = {id=0,name="",icon="",open=0,unlockTip="",headImageLeaderId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PlayerInfoHeadImage_Xls : table 
PlayerInfoHeadImage_Xls =
{
    ["8000000"]=setmetatable({id=8000000,name="导师头像",icon="Nandaoshi_110_110_yuan",open=101,unlockTip="创建角色"},mt),
    ["8000001"]=setmetatable({id=8000001,name="导师头像",icon="Nvdaoshi_110_110_yuan",open=101,unlockTip="创建角色"},mt),
    ["8000010"]=setmetatable({id=8000010,name="德艺双馨",icon="deyishuangxin_110_110_yuan",open=450,unlockTip="运营活动获取"},mt),
    ["8000011"]=setmetatable({id=8000011,name="德高望重",icon="degaowangzhong_110_110_yuan",open=451,unlockTip="运营活动获取"},mt),
    ["8000012"]=setmetatable({id=8000012,name="废寝忘食",icon="feiqinwangshi_110_110_yuan",open=452,unlockTip="运营活动获取"},mt),
    ["8001001"]=setmetatable({id=8001001,name="法尼娅头像",icon="Faniya_110_110_yuan",open=401,unlockTip="获得法尼娅",headImageLeaderId=2001001},mt),
    ["8002001"]=setmetatable({id=8002001,name="奈纳头像",icon="Naina_110_110_yuan",open=402,unlockTip="获得奈纳",headImageLeaderId=2002001},mt),
    ["8003001"]=setmetatable({id=8003001,name="夏洛头像",icon="Xialuo_110_110_yuan",open=403,unlockTip="获得夏洛",headImageLeaderId=2003001},mt),
    ["8004001"]=setmetatable({id=8004001,name="维拉头像",icon="Weila_110_110_yuan",open=404,unlockTip="获得维拉",headImageLeaderId=2004001},mt),
    ["8005001"]=setmetatable({id=8005001,name="瓦希缇头像",icon="Waxiti_110_110_yuan",open=405,unlockTip="获得瓦希缇",headImageLeaderId=2005001},mt),
    ["8006001"]=setmetatable({id=8006001,name="娜卡伊头像",icon="Nakayi_110_110_yuan",open=406,unlockTip="获得娜卡伊",headImageLeaderId=2006001},mt),
    ["8007001"]=setmetatable({id=8007001,name="空头像",icon="Kong_110_110_yuan",open=407,unlockTip="获得空",headImageLeaderId=2007001},mt),
    ["8008001"]=setmetatable({id=8008001,name="耶拉头像",icon="Yela_110_110_yuan",open=408,unlockTip="获得耶拉",headImageLeaderId=2008001},mt),
    ["8009001"]=setmetatable({id=8009001,name="白头像",icon="Bai_110_110_yuan",open=409,unlockTip="获得白",headImageLeaderId=2009001},mt),
    ["8010001"]=setmetatable({id=8010001,name="阿莱西娅头像",icon="Alaixiya_110_110_yuan",open=410,unlockTip="获得阿莱西娅",headImageLeaderId=2010001},mt),
    ["8011001"]=setmetatable({id=8011001,name="格薇德林头像",icon="geweidelin_110_110_yuan",open=411,unlockTip="获得格薇德林",headImageLeaderId=2011001},mt),
    ["8012001"]=setmetatable({id=8012001,name="塔维尔头像",icon="Taweier_110_110_yuan",open=412,unlockTip="获得塔维尔",headImageLeaderId=2012001},mt),
    ["8013001"]=setmetatable({id=8013001,name="蕾头像",icon="lei_110_110_yuan",open=413,unlockTip="获得蕾",headImageLeaderId=2013001},mt),
    ["8014001"]=setmetatable({id=8014001,name="归陌头像",icon="guimo_110_110_yuan",open=414,unlockTip="获得归陌",headImageLeaderId=2014001},mt),
    ["8015001"]=setmetatable({id=8015001,name="赫尔薇头像",icon="heerwei_110_110_yuan",open=415,unlockTip="获得赫尔薇",headImageLeaderId=2015001},mt),
    ["8016001"]=setmetatable({id=8016001,name="椿头像",icon="chun_110_110_yuan",open=416,unlockTip="获得椿",headImageLeaderId=2016001},mt),
    ["8017001"]=setmetatable({id=8017001,name="珊多拉头像",icon="shanduola_110_110_yuan",open=417,unlockTip="获得珊多拉",headImageLeaderId=2017001},mt),
    ["8018001"]=setmetatable({id=8018001,name="泡芙头像",icon="paofu_110_110_yuan",open=418,unlockTip="获得泡芙",headImageLeaderId=2018001},mt),
    ["8019001"]=setmetatable({id=8019001,name="安迪头像",icon="andi_110_110_yuan",open=419,unlockTip="获得安迪",headImageLeaderId=2019001},mt),
    ["8020001"]=setmetatable({id=8020001,name="艾德娜头像",icon="aidena_110_110_yuan",open=420,unlockTip="获得艾德娜",headImageLeaderId=2020001},mt),
    ["8021001"]=setmetatable({id=8021001,name="韦伯头像",icon="weibo_110_110_yuan",open=421,unlockTip="获得韦伯",headImageLeaderId=2021001},mt),
    ["8023001"]=setmetatable({id=8023001,name="麦当然头像",icon="maidangran_110_110_yuan",open=423,unlockTip="获得麦当然",headImageLeaderId=2023001},mt),
    ["8024001"]=setmetatable({id=8024001,name="奥利头像",icon="aoli_110_110_yuan",open=424,unlockTip="获得奥利",headImageLeaderId=2024001},mt),
    ["8026001"]=setmetatable({id=8026001,name="剔骨头像",icon="tigu_110_110_yuan",open=426,unlockTip="获得剔骨",headImageLeaderId=2026001},mt),
    ["8029001"]=setmetatable({id=8029001,name="三叶头像",icon="sanye_110_110_yuan",open=429,unlockTip="获得三叶",headImageLeaderId=2029001},mt),
    ["8033001"]=setmetatable({id=8033001,name="真理头像",icon="zhenli_110_110_yuan",open=434,unlockTip="获得真理",headImageLeaderId=2033001},mt),
    ["8021002"]=setmetatable({id=8021002,name="纯白夜曲头像",icon="weibo1_110_110_yuan",open=431,unlockTip="获得纯白夜曲",headImageLeaderId=2021001},mt),
    ["8021003"]=setmetatable({id=8021003,name="幽谧晚歌头像",icon="weibo2_110_110_yuan",open=432,unlockTip="获得幽谧晚歌",headImageLeaderId=2021001},mt),
    ["8023002"]=setmetatable({id=8023002,name="典雅骑士头像",icon="maidangran1_110_110_yuan",open=433,unlockTip="获得典雅骑士",headImageLeaderId=2023001},mt),
    ["8001002"]=setmetatable({id=8001002,name="云白头像",icon="Faniya1_110_110_yuan",open=430,unlockTip="获得云白",headImageLeaderId=2001001},mt),
}
--生成获取数据的方法
---@return PlayerInfoHeadImage
function GetPlayerInfoHeadImageData(id)
    return PlayerInfoHeadImage_Xls[tostring(id)]
end
--自动生成注释
---@class PlayerInfoHeadImage : table 
---@field id number
---@field name string
---@field icon string
---@field open number
---@field unlockTip string
---@field headImageLeaderId number
