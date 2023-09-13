local default = {id=0,passName="",passType=0,passProPaymentId=0,lvUnlockItemId=0,lvUnlockItemNum=0,lvUpExp=0,taskGroup=0,rewardGroup=0,startTime="",endTime="",alertTime=0,instructionDesc="",banner="",uiGroup=0,passProTip="",passProPic1="",passProRare1=0,passProDesc1="",passProPic2="",passProRare2=0,passProDesc2="",passProPic3="",passProRare3=0,passProDesc3="",passProPic4="",passProRare4=0,passProDesc4="",ver=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Pass_Xls : table 
Pass_Xls =
{
    ["1"]=setmetatable({id=1,passName="天空战令",passType=1,passProPaymentId=12,lvUnlockItemId=11,lvUnlockItemNum=100,lvUpExp=1000,taskGroup=1,rewardGroup=1,startTime="2023-08-15 11:00:00",endTime="2023-09-14 03:59:59",alertTime=2,instructionDesc="可通过累计通行证点数来提升通行证等级，从而获得等级奖励。\n购买高级通行证后，将解锁高级通行证奖励。",banner="",uiGroup=1,passProTip="购买后可解锁上述奖励",passProPic1="item_11_s",passProRare1=5,passProDesc1="大量源晶碎",passProPic2="item_1050050_s",passProRare2=5,passProDesc2="自选武器",passProPic3="item_1020001_s",passProRare3=4,passProDesc3="大量经验道具",passProPic4="item_1070002_s",passProRare4=4,passProDesc4="大量培养素材"},mt),
    ["2"]=setmetatable({id=2,passName="天空战令",passType=1,passProPaymentId=12,lvUnlockItemId=11,lvUnlockItemNum=100,lvUpExp=1000,taskGroup=1,rewardGroup=1,startTime="2023-09-14 04:00:00",endTime="2023-10-12 03:59:59",alertTime=2,instructionDesc="可通过累计通行证点数来提升通行证等级，从而获得等级奖励。\n购买高级通行证后，将解锁高级通行证奖励。",banner="",uiGroup=1,passProTip="购买后可解锁上述奖励",passProPic1="item_11_s",passProRare1=5,passProDesc1="大量源晶碎",passProPic2="item_1050050_s",passProRare2=5,passProDesc2="自选武器",passProPic3="item_1020001_s",passProRare3=4,passProDesc3="大量经验道具",passProPic4="item_1070002_s",passProRare4=4,passProDesc4="大量培养素材"},mt),
}
--生成获取数据的方法
---@return Pass
function GetPassData(id)
    return Pass_Xls[tostring(id)]
end
--自动生成注释
---@class Pass : table 
---@field id number
---@field passName string
---@field passType number
---@field passProPaymentId number
---@field lvUnlockItemId number
---@field lvUnlockItemNum number
---@field lvUpExp number
---@field taskGroup number
---@field rewardGroup number
---@field startTime string
---@field endTime string
---@field alertTime number
---@field instructionDesc string
---@field banner string
---@field uiGroup number
---@field passProTip string
---@field passProPic1 string
---@field passProRare1 number
---@field passProDesc1 string
---@field passProPic2 string
---@field passProRare2 number
---@field passProDesc2 string
---@field passProPic3 string
---@field passProRare3 number
---@field passProDesc3 string
---@field passProPic4 string
---@field passProRare4 number
---@field passProDesc4 string
---@field ver number
