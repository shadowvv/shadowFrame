local default = {iD=0,senderId=0,banner="",title="",content="",fixedRewardId=0,term=0,itemIdS=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Mail_Xls : table 
Mail_Xls =
{
    ["20001"]=setmetatable({iD=20001,senderId=1,banner="mile_disanjieti.png",title="举报反馈",content="[000000]收到您在{0}提交的对ID{1}的举报，举报内容发送至控制区行为管理局进行裁定，感谢您的积极举报，控制区对违反条例的行为必将彻查。[-]",fixedRewardId=0,term=3},mt),
    ["20002"]=setmetatable({iD=20002,senderId=1,banner="mile_disanjieti.png",title="仓库道具超出",content="仓库已满，道具将通过邮件发放，请尽快清理仓库避免错过奖励",fixedRewardId=0,term=30},mt),
    ["30001"]=setmetatable({iD=30001,senderId=1,banner="mile_disanjieti.png",title="脉流巡检进度奖励",content="您有一份脉流巡检补给没有领取，感谢您为保障源能脉络做出的贡献。",fixedRewardId=0,term=7},mt),
    ["30002"]=setmetatable({iD=30002,senderId=1,banner="mile_disanjieti.png",title="脉流巡检任务奖励",content="您有一份脉流巡检任务奖励没有领取，感谢您和您的队友为保障源能脉络做出的贡献。",fixedRewardId=0,term=7},mt),
    ["40001"]=setmetatable({iD=40001,senderId=1,banner="mile_disanjieti.png",title="[交界虚空]周期报酬",content="[交界虚空]即将重构，本周期报酬已根据您的最终勋阶发放至邮箱，请注意查收。",fixedRewardId=0,term=7},mt),
    ["40002"]=setmetatable({iD=40002,senderId=1,banner="mile_disanjieti.png",title="[交界虚空]周期报酬",content="[交界虚空]即将重构，本周期报酬已根据您的最终勋阶发放至邮箱，请注意查收。",fixedRewardId=0,term=7},mt),
    ["40003"]=setmetatable({iD=40003,senderId=1,banner="mile_disanjieti.png",title="[交界虚空]周期报酬",content="[交界虚空]即将重构，本周期报酬已根据您的最终勋阶发放至邮箱，请注意查收。",fixedRewardId=0,term=7},mt),
    ["40004"]=setmetatable({iD=40004,senderId=1,banner="mile_disanjieti.png",title="[交界虚空]周期报酬",content="[交界虚空]即将重构，本周期报酬已根据您的最终勋阶发放至邮箱，请注意查收。",fixedRewardId=0,term=7},mt),
    ["40005"]=setmetatable({iD=40005,senderId=1,banner="mile_disanjieti.png",title="[交界虚空]周期报酬",content="[交界虚空]即将重构，本周期报酬已根据您的最终勋阶发放至邮箱，请注意查收。",fixedRewardId=0,term=7},mt),
    ["40006"]=setmetatable({iD=40006,senderId=1,banner="mile_disanjieti.png",title="[交界虚空]周期报酬",content="[交界虚空]即将重构，本周期报酬已根据您的最终勋阶发放至邮箱，请注意查收。",fixedRewardId=0,term=7},mt),
    ["60001"]=setmetatable({iD=60001,senderId=1,banner="mile_disanjieti.png",title="活动到期奖励发放",content="您有一份奖励在活动到期后仍未领取，活动未领取奖励当前已根据您在本次活动中的完成状况发放至邮箱，请注意查收。",fixedRewardId=0,term=30},mt),
    ["50001"]=setmetatable({iD=50001,senderId=1,banner="mile_disanjieti.png",title="赛季奖励",content="您上个赛季有未领取的奖励，请注意查收。",fixedRewardId=0,term=7},mt),
    ["50002"]=setmetatable({iD=50002,senderId=1,banner="mile_disanjieti.png",title="联行排名奖励",content="您所在的队伍在联行玩法中取得了第{1}名的成绩，获得以下奖励",fixedRewardId=0,term=7},mt),
    ["50003"]=setmetatable({iD=50003,senderId=1,banner="mile_disanjieti.png",title="联行奖励",content="您在上次联行玩法中有未领取的奖励，请注意查收",fixedRewardId=0,term=7},mt),
    ["50004"]=setmetatable({iD=50004,senderId=1,banner="mile_disanjieti.png",title="联行创建队伍奖励返还",content="您的队伍已被合并进其他队伍，这是您创建队伍的消耗，请注意查收",fixedRewardId=0,term=7},mt),
    ["70001"]=setmetatable({iD=70001,senderId=1,banner="mile_disanjieti.png",title="物资返还",content="为您返还巡视任务消耗的物资。仓库已满，道具通过邮件发放，请尽快清理仓库避免错过奖励。",fixedRewardId=0,term=30},mt),
    ["80001"]=setmetatable({iD=80001,senderId=1,banner="mile_disanjieti.png",title="《斯露德》测试充值返还",content="快山速运，准时送达。\n尊敬的导师，感谢您参与「晴空测试」或「黎明测试」，您的充值返还物资已准确送达，请注意查收。\n\n快山速运全体员工衷心祝您航行顺利。",fixedRewardId=0,term=365},mt),
    ["90001"]=setmetatable({iD=90001,senderId=1,banner="mile_disanjieti.png",title="天空战令奖励",content="您上期天空战令有未领取的奖励，请注意查收。",fixedRewardId=0,term=30},mt),
    ["90002"]=setmetatable({iD=90002,senderId=1,banner="mile_disanjieti.png",title="感知特别支援",content="今日感知特别支援奖励已发放，请注意查收。",fixedRewardId=0,term=30},mt),
    ["90003"]=setmetatable({iD=90003,senderId=1,banner="mile_disanjieti.png",title="感知特别支援补发",content="您有{1}天未领取的感知特别支援奖励。现已补发，请注意查收。",fixedRewardId=0,term=30},mt),
    ["90004"]=setmetatable({iD=90004,senderId=1,banner="mile_disanjieti.png",title="共鸣特别支援",content="今日共鸣特别支援奖励已发放，请注意查收。",fixedRewardId=0,term=30},mt),
    ["90005"]=setmetatable({iD=90005,senderId=1,banner="mile_disanjieti.png",title="共鸣特别支援补发",content="您有{1}天未领取的共鸣特别支援奖励。现已补发，请注意查收。",fixedRewardId=0,term=30},mt),
    ["99901"]=setmetatable({iD=99901,senderId=1,banner="mile_disanjieti.png",title="激励计划活动奖励",content="亲爱的导师：\n感谢您对《斯露德》的支持，这是您参与激励计划活动的奖励，请查收~\n集结，飞向共同的天空！",fixedRewardId=0,term=30},mt),
    ["99902"]=setmetatable({iD=99902,senderId=1,banner="mile_disanjieti.png",title="《斯露德》云环测试限定礼1",content="亲爱的导师：\n感谢您参加并完成了「云环测试」的限定活动， 请您查收【限定名片-云环测试】。\n再次真诚的感谢您的意见与反馈，协助我们打磨更好的《斯露德》。",fixedRewardId=0,term=365},mt),
    ["99903"]=setmetatable({iD=99903,senderId=1,banner="mile_disanjieti.png",title="《斯露德》云环测试限定礼2",content="亲爱的导师：\n感谢您参加并完成了「云环测试」的限定活动， 请您查收【限定名片-交界虚空】。\n再次真诚的感谢您的意见与反馈，协助我们打磨更好的《斯露德》。",fixedRewardId=0,term=365},mt),
    ["99904"]=setmetatable({iD=99904,senderId=1,banner="mile_disanjieti.png",title="《斯露德》空境测试限定礼",content="亲爱的导师：\n感谢您参加并完成了「空境测试」的限定活动， 请您查收【限定名片-空境测试】。\n再次真诚的感谢您的意见与反馈，协助我们打磨更好的《斯露德》。",fixedRewardId=0,term=365},mt),
    ["99905"]=setmetatable({iD=99905,senderId=1,banner="mile_disanjieti.png",title="《斯露德》晴空测试限定礼",content="亲爱的导师：\n感谢您参加并完成了「晴空测试」的限定活动， 请您查收【限定名片-晴空测试】。\n再次真诚的感谢您的意见与反馈，协助我们打磨更好的《斯露德》。",fixedRewardId=0,term=365},mt),
    ["99906"]=setmetatable({iD=99906,senderId=1,banner="mile_disanjieti.png",title="邀请好友预约活动奖励",content="亲爱的导师：\n感谢您参与邀请好友预约活动，已为您发放奖励物资，请注意查收。",fixedRewardId=0,term=365},mt),
}
--生成获取数据的方法
---@return Mail
function GetMailData(id)
    return Mail_Xls[tostring(id)]
end
--自动生成注释
---@class Mail : table 
---@field iD number
---@field senderId number
---@field banner string
---@field title string
---@field content string
---@field fixedRewardId number
---@field term number
---@field itemIdS string
