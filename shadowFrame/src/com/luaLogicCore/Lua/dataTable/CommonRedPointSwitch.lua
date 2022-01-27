---@class CommonRedPointSwitch_Xls : table 
CommonRedPointSwitch_Xls =
{
    ["1"]={id=1,isOpen=1,desc="未读邮件",state=1},
    ["2"]={id=2,isOpen=1,desc="任务奖励可领取",state=1},
    ["3"]={id=3,isOpen=1,desc="邮件已读但未领取附件",state=1},
    ["4"]={id=4,isOpen=1,desc="新公告通知",state=1},
    ["5"]={id=5,isOpen=1,desc="斯露德-角色可解锁",state=1},
    ["6"]={id=6,isOpen=1,desc="斯露德-等级可提升",state=1},
    ["7"]={id=7,isOpen=1,desc="斯露德-式杖可提升",state=1},
    ["8"]={id=8,isOpen=1,desc="斯露德-具现可提升",state=1},
    ["9"]={id=9,isOpen=1,desc="斯露德-位阶可提升",state=1},
    ["10"]={id=10,isOpen=1,desc="斯露德-获得新时装",state=1},
    ["11"]={id=11,isOpen=1,desc="斯露德-律叶可更换",state=1},
    ["12"]={id=12,isOpen=1,desc="斯露德-获得新律叶时装（暂无）",state=0},
    ["13"]={id=13,isOpen=1,desc="斯露德-角色档案可解锁",state=1},
    ["14"]={id=14,isOpen=1,desc="成就奖励可领取",state=1},
}
--生成获取数据的方法
---@return CommonRedPointSwitch
function GetCommonRedPointSwitchData(id)
    return CommonRedPointSwitch_Xls[tostring(id)]
end
--自动生成注释
---@class CommonRedPointSwitch : table 
---@field id number
---@field isOpen number
---@field desc string
---@field state number
