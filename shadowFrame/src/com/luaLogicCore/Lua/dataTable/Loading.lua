---@class Loading_Xls : table 
Loading_Xls =
{
    ["1"]={id=1,picture="UI_jiazai_yuannenglizi",title="源能粒子",tips="源能富集地区发生降雨时，将携带少许高浓度源能到地面，是人类获取可利用源能的重要途径之一。"},
    ["2"]={id=2,picture="UI_jiazai_yiji",title="遗迹",tips="随着第三阶梯的破碎而坠落至地表的神秘建筑，部分学者认为这些建筑是“神的使者”曾真实存在过的有力证明。"},
    ["3"]={id=3,picture="UI_jiazai__silude",title="斯露德",tips="植入核心源，控制源能与异生体战斗的少女。"},
    ["4"]={id=4,picture="UI_jiazai_yishengti",title="异生体",tips="来自第三阶梯的古老生物，于I.S.1904出现，并在短时间内摧毁了人类文明的主体。"},
    ["5"]={id=5,picture="UI_jiazai_fan",title="帆",tips="人类针对异生体特性开发出的隐蔽设施，可以使异生体将其认知为同类，从而避免被异生体攻击。"},
    ["6"]={id=6,picture="UI_jiazai_yuannenghai",title="源能海",tips="源能粒子在引力作用下形成的、覆盖在星球表面的类流体层被称为源能海。"},
}
--生成获取数据的方法
---@return Loading
function GetLoadingData(id)
    return Loading_Xls[tostring(id)]
end
--自动生成注释
---@class Loading : table 
---@field id number
---@field picture string
---@field title string
---@field tips string
