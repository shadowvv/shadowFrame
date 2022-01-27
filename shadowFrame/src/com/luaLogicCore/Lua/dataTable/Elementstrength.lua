---@class ElementStrength_Xls : table 
ElementStrength_Xls =
{
    ["101"]={elementStrengthId=101,elementId=1,addNum=1.0,reduceSpeed=0.08,effectId={[1]=1}},
    ["102"]={elementStrengthId=102,elementId=1,addNum=2.0,reduceSpeed=0.1067,effectId={[1]=1}},
    ["103"]={elementStrengthId=103,elementId=1,addNum=3.0,reduceSpeed=0.12,effectId={[1]=1}},
    ["201"]={elementStrengthId=201,elementId=2,addNum=1.0,reduceSpeed=0.08,effectId={[1]=2}},
    ["202"]={elementStrengthId=202,elementId=2,addNum=2.0,reduceSpeed=0.1067,effectId={[1]=2}},
    ["203"]={elementStrengthId=203,elementId=2,addNum=3.0,reduceSpeed=0.12,effectId={[1]=2}},
    ["301"]={elementStrengthId=301,elementId=3,addNum=1.0,reduceSpeed=0.08,effectId={[1]=3}},
    ["302"]={elementStrengthId=302,elementId=3,addNum=2.0,reduceSpeed=0.1067,effectId={[1]=3}},
    ["303"]={elementStrengthId=303,elementId=3,addNum=3.0,reduceSpeed=0.12,effectId={[1]=3}},
    ["401"]={elementStrengthId=401,elementId=4,addNum=1.0,reduceSpeed=0.08,effectId={[1]=1}},
    ["402"]={elementStrengthId=402,elementId=4,addNum=2.0,reduceSpeed=0.1067,effectId={[1]=1}},
    ["403"]={elementStrengthId=403,elementId=4,addNum=3.0,reduceSpeed=0.12,effectId={[1]=1}},
    ["501"]={elementStrengthId=501,elementId=5,addNum=1.0,reduceSpeed=0.08,effectId={[1]=5}},
    ["502"]={elementStrengthId=502,elementId=5,addNum=2.0,reduceSpeed=0.1067,effectId={[1]=5}},
    ["503"]={elementStrengthId=503,elementId=5,addNum=3.0,reduceSpeed=0.12,effectId={[1]=5}},
    ["601"]={elementStrengthId=601,elementId=6,addNum=1.0,reduceSpeed=0.08},
    ["602"]={elementStrengthId=602,elementId=6,addNum=2.0,reduceSpeed=0.1067},
    ["603"]={elementStrengthId=603,elementId=6,addNum=3.0,reduceSpeed=0.12},
}
--生成获取数据的方法
---@return ElementStrength
function GetElementStrengthData(id)
    return ElementStrength_Xls[tostring(id)]
end
--自动生成注释
---@class ElementStrength : table 
---@field elementStrengthId number
---@field elementId number
---@field addNum number
---@field reduceSpeed number
---@field effectId table
