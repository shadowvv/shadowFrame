local default = {id=0,leaderId=0,part="",attributeDesc="",attribute="",paramType=0,param1=0,param2=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderPartLumine_Xls : table 
LeaderPartLumine_Xls =
{
    ["1"]=setmetatable({id=1,leaderId=2016001,part="Chun_Body",attributeDesc="高光强度",attribute="_SpecularStrength",paramType=1,param1=0.5},mt),
    ["2"]=setmetatable({id=2,leaderId=2016001,part="Chun_Body",attributeDesc="高光颜色",attribute="_SpecularColor",paramType=2,param1=0,param2={[1]=0,[2]=181,[3]=191,[4]=255,[5]=7}},mt),
    ["3"]=setmetatable({id=3,leaderId=2016001,part="Chun_Hair",attributeDesc="自发光强度",attribute="_Emissivetrength",paramType=1,param1=1},mt),
    ["4"]=setmetatable({id=4,leaderId=2016001,part="Chun_Hair",attributeDesc="自发光颜色",attribute="_EmissiveColor",paramType=2,param1=0,param2={[1]=13,[2]=165,[3]=191,[4]=255,[5]=1.81}},mt),
    ["5"]=setmetatable({id=5,leaderId=2016001,part="Chun_Body",attributeDesc="高光范围",attribute="_SpecularPower",paramType=1,param1=0},mt),
    ["6"]=setmetatable({id=6,leaderId=2024001,part="Aoli_Body",attributeDesc="角色切换边缘光颜色",attribute="_ShowEffectColor",paramType=2,param1=0,param2={[1]=191,[2]=69,[3]=43,[4]=255,[5]=2.4169}},mt),
    ["7"]=setmetatable({id=7,leaderId=2024001,part="Aoli_Body_Waitao",attributeDesc="角色切换边缘光颜色",attribute="_ShowEffectColor",paramType=2,param1=0,param2={[1]=191,[2]=69,[3]=43,[4]=255,[5]=2.4169}},mt),
    ["8"]=setmetatable({id=8,leaderId=2024001,part="Aoli_Body_Xiuzi",attributeDesc="角色切换边缘光颜色",attribute="_ShowEffectColor",paramType=2,param1=0,param2={[1]=191,[2]=69,[3]=43,[4]=255,[5]=2.4169}},mt),
    ["9"]=setmetatable({id=9,leaderId=2024001,part="Aoli_Hair",attributeDesc="角色切换边缘光颜色",attribute="_ShowEffectColor",paramType=2,param1=0,param2={[1]=191,[2]=69,[3]=43,[4]=255,[5]=2.4169}},mt),
    ["10"]=setmetatable({id=10,leaderId=2024001,part="Aoli_Body",attributeDesc="角色切换边缘光强度",attribute="_ShowEffectRimScale",paramType=1,param1=5},mt),
    ["11"]=setmetatable({id=11,leaderId=2024001,part="Aoli_Body_Waitao",attributeDesc="角色切换边缘光强度",attribute="_ShowEffectRimScale",paramType=1,param1=5},mt),
    ["12"]=setmetatable({id=12,leaderId=2024001,part="Aoli_Body_Xiuzi",attributeDesc="角色切换边缘光强度",attribute="_ShowEffectRimScale",paramType=1,param1=5},mt),
    ["13"]=setmetatable({id=13,leaderId=2024001,part="Aoli_Hair",attributeDesc="角色切换边缘光强度",attribute="_ShowEffectRimScale",paramType=1,param1=5},mt),
    ["14"]=setmetatable({id=14,leaderId=2024001,part="Aoli_Body",attributeDesc="角色切换边缘光范围",attribute="_ShowEffectRimPower",paramType=1,param1=5},mt),
    ["15"]=setmetatable({id=15,leaderId=2024001,part="Aoli_Body_Waitao",attributeDesc="角色切换边缘光范围",attribute="_ShowEffectRimPower",paramType=1,param1=5},mt),
    ["16"]=setmetatable({id=16,leaderId=2024001,part="Aoli_Body_Xiuzi",attributeDesc="角色切换边缘光范围",attribute="_ShowEffectRimPower",paramType=1,param1=5},mt),
    ["17"]=setmetatable({id=17,leaderId=2024001,part="Aoli_Hair",attributeDesc="角色切换边缘光范围",attribute="_ShowEffectRimPower",paramType=1,param1=5},mt),
    ["18"]=setmetatable({id=18,leaderId=2016001,part="Chun_Body_Weiba",attributeDesc="高光范围",attribute="_SpecularPower",paramType=1,param1=0},mt),
    ["19"]=setmetatable({id=19,leaderId=2016001,part="Chun_Body_Weiba",attributeDesc="高光强度",attribute="_SpecularStrength",paramType=1,param1=0.2},mt),
    ["20"]=setmetatable({id=20,leaderId=2016001,part="Chun_Body_Weiba",attributeDesc="高光颜色",attribute="_SpecularColor",paramType=2,param1=0,param2={[1]=0,[2]=181,[3]=191,[4]=255,[5]=7}},mt),
    ["21"]=setmetatable({id=21,leaderId=2016001,part="Chun_Body_Weiba",attributeDesc="自发光强度",attribute="_Emissivetrength",paramType=1,param1=1},mt),
    ["22"]=setmetatable({id=22,leaderId=2016001,part="Chun_Body_Weiba",attributeDesc="自发光颜色",attribute="_EmissiveColor",paramType=2,param1=0,param2={[1]=13,[2]=165,[3]=191,[4]=255,[5]=1.81}},mt),
}
--生成获取数据的方法
---@return LeaderPartLumine
function GetLeaderPartLumineData(id)
    return LeaderPartLumine_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderPartLumine : table 
---@field id number
---@field leaderId number
---@field part string
---@field attributeDesc string
---@field attribute string
---@field paramType number
---@field param1 number
---@field param2 table
