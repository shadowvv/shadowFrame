local default = {id=0,reactionType="",triggerID=0,attachmentId=0,triggerPara=0,textPro=xlsNilTable,isHurtOpen=0,target=0,buffId=xlsNilTable,buffCd=0,suitabilityValue=0,elementColor=xlsNilTable,elementColorOutline=xlsNilTable,reactionIcon="",reactionTriggerIcon="",reactionHeadTag="",buffTask=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ElementalReaction_Xls : table 
ElementalReaction_Xls =
{
    ["1"]=setmetatable({id=1,reactionType="升腾",triggerID=4,attachmentId=2,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=100},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=255,[2]=255,[3]=255},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_melt_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_melt",reactionHeadTag="Eff_UI_Critical_light",buffTask=1},mt),
    ["2"]=setmetatable({id=2,reactionType="升腾",triggerID=2,attachmentId=4,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=110},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=253,[2]=61,[3]=60},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_melt_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_melt",reactionHeadTag="Eff_UI_Critical_light",buffTask=1},mt),
    ["3"]=setmetatable({id=3,reactionType="传导",triggerID=4,attachmentId=3,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=120,[2]=104},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=103,[2]=237,[3]=212},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_magnetism_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_magnetism",reactionHeadTag="Eff_UI_Critical_light",buffTask=2},mt),
    ["4"]=setmetatable({id=4,reactionType="传导",triggerID=3,attachmentId=4,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=130},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=103,[2]=237,[3]=212},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_magnetism_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_magnetism",reactionHeadTag="Eff_UI_Critical_light",buffTask=2},mt),
    ["5"]=setmetatable({id=5,reactionType="震爆",triggerID=3,attachmentId=2,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=1,target=1,buffId={[1]=151},buffCd=0.5,suitabilityValue=0.47,elementColor={[1]=103,[2]=237,[3]=212},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thunderstorm_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thunderstorm",reactionHeadTag="Eff_UI_Critical_light",buffTask=3},mt),
    ["6"]=setmetatable({id=6,reactionType="震爆",triggerID=2,attachmentId=3,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=1,target=1,buffId={[1]=141},buffCd=0.5,suitabilityValue=0.47,elementColor={[1]=253,[2]=61,[3]=60},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thunderstorm_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thunderstorm",reactionHeadTag="Eff_UI_Critical_light",buffTask=3},mt),
    ["7"]=setmetatable({id=7,reactionType="活化",triggerID=6,attachmentId=2,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=320},buffCd=1.6,suitabilityValue=1.4,elementColor={[1]=253,[2]=61,[3]=60},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thunderstorm_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thunderstorm",reactionHeadTag="Eff_UI_Critical_light",buffTask=4},mt),
    ["8"]=setmetatable({id=8,reactionType="活化",triggerID=6,attachmentId=3,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=330},buffCd=1.6,suitabilityValue=1.4,elementColor={[1]=103,[2]=237,[3]=212},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thunderstorm_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thunderstorm",reactionHeadTag="Eff_UI_Critical_light",buffTask=4},mt),
    ["9"]=setmetatable({id=9,reactionType="活化",triggerID=6,attachmentId=4,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=340},buffCd=1.6,suitabilityValue=1.4,elementColor={[1]=150,[2]=198,[3]=246},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thunderstorm_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thunderstorm",reactionHeadTag="Eff_UI_Critical_light",buffTask=4},mt),
    ["10"]=setmetatable({id=10,reactionType="活化",triggerID=6,attachmentId=5,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=350},buffCd=1.6,suitabilityValue=1.4,elementColor={[1]=13,[2]=158,[3]=246},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thunderstorm_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thunderstorm",reactionHeadTag="Eff_UI_Critical_light",buffTask=4},mt),
    ["11"]=setmetatable({id=11,reactionType="活化",triggerID=6,attachmentId=7,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=350},buffCd=1.6,suitabilityValue=1.4,elementColor={[1]=198,[2]=100,[3]=247},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thunderstorm_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thunderstorm",reactionHeadTag="Eff_UI_Critical_light",buffTask=4},mt),
    ["12"]=setmetatable({id=12,reactionType="对流",triggerID=3,attachmentId=5,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=170},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=103,[2]=237,[3]=212},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thundercloud_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thundercloud",reactionHeadTag="Eff_UI_Critical_light",buffTask=5},mt),
    ["13"]=setmetatable({id=13,reactionType="对流",triggerID=5,attachmentId=3,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=180},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=13,[2]=158,[3]=246},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_thundercloud_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_thundercloud",reactionHeadTag="Eff_UI_Critical_light",buffTask=5},mt),
    ["14"]=setmetatable({id=14,reactionType="结霰",triggerID=4,attachmentId=5,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=190},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=150,[2]=198,[3]=246},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_icecloud_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_icecloud",reactionHeadTag="Eff_UI_Critical_light",buffTask=6},mt),
    ["15"]=setmetatable({id=15,reactionType="结霰",triggerID=5,attachmentId=4,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=200},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=150,[2]=198,[3]=246},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_icecloud_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_icecloud",reactionHeadTag="Eff_UI_Critical_light",buffTask=6},mt),
    ["16"]=setmetatable({id=16,reactionType="熵增",triggerID=5,attachmentId=2,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=210},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=13,[2]=158,[3]=246},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_blast_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_blast",reactionHeadTag="Eff_UI_Critical_light",buffTask=7},mt),
    ["17"]=setmetatable({id=17,reactionType="熵增",triggerID=2,attachmentId=5,triggerPara=1.0,textPro={[1]="reactionType"},isHurtOpen=0,target=1,buffId={[1]=220},buffCd=0.5,suitabilityValue=1.0,elementColor={[1]=253,[2]=61,[3]=60},elementColorOutline={[1]=15,[2]=15,[3]=15},reactionIcon="limit_UI_icon_reactiontype_blast_damage",reactionTriggerIcon="limit_UI_icon_reactiontype_blast",reactionHeadTag="Eff_UI_Critical_light",buffTask=7},mt),
}
--生成获取数据的方法
---@return ElementalReaction
function GetElementalReactionData(id)
    return ElementalReaction_Xls[tostring(id)]
end
--自动生成注释
---@class ElementalReaction : table 
---@field id number
---@field reactionType string
---@field triggerID number
---@field attachmentId number
---@field triggerPara number
---@field textPro table
---@field isHurtOpen number
---@field target number
---@field buffId table
---@field buffCd number
---@field suitabilityValue number
---@field elementColor table
---@field elementColorOutline table
---@field reactionIcon string
---@field reactionTriggerIcon string
---@field reactionHeadTag string
---@field buffTask number
