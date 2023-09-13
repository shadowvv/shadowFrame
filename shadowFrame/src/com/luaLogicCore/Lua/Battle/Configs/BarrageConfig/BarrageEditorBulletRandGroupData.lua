---@class BarrageEditorBulletRandGroupData_xls : table
BarrageEditorBulletRandGroupData_xls = {
["-1"] = {Id=-1,Name="椿01",IsDefault=true,PrefabPool={}},
["1"] = {Id=1,Name="111",IsDefault=false,PrefabPool={""}},
["2"] = {Id=2,Name="naina zhudong",IsDefault=false,PrefabPool={"naina_zhudong_beizi","naina_zhudong_kedao","naina_zhudong_MingDi","naina_zhudong_Pojia","naina_zhudong_Sanling","naina_zhudong_Xiaoyanwei","naina_zhudong_YanWu","naina_zhudong_Yulie"}},
["1631"] = {Id=1631,Name="椿",IsDefault=false,PrefabPool={"PF_Battle_Chun_jizou_zidan_loop_30","PF_Battle_Chun_jizou_zidan_loop","PF_Battle_Chun_jizou_zidan_loop_60"}},
["2922"] = {Id=2922,Name="三叶随机子弹",IsDefault=false,PrefabPool={"Pre_Eff_Sanye_zhudong_bullet","Pre_Eff_Sanye_zhudong_bullet_1","Pre_Eff_Sanye_zhudong_bullet_2"}},
["401501"] = {Id=401501,Name="401501",IsDefault=false,PrefabPool={}}}
---@return BarrageEditorBulletRandGroupData
function BarrageEditorBulletRandGroupData_xls.GetData(id)
    return BarrageEditorBulletRandGroupData_xls[tostring(id)]
end
---@class BarrageEditorBulletRandGroupData : table
---@field Id number
---@field Name string
---@field IsDefault boolean
---@field PrefabPool table

