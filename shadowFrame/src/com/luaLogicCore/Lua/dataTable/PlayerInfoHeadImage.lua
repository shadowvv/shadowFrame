---@class PlayerInfoHeadImage_Xls : table 
PlayerInfoHeadImage_Xls =
{
    ["8000001"]={id=8000001,name="法尼娅头像",icon="Faniya_110_110_yuan",open=401,unlockTip="获得法尼娅"},
    ["8500002"]={id=8500002,name="奈纳头像",icon="Naina_110_110_yuan",open=401,unlockTip="获得奈纳"},
    ["8500003"]={id=8500003,name="夏洛头像",icon="Xialuo_110_110_yuan",open=401,unlockTip="获得夏洛"},
}
--生成获取数据的方法
---@return PlayerInfoHeadImage
function GetPlayerInfoHeadImageData(id)
    return PlayerInfoHeadImage_Xls[tostring(id)]
end
--自动生成注释
---@class PlayerInfoHeadImage : table 
---@field id number
---@field name string
---@field icon string
---@field open number
---@field unlockTip string
