local default = {changeAttributeId=0,attributeType=xlsNilTable,attributeWeight=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ChangeAttribute_Xls : table 
ChangeAttribute_Xls =
{
    ["51001"]=setmetatable({changeAttributeId=51001,attributeType={[1]=510010,[2]=510011},attributeWeight={[1]=500,[2]=500}},mt),
    ["51002"]=setmetatable({changeAttributeId=51002,attributeType={[1]=510020,[2]=510021},attributeWeight={[1]=500,[2]=500}},mt),
    ["51003"]=setmetatable({changeAttributeId=51003,attributeType={[1]=510030,[2]=510031},attributeWeight={[1]=500,[2]=500}},mt),
    ["52001"]=setmetatable({changeAttributeId=52001,attributeType={[1]=520010,[2]=520011},attributeWeight={[1]=500,[2]=500}},mt),
    ["52002"]=setmetatable({changeAttributeId=52002,attributeType={[1]=520020,[2]=520021},attributeWeight={[1]=500,[2]=500}},mt),
    ["52003"]=setmetatable({changeAttributeId=52003,attributeType={[1]=520030,[2]=520031},attributeWeight={[1]=500,[2]=500}},mt),
    ["53001"]=setmetatable({changeAttributeId=53001,attributeType={[1]=530010,[2]=530011},attributeWeight={[1]=500,[2]=500}},mt),
    ["53002"]=setmetatable({changeAttributeId=53002,attributeType={[1]=530020,[2]=530021},attributeWeight={[1]=500,[2]=500}},mt),
    ["53003"]=setmetatable({changeAttributeId=53003,attributeType={[1]=530030,[2]=530031},attributeWeight={[1]=500,[2]=500}},mt),
    ["54001"]=setmetatable({changeAttributeId=54001,attributeType={[1]=540010,[2]=540011,[3]=540012,[4]=540013,[5]=540014,[6]=540015,[7]=540016,[8]=540017,[9]=540018,[10]=540019},attributeWeight={[1]=500,[2]=500,[3]=500,[4]=500,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000,[10]=1000}},mt),
    ["55001"]=setmetatable({changeAttributeId=55001,attributeType={[1]=550010,[2]=550011,[3]=550012,[4]=550013,[5]=550014,[6]=550015,[7]=550016,[8]=550017,[9]=550018,[10]=550019},attributeWeight={[1]=500,[2]=500,[3]=500,[4]=500,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000,[10]=1000}},mt),
    ["510010"]=setmetatable({changeAttributeId=510010,attributeType={[1]=5100100,[2]=5100101},attributeWeight={[1]=500,[2]=500}},mt),
    ["510020"]=setmetatable({changeAttributeId=510020,attributeType={[1]=5100200,[2]=5100201},attributeWeight={[1]=500,[2]=500}},mt),
    ["510030"]=setmetatable({changeAttributeId=510030,attributeType={[1]=5100300,[2]=5100301},attributeWeight={[1]=500,[2]=500}},mt),
    ["520010"]=setmetatable({changeAttributeId=520010,attributeType={[1]=5200100,[2]=5200101},attributeWeight={[1]=500,[2]=500}},mt),
    ["520020"]=setmetatable({changeAttributeId=520020,attributeType={[1]=5200200,[2]=5200201},attributeWeight={[1]=500,[2]=500}},mt),
    ["520030"]=setmetatable({changeAttributeId=520030,attributeType={[1]=5200300,[2]=5200301},attributeWeight={[1]=500,[2]=500}},mt),
    ["530010"]=setmetatable({changeAttributeId=530010,attributeType={[1]=5300100,[2]=5300101},attributeWeight={[1]=500,[2]=500}},mt),
    ["530020"]=setmetatable({changeAttributeId=530020,attributeType={[1]=5300200,[2]=5300201},attributeWeight={[1]=500,[2]=500}},mt),
    ["530030"]=setmetatable({changeAttributeId=530030,attributeType={[1]=5300300,[2]=5300301},attributeWeight={[1]=500,[2]=500}},mt),
    ["540010"]=setmetatable({changeAttributeId=540010,attributeType={[1]=5400100,[2]=5400101,[3]=5400102,[4]=5400103,[5]=5400104,[6]=5400105,[7]=5400106,[8]=5400107,[9]=5400108,[10]=5400109},attributeWeight={[1]=500,[2]=500,[3]=500,[4]=500,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000,[10]=1000}},mt),
    ["550010"]=setmetatable({changeAttributeId=550010,attributeType={[1]=5500100,[2]=5500101,[3]=5500102,[4]=5500103,[5]=5500104,[6]=5500105,[7]=5500106,[8]=5500107,[9]=5500108,[10]=5500109},attributeWeight={[1]=500,[2]=500,[3]=500,[4]=500,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000,[10]=1000}},mt),
    ["20010"]=setmetatable({changeAttributeId=20010,attributeType={[1]=20010,[2]=20020,[3]=20030,[4]=20040,[5]=20050,[6]=20060,[7]=20070,[8]=20080,[9]=20160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["20020"]=setmetatable({changeAttributeId=20020,attributeType={[1]=20010,[2]=20020,[3]=20030,[4]=20040,[5]=20050,[6]=20060,[7]=20070,[8]=20080,[9]=20160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["20030"]=setmetatable({changeAttributeId=20030,attributeType={[1]=20010,[2]=20020,[3]=20030,[4]=20040,[5]=20050,[6]=20060,[7]=20070,[8]=20080,[9]=20160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["20040"]=setmetatable({changeAttributeId=20040,attributeType={[1]=20010,[2]=20020,[3]=20030,[4]=20040,[5]=20050,[6]=20060,[7]=20070,[8]=20080,[9]=20160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["20050"]=setmetatable({changeAttributeId=20050,attributeType={[1]=20010,[2]=20020,[3]=20030,[4]=20040,[5]=20050,[6]=20060,[7]=20070,[8]=20080,[9]=20160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["30010"]=setmetatable({changeAttributeId=30010,attributeType={[1]=30010,[2]=30020,[3]=30030,[4]=30040,[5]=30050,[6]=30060,[7]=30070,[8]=30080,[9]=30160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["30020"]=setmetatable({changeAttributeId=30020,attributeType={[1]=30010,[2]=30020,[3]=30030,[4]=30040,[5]=30050,[6]=30060,[7]=30070,[8]=30080,[9]=30160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["30030"]=setmetatable({changeAttributeId=30030,attributeType={[1]=30010,[2]=30020,[3]=30030,[4]=30040,[5]=30050,[6]=30060,[7]=30070,[8]=30080,[9]=30160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["30040"]=setmetatable({changeAttributeId=30040,attributeType={[1]=30010,[2]=30020,[3]=30030,[4]=30040,[5]=30050,[6]=30060,[7]=30070,[8]=30080,[9]=30160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["30050"]=setmetatable({changeAttributeId=30050,attributeType={[1]=30010,[2]=30020,[3]=30030,[4]=30040,[5]=30050,[6]=30060,[7]=30070,[8]=30080,[9]=30160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["40010"]=setmetatable({changeAttributeId=40010,attributeType={[1]=40010,[2]=40020,[3]=40030,[4]=40040,[5]=40050,[6]=40060,[7]=40070,[8]=40080,[9]=40160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["40020"]=setmetatable({changeAttributeId=40020,attributeType={[1]=40010,[2]=40020,[3]=40030,[4]=40040,[5]=40050,[6]=40060,[7]=40070,[8]=40080,[9]=40160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["40030"]=setmetatable({changeAttributeId=40030,attributeType={[1]=40010,[2]=40020,[3]=40030,[4]=40040,[5]=40050,[6]=40060,[7]=40070,[8]=40080,[9]=40160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["40040"]=setmetatable({changeAttributeId=40040,attributeType={[1]=40010,[2]=40020,[3]=40030,[4]=40040,[5]=40050,[6]=40060,[7]=40070,[8]=40080,[9]=40160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["40050"]=setmetatable({changeAttributeId=40050,attributeType={[1]=40010,[2]=40020,[3]=40030,[4]=40040,[5]=40050,[6]=40060,[7]=40070,[8]=40080,[9]=40160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["50010"]=setmetatable({changeAttributeId=50010,attributeType={[1]=50010,[2]=50020,[3]=50030,[4]=50040,[5]=50050,[6]=50060,[7]=50070,[8]=50080,[9]=50160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["50020"]=setmetatable({changeAttributeId=50020,attributeType={[1]=50010,[2]=50020,[3]=50030,[4]=50040,[5]=50050,[6]=50060,[7]=50070,[8]=50080,[9]=50160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["50030"]=setmetatable({changeAttributeId=50030,attributeType={[1]=50010,[2]=50020,[3]=50030,[4]=50040,[5]=50050,[6]=50060,[7]=50070,[8]=50080,[9]=50160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["50040"]=setmetatable({changeAttributeId=50040,attributeType={[1]=50010,[2]=50020,[3]=50030,[4]=50040,[5]=50050,[6]=50060,[7]=50070,[8]=50080,[9]=50160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["50050"]=setmetatable({changeAttributeId=50050,attributeType={[1]=50010,[2]=50020,[3]=50030,[4]=50040,[5]=50050,[6]=50060,[7]=50070,[8]=50080,[9]=50160},attributeWeight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000,[6]=1000,[7]=1000,[8]=1000,[9]=1000}},mt),
    ["5002001"]=setmetatable({changeAttributeId=5002001,attributeType={[1]=5008001},attributeWeight={[1]=1000}},mt),
}
--生成获取数据的方法
---@return ChangeAttribute
function GetChangeAttributeData(id)
    return ChangeAttribute_Xls[tostring(id)]
end
--自动生成注释
---@class ChangeAttribute : table 
---@field changeAttributeId number
---@field attributeType table
---@field attributeWeight table
