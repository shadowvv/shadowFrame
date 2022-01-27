---@class MailSender_Xls : table 
MailSender_Xls =
{
    ["1"]={id=1,senderName="斯露德空战团宣传局",senderIcon="mailpic_1"},
    ["2"]={id=2,senderName="米洛",senderIcon="mailpic_2"},
    ["3"]={id=3,senderName="斯露德空战团运营中心",senderIcon="mailpic_1"},
    ["100"]={id=100,senderName="斯露德空战团监察局",senderIcon="mailpic_1"},
}
--生成获取数据的方法
---@return MailSender
function GetMailSenderData(id)
    return MailSender_Xls[tostring(id)]
end
--自动生成注释
---@class MailSender : table 
---@field id number
---@field senderName string
---@field senderIcon string
