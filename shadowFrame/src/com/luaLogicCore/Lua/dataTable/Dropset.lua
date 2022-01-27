---@class DropSet_Xls : table 
DropSet_Xls =
{
    ["10"]={dropSetId=10,beiZhu="",dropGroupId={[1]=100,[2]=200},weight={[1]=3000,[2]=1000}},
    ["20"]={dropSetId=20,beiZhu="",dropGroupId={[1]=200},weight={[1]=1000}},
    ["1000"]={dropSetId=1000,beiZhu="角色卡池",dropGroupId={[1]=121,[2]=111,[3]=241,[4]=231},weight={[1]=100,[2]=300,[3]=300,[4]=9300}},
    ["1001"]={dropSetId=1001,beiZhu="维拉UP",dropGroupId={[1]=10010,[2]=111,[3]=241,[4]=231},weight={[1]=100,[2]=300,[3]=300,[4]=9300}},
    ["3000"]={dropSetId=3000,beiZhu="武装卡池",dropGroupId={[1]=251,[2]=241,[3]=231},weight={[1]=300,[2]=750,[3]=8200}},
    ["3001"]={dropSetId=3001,beiZhu="武装卡池1",dropGroupId={[1]=30010,[2]=241,[3]=231},weight={[1]=300,[2]=750,[3]=8200}},
    ["3002"]={dropSetId=3002,beiZhu="武装卡池2",dropGroupId={[1]=30020,[2]=241,[3]=231},weight={[1]=300,[2]=750,[3]=8200}},
    ["3003"]={dropSetId=3003,beiZhu="武装卡池3",dropGroupId={[1]=30030,[2]=241,[3]=231},weight={[1]=300,[2]=750,[3]=8200}},
    ["3004"]={dropSetId=3004,beiZhu="武装卡池4",dropGroupId={[1]=30040,[2]=241,[3]=231},weight={[1]=300,[2]=750,[3]=8200}},
    ["3005"]={dropSetId=3005,beiZhu="武装卡池5",dropGroupId={[1]=30050,[2]=241,[3]=231},weight={[1]=300,[2]=750,[3]=8200}},
    ["4001"]={dropSetId=4001,beiZhu="初入方舟卡池",dropGroupId={[1]=121,[2]=111,[3]=241,[4]=231},weight={[1]=100,[2]=300,[3]=300,[4]=9300}},
}
--生成获取数据的方法
---@return DropSet
function GetDropSetData(id)
    return DropSet_Xls[tostring(id)]
end
--自动生成注释
---@class DropSet : table 
---@field dropSetId number
---@field beiZhu string
---@field dropGroupId table
---@field weight table
