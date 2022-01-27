---@class SkillTrigger_Xls : table 
SkillTrigger_Xls =
{
    ["5031010"]={id=5031010,beiZhu="",triggerCd=0.0,triggerNum=9999,triggerType=1,parm1=0.0,parm2=0.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5031010}},
    ["5032010"]={id=5032010,beiZhu="",triggerCd=0.0,triggerNum=9999,triggerType=1,parm1=0.0,parm2=0.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5032010}},
    ["5033010"]={id=5033010,beiZhu="",triggerCd=0.0,triggerNum=9999,triggerType=1,parm1=0.0,parm2=0.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5033010}},
    ["5034010"]={id=5034010,beiZhu="",triggerCd=0.0,triggerNum=9999,triggerType=1,parm1=0.0,parm2=0.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5034010}},
    ["5035010"]={id=5035010,beiZhu="",triggerCd=0.0,triggerNum=9999,triggerType=1,parm1=0.0,parm2=0.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5035010}},
    ["5041010"]={id=5041010,beiZhu="持续攻击3秒后（间隔不超过1秒），提升15%增伤率",triggerCd=0.0,triggerNum=9999,triggerType=101,parm1=3.0,parm2=1.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5041010}},
    ["5042010"]={id=5042010,beiZhu="",triggerCd=0.0,triggerNum=9999,triggerType=1,parm1=0.0,parm2=0.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5042010}},
    ["5043010"]={id=5043010,beiZhu="每3秒增加4%增伤率，最多叠加4层；受到攻击后清除",triggerCd=0.0,triggerNum=9999,triggerType=2,parm1=3.0,parm2=0.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5043010}},
    ["5044010"]={id=5044010,beiZhu="每命中被元素附着的敌方单位，增加自身3%通用元素伤害加成，最多叠加5层；角色死亡后清空",triggerCd=0.0,triggerNum=9999,triggerType=102,parm1=-1.0,parm2=1.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5044010}},
    ["5045010"]={id=5045010,beiZhu="每命中被元素附着的敌方单位，额外造成X%攻击的范围物理伤害；Y秒最多触发1次",triggerCd=0.0,triggerNum=9999,triggerType=1,parm1=0.0,parm2=0.0,parm3=0.0,parm4=0.0,parm5=0.0,parm6=0.0,parm7=0.0,skillResultId={[1]=5045010}},
    ["99301"]={id=99301,beiZhu="每命中被元素附着的敌方单位，额外造成{1}攻击的范围物理伤害。",triggerCd=0.0,triggerNum=9999,triggerType=1},
    ["99401"]={id=99401,beiZhu="增加{1}火元素伤害，最多叠加4层；受到攻击后清除",triggerCd=0.0,triggerNum=9999,triggerType=1},
    ["99402"]={id=99402,beiZhu="增加{1}火元素伤害，最多叠加4层；受到攻击后清除",triggerCd=0.0,triggerNum=9999,triggerType=1},
    ["99403"]={id=99403,beiZhu="增加{1}火元素伤害，最多叠加4层；受到攻击后清除",triggerCd=0.0,triggerNum=9999,triggerType=1},
    ["99404"]={id=99404,beiZhu="增加{1}火元素伤害，最多叠加4层；受到攻击后清除",triggerCd=0.0,triggerNum=9999,triggerType=1},
    ["99405"]={id=99405,beiZhu="增加{1}火元素伤害，最多叠加4层；受到攻击后清除",triggerCd=0.0,triggerNum=9999,triggerType=1},
}
--生成获取数据的方法
---@return SkillTrigger
function GetSkillTriggerData(id)
    return SkillTrigger_Xls[tostring(id)]
end
--自动生成注释
---@class SkillTrigger : table 
---@field id number
---@field beiZhu string
---@field triggerCd number
---@field triggerNum number
---@field triggerType number
---@field parm1 number
---@field parm2 number
---@field parm3 number
---@field parm4 number
---@field parm5 number
---@field parm6 number
---@field parm7 number
---@field skillResultId table
