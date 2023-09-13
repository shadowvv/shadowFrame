local default = {id=0,cardType=0,limit=0,buyRewardId=xlsNilTable,buyRewardNum=xlsNilTable,dailyRewardId=xlsNilTable,dailyRewardNum=xlsNilTable,timeLast=0,desc1="",desc2="",popupTitle="",popupDesc="",cardTitle="",cardBg="",cardTimeLast="",cardAlreadyGet="",mailId=0,mailIdReissue=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PeriodCard_Xls : table 
PeriodCard_Xls =
{
    ["1"]=setmetatable({id=1,cardType=10015,limit=60,buyRewardId={[1]=12},buyRewardNum={[1]=300},dailyRewardId={[1]=11},dailyRewardNum={[1]=90},timeLast=30,desc1="有效期持续{1}天！",desc2="累计可获得300源晶钻和2700源晶碎！",popupTitle="晴月卡说明",popupDesc="1.每次购买晴月卡后，可立刻获得{1}{2}。并在接下来的{3}日内，每日登录可领取{4}{5}。\n2.当月卡剩余时间>{6}天时，将无法通过重复购买来延长剩余时间。\n3.首次购买晴月卡时，当日登录奖励需返回首页后才能获得。",cardTitle="txt_store_yueka_i18n"},mt),
    ["2"]=setmetatable({id=2,cardType=90001,limit=-1,buyRewardId={[1]=1060002},buyRewardNum={[1]=3},dailyRewardId={[1]=13},dailyRewardNum={[1]=60},timeLast=7,desc1="有效期持续{1}天！期间限购1次！",desc2="累计可获得600感知",popupTitle="感知特别支援",popupDesc="1.每次购买感知特别支援后，可立刻获得{1}{2}。并在接下来的{3}日内，每日登录奖励{4}{5}将通过邮件发放。\n2.感知特别支援无法通过重复购买来延长剩余时间。\n3.首次购买感知特别支援时，当日登录奖励将发送到邮箱。",cardTitle="",cardBg="img_store_zhouka2_temp",cardTimeLast="img_store_greentime",cardAlreadyGet="img_store_greenget",mailId=90002,mailIdReissue=90003},mt),
    ["3"]=setmetatable({id=3,cardType=90001,limit=-1,buyRewardId={[1]=1000001},buyRewardNum={[1]=5},dailyRewardId={[1]=1000001},dailyRewardNum={[1]=1},timeLast=7,desc1="有效期持续{1}天！期间限购1次！",desc2="累计可获得12个聆听圣钥",popupTitle="共鸣特别支援",popupDesc="1.每次购买共鸣特别支援后，可立刻获得{1}{2}。并在接下来的{3}日内，每日登录奖励{4}{5}将通过邮件发放。\n2.共鸣特别支援无法通过重复购买来延长剩余时间。\n3.首次购买共鸣特别支援时，当日登录奖励将发送到邮箱。",cardTitle="",cardBg="img_store_zhouka1_temp",cardTimeLast="img_store_pinktime",cardAlreadyGet="img_store_pinkget",mailId=90004,mailIdReissue=90005},mt),
}
--生成获取数据的方法
---@return PeriodCard
function GetPeriodCardData(id)
    return PeriodCard_Xls[tostring(id)]
end
--自动生成注释
---@class PeriodCard : table 
---@field id number
---@field cardType number
---@field limit number
---@field buyRewardId table
---@field buyRewardNum table
---@field dailyRewardId table
---@field dailyRewardNum table
---@field timeLast number
---@field desc1 string
---@field desc2 string
---@field popupTitle string
---@field popupDesc string
---@field cardTitle string
---@field cardBg string
---@field cardTimeLast string
---@field cardAlreadyGet string
---@field mailId number
---@field mailIdReissue number
