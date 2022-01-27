---@class ChangeAttribute_Xls : table 
ChangeAttribute_Xls =
{
    ["51001"]={changeAttributeId=51001,beiZhu="5星1号位1槽",attributeType={[1]=510010,[2]=510011},attributeWeight={[1]=500,[2]=500}},
    ["51002"]={changeAttributeId=51002,beiZhu="5星1号位2槽",attributeType={[1]=510020,[2]=510021},attributeWeight={[1]=500,[2]=500}},
    ["51003"]={changeAttributeId=51003,beiZhu="5星1号位3槽",attributeType={[1]=510030,[2]=510031},attributeWeight={[1]=500,[2]=500}},
    ["52001"]={changeAttributeId=52001,beiZhu="5星2号位1槽",attributeType={[1]=520010,[2]=520011},attributeWeight={[1]=500,[2]=500}},
    ["52002"]={changeAttributeId=52002,beiZhu="5星2号位2槽",attributeType={[1]=520020,[2]=520021},attributeWeight={[1]=500,[2]=500}},
    ["52003"]={changeAttributeId=52003,beiZhu="5星2号位3槽",attributeType={[1]=520030,[2]=520031},attributeWeight={[1]=500,[2]=500}},
    ["53001"]={changeAttributeId=53001,beiZhu="5星3号位1槽",attributeType={[1]=530010,[2]=530011},attributeWeight={[1]=500,[2]=500}},
    ["53002"]={changeAttributeId=53002,beiZhu="5星3号位2槽",attributeType={[1]=530020,[2]=530021},attributeWeight={[1]=500,[2]=500}},
    ["53003"]={changeAttributeId=53003,beiZhu="5星3号位3槽",attributeType={[1]=530030,[2]=530031},attributeWeight={[1]=500,[2]=500}},
    ["54001"]={changeAttributeId=54001,beiZhu="5星4号位",attributeType={[1]=540010,[2]=540011,[3]=540012,[4]=540013,[5]=540014,[6]=540015,[7]=540016,[8]=540017,[9]=540018,[10]=540019},attributeWeight={[1]=500,[2]=500,[3]=500,[4]=500,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000,[10]=1000}},
    ["55001"]={changeAttributeId=55001,beiZhu="5星5号位",attributeType={[1]=550010,[2]=550011,[3]=550012,[4]=550013,[5]=550014,[6]=550015,[7]=550016,[8]=550017,[9]=550018,[10]=550019},attributeWeight={[1]=500,[2]=500,[3]=500,[4]=500,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000,[10]=1000}},
    ["510010"]={changeAttributeId=510010,beiZhu="5星1号位1槽成长",attributeType={[1]=5100100,[2]=5100101},attributeWeight={[1]=500,[2]=500}},
    ["510020"]={changeAttributeId=510020,beiZhu="5星1号位2槽成长",attributeType={[1]=5100200,[2]=5100201},attributeWeight={[1]=500,[2]=500}},
    ["510030"]={changeAttributeId=510030,beiZhu="5星1号位3槽成长",attributeType={[1]=5100300,[2]=5100301},attributeWeight={[1]=500,[2]=500}},
    ["520010"]={changeAttributeId=520010,beiZhu="5星2号位1槽成长",attributeType={[1]=5200100,[2]=5200101},attributeWeight={[1]=500,[2]=500}},
    ["520020"]={changeAttributeId=520020,beiZhu="5星2号位2槽成长",attributeType={[1]=5200200,[2]=5200201},attributeWeight={[1]=500,[2]=500}},
    ["520030"]={changeAttributeId=520030,beiZhu="5星2号位3槽成长",attributeType={[1]=5200300,[2]=5200301},attributeWeight={[1]=500,[2]=500}},
    ["530010"]={changeAttributeId=530010,beiZhu="5星3号位1槽成长",attributeType={[1]=5300100,[2]=5300101},attributeWeight={[1]=500,[2]=500}},
    ["530020"]={changeAttributeId=530020,beiZhu="5星3号位2槽成长",attributeType={[1]=5300200,[2]=5300201},attributeWeight={[1]=500,[2]=500}},
    ["530030"]={changeAttributeId=530030,beiZhu="5星3号位3槽成长",attributeType={[1]=5300300,[2]=5300301},attributeWeight={[1]=500,[2]=500}},
    ["540010"]={changeAttributeId=540010,beiZhu="5星4号位成长",attributeType={[1]=5400100,[2]=5400101,[3]=5400102,[4]=5400103,[5]=5400104,[6]=5400105,[7]=5400106,[8]=5400107,[9]=5400108,[10]=5400109},attributeWeight={[1]=500,[2]=500,[3]=500,[4]=500,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000,[10]=1000}},
    ["550010"]={changeAttributeId=550010,beiZhu="5星5号位成长",attributeType={[1]=5500100,[2]=5500101,[3]=5500102,[4]=5500103,[5]=5500104,[6]=5500105,[7]=5500106,[8]=5500107,[9]=5500108,[10]=5500109},attributeWeight={[1]=500,[2]=500,[3]=500,[4]=500,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000,[10]=1000}},
}
--生成获取数据的方法
---@return ChangeAttribute
function GetChangeAttributeData(id)
    return ChangeAttribute_Xls[tostring(id)]
end
--自动生成注释
---@class ChangeAttribute : table 
---@field changeAttributeId number
---@field beiZhu string
---@field attributeType table
---@field attributeWeight table
