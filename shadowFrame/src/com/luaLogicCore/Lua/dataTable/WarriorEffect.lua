local default = {id=0,conBuff=xlsNilTable,conTalent=xlsNilTable,endBuff=xlsNilTable,conEffect=xlsNilTable,endEffect=xlsNilTable,icon="",talentSkill=xlsNilTable,name="",content=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarriorEffect_Xls : table 
WarriorEffect_Xls =
{
    ["101"]=setmetatable({id=101,conBuff={[1]="107002"},conTalent=xlsNilTable,endBuff={[1]="199989",[2]="199990"},conEffect={[1]=106003,[2]=106005},endEffect={[1]=106004},icon="icon_battle_guozai",talentSkill={[1]=1100000,[2]=1100002,[3]=1100001,[4]=1100027},name="跃迁异种",content="异种状态期间会频繁瞬移跃迁，且跃迁后会回复血量；被克制后暂时失去跃迁能力。"},mt),
    ["201"]=setmetatable({id=201,conBuff=xlsNilTable,conTalent=xlsNilTable,endBuff={[1]="199992",[2]="199989"},conEffect={[1]=104008},endEffect=xlsNilTable,icon="icon_battle_pingzhang",talentSkill={[1]=1100004,[2]=1100003,[3]=1100012},name="护盾异种",content="当血量低于一定程度，护盾异种会开启无敌护盾，并高速回复；通过特定手段破除护盾后，异种一段时间会无法开启护盾。"},mt),
    ["301"]=setmetatable({id=301,conBuff={[1]="106003"},conTalent=xlsNilTable,endBuff={[1]="106097",[2]="199991",[3]="199989"},conEffect={[1]=106003,[2]=106005},endEffect={[1]=106004},icon="icon_battle_shibukedang",talentSkill={[1]=5151020,[2]=5151021,[3]=5151022,[4]=5151023,[5]=5151024,[6]=5151025,[7]=1100005,[8]=1100006,[9]=1100011,[10]=1100026},name="追击异种",content="被克制前，异种附带高减伤且不会被打断行动，一旦被克制，会短期眩晕并在其后一段时间内失去减伤效果。"},mt),
    ["999"]=setmetatable({id=999,conBuff={[1]="20010"},conTalent=xlsNilTable,endBuff={[1]="9002"},conEffect={[1]=4},endEffect={[1]=201179}},mt),
}
--生成获取数据的方法
---@return WarriorEffect
function GetWarriorEffectData(id)
    return WarriorEffect_Xls[tostring(id)]
end
--自动生成注释
---@class WarriorEffect : table 
---@field id number
---@field conBuff table
---@field conTalent table
---@field endBuff table
---@field conEffect table
---@field endEffect table
---@field icon string
---@field talentSkill table
---@field name string
---@field content string
