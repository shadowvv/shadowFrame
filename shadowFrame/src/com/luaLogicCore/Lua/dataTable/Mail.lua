---@class Mail_Xls : table 
Mail_Xls =
{
    ["20001"]={iD=20001,des="聊天频道举报玩家后触发",senderId=100,banner="mile_disanjieti.png",title="举报反馈",content="[000000]收到您在{0}提交的对ID{1}的举报，举报内容发送至控制区行为管理局进行裁定，感谢您的积极举报，控制区对违反条例的行为必将彻查。[-]",fixedRewardId=0,term=3},
}
--生成获取数据的方法
---@return Mail
function GetMailData(id)
    return Mail_Xls[tostring(id)]
end
--自动生成注释
---@class Mail : table 
---@field iD number
---@field des string
---@field senderId number
---@field banner string
---@field title string
---@field content string
---@field fixedRewardId number
---@field term number
---@field itemIdS string
