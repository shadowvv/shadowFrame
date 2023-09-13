local default = {id=0,skillId=0,preSkill=xlsNilTable,pointX=0,pointY=0,line=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeTalentShow_Xls : table 
RoguelikeTalentShow_Xls =
{
    ["101"]=setmetatable({id=101,skillId=101,preSkill={[1]=0},pointX=1,pointY=2,line={[1]=1}},mt),
    ["201"]=setmetatable({id=201,skillId=201,preSkill={[1]=101},pointX=2,pointY=2,line={[1]=1,[2]=2,[3]=3}},mt),
    ["301"]=setmetatable({id=301,skillId=301,preSkill={[1]=201},pointX=3,pointY=1,line={[1]=5}},mt),
    ["302"]=setmetatable({id=302,skillId=302,preSkill={[1]=201},pointX=3,pointY=2,line={[1]=1}},mt),
    ["303"]=setmetatable({id=303,skillId=303,preSkill={[1]=201},pointX=3,pointY=3,line={[1]=4}},mt),
    ["401"]=setmetatable({id=401,skillId=401,preSkill={[1]=301,[2]=302,[3]=303},pointX=4,pointY=2,line={[1]=1}},mt),
    ["501"]=setmetatable({id=501,skillId=501,preSkill={[1]=401},pointX=5,pointY=2,line={[1]=1,[2]=2,[3]=3}},mt),
    ["601"]=setmetatable({id=601,skillId=601,preSkill={[1]=501},pointX=6,pointY=1,line={[1]=5}},mt),
    ["602"]=setmetatable({id=602,skillId=602,preSkill={[1]=501},pointX=6,pointY=2,line={[1]=1}},mt),
    ["603"]=setmetatable({id=603,skillId=603,preSkill={[1]=501},pointX=6,pointY=3,line={[1]=4}},mt),
    ["701"]=setmetatable({id=701,skillId=701,preSkill={[1]=601,[2]=602,[3]=603},pointX=7,pointY=2,line={[1]=1}},mt),
    ["801"]=setmetatable({id=801,skillId=801,preSkill={[1]=701},pointX=8,pointY=2,line={[1]=1,[2]=2,[3]=3}},mt),
    ["901"]=setmetatable({id=901,skillId=901,preSkill={[1]=801},pointX=9,pointY=1,line={[1]=5}},mt),
    ["902"]=setmetatable({id=902,skillId=902,preSkill={[1]=801},pointX=9,pointY=2,line={[1]=1}},mt),
    ["903"]=setmetatable({id=903,skillId=903,preSkill={[1]=801},pointX=9,pointY=3,line={[1]=4}},mt),
    ["1001"]=setmetatable({id=1001,skillId=1001,preSkill={[1]=901,[2]=902,[3]=903},pointX=10,pointY=2,line={[1]=1}},mt),
    ["1101"]=setmetatable({id=1101,skillId=1101,preSkill={[1]=1001},pointX=11,pointY=2,line={[1]=1,[2]=2,[3]=3}},mt),
    ["1201"]=setmetatable({id=1201,skillId=1201,preSkill={[1]=1101},pointX=12,pointY=1,line={[1]=5}},mt),
    ["1202"]=setmetatable({id=1202,skillId=1202,preSkill={[1]=1101},pointX=12,pointY=2,line={[1]=1}},mt),
    ["1203"]=setmetatable({id=1203,skillId=1203,preSkill={[1]=1101},pointX=12,pointY=3,line={[1]=4}},mt),
    ["1301"]=setmetatable({id=1301,skillId=1301,preSkill={[1]=1201,[2]=1202,[3]=1203},pointX=13,pointY=2,line={[1]=1}},mt),
    ["1401"]=setmetatable({id=1401,skillId=1401,preSkill={[1]=1301},pointX=14,pointY=2,line={[1]=1,[2]=2,[3]=3}},mt),
    ["1501"]=setmetatable({id=1501,skillId=1501,preSkill={[1]=1401},pointX=15,pointY=1,line={[1]=5}},mt),
    ["1502"]=setmetatable({id=1502,skillId=1502,preSkill={[1]=1401},pointX=15,pointY=2,line={[1]=1}},mt),
    ["1503"]=setmetatable({id=1503,skillId=1503,preSkill={[1]=1401},pointX=15,pointY=3,line={[1]=4}},mt),
    ["1601"]=setmetatable({id=1601,skillId=1601,preSkill={[1]=1501,[2]=1502,[3]=1503},pointX=16,pointY=2,line={[1]=1}},mt),
    ["1701"]=setmetatable({id=1701,skillId=1701,preSkill={[1]=1601},pointX=17,pointY=2,line={[1]=2,[2]=3}},mt),
    ["1801"]=setmetatable({id=1801,skillId=1801,preSkill={[1]=1701},pointX=18,pointY=1,line={[1]=1}},mt),
    ["1802"]=setmetatable({id=1802,skillId=1802,preSkill={[1]=1701},pointX=18,pointY=3,line={[1]=1}},mt),
    ["1901"]=setmetatable({id=1901,skillId=1901,preSkill={[1]=1801},pointX=19,pointY=1,line={[1]=1}},mt),
    ["1902"]=setmetatable({id=1902,skillId=1902,preSkill={[1]=1802},pointX=19,pointY=3,line={[1]=1}},mt),
    ["2001"]=setmetatable({id=2001,skillId=2001,preSkill={[1]=1901},pointX=20,pointY=1,line={[1]=1}},mt),
    ["2002"]=setmetatable({id=2002,skillId=2002,preSkill={[1]=1902},pointX=20,pointY=3,line={[1]=1}},mt),
    ["2101"]=setmetatable({id=2101,skillId=2101,preSkill={[1]=2001},pointX=21,pointY=1,line={[1]=1}},mt),
    ["2102"]=setmetatable({id=2102,skillId=2102,preSkill={[1]=2002},pointX=21,pointY=3,line={[1]=1}},mt),
    ["2201"]=setmetatable({id=2201,skillId=2201,preSkill={[1]=2101},pointX=22,pointY=1,line={[1]=1}},mt),
    ["2202"]=setmetatable({id=2202,skillId=2202,preSkill={[1]=2102},pointX=22,pointY=3,line={[1]=1}},mt),
    ["2301"]=setmetatable({id=2301,skillId=2301,preSkill={[1]=2201},pointX=23,pointY=1},mt),
    ["2302"]=setmetatable({id=2302,skillId=2302,preSkill={[1]=2202},pointX=23,pointY=3},mt),
}
--生成获取数据的方法
---@return RoguelikeTalentShow
function GetRoguelikeTalentShowData(id)
    return RoguelikeTalentShow_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeTalentShow : table 
---@field id number
---@field skillId number
---@field preSkill table
---@field pointX number
---@field pointY number
---@field line table
