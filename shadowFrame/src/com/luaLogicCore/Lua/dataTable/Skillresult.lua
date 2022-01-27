---@class SkillResult_Xls : table 
SkillResult_Xls =
{
    ["5031010"]={id=5031010,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=311.0,parm2=0.05},
    ["5031011"]={id=5031011,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=316.0,parm2=0.05},
    ["5031012"]={id=5031012,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=321.0,parm2=0.05},
    ["5031013"]={id=5031013,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=326.0,parm2=0.05},
    ["5031014"]={id=5031014,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=331.0,parm2=0.05},
    ["5032010"]={id=5032010,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=311.0,parm2=0.05},
    ["5033010"]={id=5033010,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=311.0,parm2=0.05},
    ["5034010"]={id=5034010,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=311.0,parm2=0.05},
    ["5035010"]={id=5035010,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=311.0,parm2=0.05},
    ["5041010"]={id=5041010,beiZhu="持续攻击3秒后（间隔不超过1秒），提升15%增伤率",resultType=3,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=5.04101E7},
    ["5042010"]={id=5042010,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=101.0,parm2=7.0},
    ["5043010"]={id=5043010,beiZhu="每3秒增加4%增伤率，最多叠加4层；受到攻击后清除",resultType=3,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=5.04301E7},
    ["5044010"]={id=5044010,beiZhu="每命中被元素附着的敌方单位，增加自身3%通用元素伤害加成，最多叠加5层；角色死亡后清空",resultType=3,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=5.04401E7},
    ["5045010"]={id=5045010,beiZhu="每命中被元素附着的敌方单位，额外造成X%攻击的范围物理伤害；Y秒最多触发1次",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=101.0,parm2=10.0},
    ["99301"]={id=99301,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=2333.0},
    ["99401"]={id=99401,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=0.0,parm2=0.05},
    ["99402"]={id=99402,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=0.0,parm2=0.1},
    ["99403"]={id=99403,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=0.0,parm2=0.15},
    ["99404"]={id=99404,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=0.0,parm2=0.2},
    ["99405"]={id=99405,beiZhu="",resultType=1,valueType={[1]=1.0,[2]=2.0,[3]=3.0},parm1=0.0,parm2=0.25},
}
--生成获取数据的方法
---@return SkillResult
function GetSkillResultData(id)
    return SkillResult_Xls[tostring(id)]
end
--自动生成注释
---@class SkillResult : table 
---@field id number
---@field beiZhu string
---@field resultType number
---@field valueType table
---@field parm1 number
---@field parm2 number
---@field parm3 number
---@field parm4 number
---@field parm5 number
---@field parm6 number
---@field parm7 number
