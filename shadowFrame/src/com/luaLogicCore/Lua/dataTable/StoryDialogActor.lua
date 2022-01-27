---@class StoryDialogActor_Xls : table 
StoryDialogActor_Xls =
{
    ["599997"]={id=599997,name="克拉",des="克拉",iconDialog="",face00="UI_kela_moren",face01="UI_kela_moren",face02="UI_kela_moren",face03="UI_kela_moren",face04="UI_kela_moren",face05="UI_kela_moren",face06="UI_kela_moren",face07="UI_kela_moren",face08="UI_kela_moren",face09="UI_kela_moren",face10="UI_kela_moren",faceSize={[1]=275,[2]=372},faceScaling=1.0,faceCorrect={[1]=0.0,[2]=118.0,[3]=0.0}},
    ["2001001"]={id=2001001,name="法尼娅",des="法尼娅",iconDialog="UI_npc_faniya",face00="UI_faniya_0_moren",face01="UI_faniya_1_xi",face02="UI_faniya_2_nu",face03="UI_faniya_3_ai",face04="UI_faniya_4_le",face05="UI_faniya_5_chijing",face06="UI_faniya_6_sikao",face07="UI_faniya_7_huibi",face08="UI_faniya_8_jianjue",face09="UI_faniya_9_xianqi",face10="UI_faniya_10_xihuan",faceSize={[1]=680,[2]=1320},faceScaling=1.0,faceCorrect={[1]=13.0,[2]=-274.0,[3]=0.0}},
    ["2002001"]={id=2002001,name="奈纳",des="奈纳",iconDialog="",face00="UI_naina_0_moren",face01="UI_naina_1_xi",face02="UI_naina_2_nu",face03="UI_naina_3_ai",face04="UI_naina_4_le",face05="UI_naina_5_chijing",face06="UI_naina_6_sikao",face07="UI_naina_7_lanyangyang",face08="UI_naina_8_jianjue",face09="UI_naina_9_shuaku",face10="UI_naina_10_chaofeng",faceSize={[1]=680,[2]=1320},faceScaling=1.0,faceCorrect={[1]=18.0,[2]=-258.0,[3]=0.0}},
    ["2003001"]={id=2003001,name="夏洛",des="夏洛",iconDialog="",face00="UI_xialuo_0_moren",face01="UI_xialuo_1_xi",face02="UI_xialuo_2_nu",face03="UI_xialuo_3_ai",face04="UI_xialuo_4_le",face05="UI_xialuo_5_chijing",face06="UI_xialuo_6_sikao",face07="UI_xialuo_7_youyu",face08="UI_xialuo_8_guli",face09="UI_xialuo_9_changge",face10="UI_xialuo_10_kaixin",faceSize={[1]=680,[2]=1320},faceScaling=0.95,faceCorrect={[1]=71.0,[2]=-275.0,[3]=0.0}},
    ["2004001"]={id=2004001,name="维拉",des="维拉",iconDialog="",face00="UI_weila_0_moren",face01="UI_weila_0_moren",face02="UI_weila_0_moren",face03="UI_weila_0_moren",face04="UI_weila_0_moren",face05="UI_weila_0_moren",face06="UI_weila_0_moren",face07="UI_weila_0_moren",face08="UI_weila_0_moren",face09="UI_weila_0_moren",face10="UI_weila_0_moren",faceSize={[1]=680,[2]=1320},faceScaling=1.0,faceCorrect={[1]=110.0,[2]=-305.0,[3]=0.0}},
    ["1001"]={id=1001,name="？？？",des="？？？"},
}
--生成获取数据的方法
---@return StoryDialogActor
function GetStoryDialogActorData(id)
    return StoryDialogActor_Xls[tostring(id)]
end
--自动生成注释
---@class StoryDialogActor : table 
---@field id number
---@field name string
---@field des string
---@field iconDialog string
---@field face00 string
---@field face01 string
---@field face02 string
---@field face03 string
---@field face04 string
---@field face05 string
---@field face06 string
---@field face07 string
---@field face08 string
---@field face09 string
---@field face10 string
---@field faceSize table
---@field faceScaling number
---@field faceCorrect table
---@field twoBlur table
---@field thereBlur table
