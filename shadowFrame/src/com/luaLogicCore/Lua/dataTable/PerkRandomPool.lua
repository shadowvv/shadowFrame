local default = {id=0,poolPerkSkills=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PerkRandomPool_Xls : table 
PerkRandomPool_Xls =
{
    ["1000001"]=setmetatable({id=1000001,poolPerkSkills={[1]=10000001}},mt),
    ["1000098"]=setmetatable({id=1000098,poolPerkSkills={[1]=10001008}},mt),
    ["1000099"]=setmetatable({id=1000099,poolPerkSkills={[1]=10001006}},mt),
    ["1000101"]=setmetatable({id=1000101,poolPerkSkills={[1]=10001001,[2]=10001002,[3]=10001003,[4]=10001004,[5]=10001005,[6]=10001006,[7]=10001007,[8]=10001008,[9]=10001009,[10]=10001010}},mt),
    ["1000201"]=setmetatable({id=1000201,poolPerkSkills={[1]=10002001,[2]=10002002,[3]=10002003,[4]=10002004,[5]=10002005,[6]=10002006,[7]=10002007,[8]=10002008,[9]=10002009,[10]=10002010,[11]=10002011}},mt),
    ["2000101"]=setmetatable({id=2000101,poolPerkSkills={[1]=20011001,[2]=20011002,[3]=20011003,[4]=20011004,[5]=20011005,[6]=20011006,[7]=20011007,[8]=20011008,[9]=20011009,[10]=20011010,[11]=20011011,[12]=20011012,[13]=20011013,[14]=20011014,[15]=20011015,[16]=20011016,[17]=20011017,[18]=20011018,[19]=20011019,[20]=20011020,[21]=20011021,[22]=20011022,[23]=20011023,[24]=20011024,[25]=20011025,[26]=20011026,[27]=20011027,[28]=20011028,[29]=20011029,[30]=20011030,[31]=20011031,[32]=20011032,[33]=20011033,[34]=20011034,[35]=20011035,[36]=20011036}},mt),
    ["2000102"]=setmetatable({id=2000102,poolPerkSkills={[1]=20011029}},mt),
}
--生成获取数据的方法
---@return PerkRandomPool
function GetPerkRandomPoolData(id)
    return PerkRandomPool_Xls[tostring(id)]
end
--自动生成注释
---@class PerkRandomPool : table 
---@field id number
---@field poolPerkSkills table
