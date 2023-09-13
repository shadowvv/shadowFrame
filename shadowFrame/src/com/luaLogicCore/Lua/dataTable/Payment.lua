local default = {id=0,paymentName="",paymentDesc="",paymentId="",paymentPrice=0,paymentDiamon=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Payment_Xls : table 
Payment_Xls =
{
    ["1"]=setmetatable({id=1,paymentName="60源晶钻",paymentDesc="花费6元人民币购买60源晶钻",paymentId="com.bilibili.thd.item0001",paymentPrice=600,paymentDiamon=60},mt),
    ["2"]=setmetatable({id=2,paymentName="300源晶钻",paymentDesc="花费30元人民币购买300源晶钻",paymentId="com.bilibili.thd.item0002",paymentPrice=3000,paymentDiamon=300},mt),
    ["3"]=setmetatable({id=3,paymentName="980源晶钻",paymentDesc="花费98元人民币购买980源晶钻",paymentId="com.bilibili.thd.item0003",paymentPrice=9800,paymentDiamon=980},mt),
    ["4"]=setmetatable({id=4,paymentName="1980源晶钻",paymentDesc="花费198元人民币购买1980源晶钻",paymentId="com.bilibili.thd.item0004",paymentPrice=19800,paymentDiamon=1980},mt),
    ["5"]=setmetatable({id=5,paymentName="3280源晶钻",paymentDesc="花费328元人民币购买3280源晶钻",paymentId="com.bilibili.thd.item0005",paymentPrice=32800,paymentDiamon=3280},mt),
    ["6"]=setmetatable({id=6,paymentName="6480源晶钻",paymentDesc="花费648元人民币购买6480源晶钻",paymentId="com.bilibili.thd.item0006",paymentPrice=64800,paymentDiamon=6480},mt),
    ["7"]=setmetatable({id=7,paymentName="晴月卡",paymentDesc="花费30元人民币购买晴月卡",paymentId="com.bilibili.thd.item9006",paymentPrice=3000,paymentDiamon=300},mt),
    ["8"]=setmetatable({id=8,paymentName="源晶共鸣礼（小）",paymentDesc="限购1次。花费68元人民币购买源晶共鸣礼（小）",paymentId="com.bilibili.thd.item9002",paymentPrice=6800,paymentDiamon=680},mt),
    ["9"]=setmetatable({id=9,paymentName="源晶共鸣礼（中）",paymentDesc="限购1次。花费128元人民币购买源晶共鸣礼（中）",paymentId="com.bilibili.thd.item9003",paymentPrice=12800,paymentDiamon=1280},mt),
    ["10"]=setmetatable({id=10,paymentName="源晶共鸣礼（大）",paymentDesc="限购1次。花费328元人民币购买源晶共鸣礼（大）",paymentId="com.bilibili.thd.item9004",paymentPrice=32800,paymentDiamon=3280},mt),
    ["11"]=setmetatable({id=11,paymentName="源晶共鸣礼（豪华）",paymentDesc="限购1次。花费648元人民币购买源晶共鸣礼（豪华）",paymentId="com.bilibili.thd.item9005",paymentPrice=64800,paymentDiamon=6480},mt),
    ["12"]=setmetatable({id=12,paymentName="深空之旅",paymentDesc="花费68元人民币解锁天空战令的深空之旅奖励",paymentId="com.bilibili.thd.item9007",paymentPrice=6800,paymentDiamon=680},mt),
    ["13"]=setmetatable({id=13,paymentName="新人入门支持套装",paymentDesc="限购1次。花费6元人民币购买新人入门支持套装",paymentId="com.bilibili.thd.item9008",paymentPrice=600,paymentDiamon=60},mt),
    ["14"]=setmetatable({id=14,paymentName="新人初级支持套装",paymentDesc="限购1次。花费30元人民币购买新人初级支持套装",paymentId="com.bilibili.thd.item9009",paymentPrice=3000,paymentDiamon=300},mt),
    ["15"]=setmetatable({id=15,paymentName="新人中级支持套装",paymentDesc="限购1次。花费68元人民币购买新人中级支持套装",paymentId="com.bilibili.thd.item9010",paymentPrice=6800,paymentDiamon=680},mt),
    ["16"]=setmetatable({id=16,paymentName="新人高级支持套装",paymentDesc="限购1次。花费98元人民币购买新人高级支持套装",paymentId="com.bilibili.thd.item9011",paymentPrice=9800,paymentDiamon=980},mt),
    ["17"]=setmetatable({id=17,paymentName="新人特级支持套装",paymentDesc="限购1次。花费128元人民币购买新人特级支持套装",paymentId="com.bilibili.thd.item9012",paymentPrice=12800,paymentDiamon=1280},mt),
    ["18"]=setmetatable({id=18,paymentName="每周共鸣支援套装",paymentDesc="花费68元人民币购买每周共鸣支援套装",paymentId="com.bilibili.thd.item9013",paymentPrice=6800,paymentDiamon=680},mt),
    ["19"]=setmetatable({id=19,paymentName="澄空之旅",paymentDesc="花费68元人民币解锁天空战令的澄空之旅奖励",paymentId="com.bilibili.thd.item9014",paymentPrice=6800,paymentDiamon=680},mt),
    ["20"]=setmetatable({id=20,paymentName="共鸣特别支援套装",paymentDesc="花费68元人民币购买共鸣特别支援套装",paymentId="com.bilibili.thd.item9015",paymentPrice=6800,paymentDiamon=680},mt),
    ["21"]=setmetatable({id=21,paymentName="瓦希缇的祝福",paymentDesc="花费6元人民币购买瓦希缇的祝福",paymentId="com.bilibili.thd.item9016",paymentPrice=600,paymentDiamon=60},mt),
    ["22"]=setmetatable({id=22,paymentName="空的祝福",paymentDesc="花费30元人民币购买空的祝福",paymentId="com.bilibili.thd.item9017",paymentPrice=3000,paymentDiamon=300},mt),
    ["23"]=setmetatable({id=23,paymentName="白的祝福",paymentDesc="花费30元人民币购买白的祝福",paymentId="com.bilibili.thd.item9018",paymentPrice=3000,paymentDiamon=300},mt),
    ["24"]=setmetatable({id=24,paymentName="格薇德林的祝福",paymentDesc="花费68元人民币购买格薇德林的祝福",paymentId="com.bilibili.thd.item9019",paymentPrice=6800,paymentDiamon=680},mt),
    ["25"]=setmetatable({id=25,paymentName="归陌的祝福",paymentDesc="花费128元人民币购买归陌的祝福",paymentId="com.bilibili.thd.item9020",paymentPrice=12800,paymentDiamon=1280},mt),
    ["26"]=setmetatable({id=26,paymentName="椿的祝福",paymentDesc="花费328元人民币购买椿的祝福",paymentId="com.bilibili.thd.item9021",paymentPrice=32800,paymentDiamon=3280},mt),
}
--生成获取数据的方法
---@return Payment
function GetPaymentData(id)
    return Payment_Xls[tostring(id)]
end
--自动生成注释
---@class Payment : table 
---@field id number
---@field paymentName string
---@field paymentDesc string
---@field paymentId string
---@field paymentPrice number
---@field paymentDiamon number
