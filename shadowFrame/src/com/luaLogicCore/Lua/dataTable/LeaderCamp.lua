---@class LeaderCamp_Xls : table 
LeaderCamp_Xls =
{
    ["1"]={id=1,name="瓦哈纳",icon="role_inf_camp_wahana",campImage="tanchuang_b_image03",campDes="隶属于瓦哈纳控制区的斯露德编制队伍"},
    ["2"]={id=2,name="柯莱昂",icon="role_inf_camp_kelaiang",campImage="tanchuang_b_image03",campDes="柯莱昂地区的维安组织"},
    ["3"]={id=3,name="新维内德",icon="role_inf_camp_xinweineide",campImage="tanchuang_b_image03",campDes="三角信标地区的新闻通讯社"},
    ["4"]={id=4,name="出雲",icon="role_inf_camp_chuyun",campImage="tanchuang_b_image03",campDes="柯莱昂地区以贩卖柑橘起家的家族组织"},
}
--生成获取数据的方法
---@return LeaderCamp
function GetLeaderCampData(id)
    return LeaderCamp_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderCamp : table 
---@field id number
---@field name string
---@field icon string
---@field campImage string
---@field campDes string
