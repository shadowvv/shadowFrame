---@class ElementCorrect_Xls : table 
ElementCorrect_Xls =
{
    ["1"]={id=1,elementType=1,role2=0.8,role3=0.8,role4=0.8,role5=0.8,role6=0.8,role7=0.8},
    ["2"]={id=2,elementType=2,role2=1.0,role3=0.6,role4=0.6,role5=0.6,role6=0.6,role7=0.6},
    ["3"]={id=3,elementType=3,role2=0.6,role3=1.0,role4=0.6,role5=0.6,role6=0.6,role7=0.6},
    ["4"]={id=4,elementType=4,role2=0.6,role3=0.6,role4=1.0,role5=0.6,role6=0.6,role7=0.6},
    ["5"]={id=5,elementType=5,role2=0.6,role3=0.6,role4=0.6,role5=1.0,role6=0.6,role7=0.6},
    ["6"]={id=6,elementType=6,role2=0.6,role3=0.6,role4=0.6,role5=0.6,role6=1.0,role7=0.6},
    ["7"]={id=7,elementType=7,role2=0.6,role3=0.6,role4=0.6,role5=0.6,role6=0.6,role7=1.0},
}
--生成获取数据的方法
---@return ElementCorrect
function GetElementCorrectData(id)
    return ElementCorrect_Xls[tostring(id)]
end
--自动生成注释
---@class ElementCorrect : table 
---@field id number
---@field elementType number
---@field role2 number
---@field role3 number
---@field role4 number
---@field role5 number
---@field role6 number
---@field role7 number
