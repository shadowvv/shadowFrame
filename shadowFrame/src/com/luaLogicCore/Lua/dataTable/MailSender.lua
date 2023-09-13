local default = {id=0,senderName="",senderIcon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MailSender_Xls : table 
MailSender_Xls =
{
    ["1"]=setmetatable({id=1,senderName="快山速运",senderIcon="mailpic_kssy"},mt),
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
