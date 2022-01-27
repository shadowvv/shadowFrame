---@class DropGroup_Xls : table 
DropGroup_Xls =
{
    ["100"]={dropGroupId=100,beiZhu="",dropGoodId={[1]=1000,[2]=1001,[3]=1002},weight={[1]=1000,[2]=1000,[3]=2000}},
    ["200"]={dropGroupId=200,beiZhu="",dropGoodId={[1]=2000},weight={[1]=1000}},
    ["111"]={dropGroupId=111,beiZhu="A级角色组",dropGoodId={[1]=2001001,[2]=2002001,[3]=2003001,[4]=2005001,[5]=2006001},weight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000}},
    ["121"]={dropGroupId=121,beiZhu="S级角色组",dropGoodId={[1]=2004001,[2]=2007001,[3]=2008001},weight={[1]=1000,[2]=1000,[3]=1000}},
    ["131"]={dropGroupId=131,beiZhu="夏洛组",dropGoodId={[1]=2003001},weight={[1]=1000}},
    ["251"]={dropGroupId=251,beiZhu="五星武装组",dropGoodId={[1]=5051010,[2]=5052010,[3]=5053010,[4]=5054010,[5]=5055010},weight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000}},
    ["241"]={dropGroupId=241,beiZhu="四星武装组",dropGoodId={[1]=5041010,[2]=5042010,[3]=5043010,[4]=5044010,[5]=5045010},weight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000}},
    ["231"]={dropGroupId=231,beiZhu="三星武装组",dropGoodId={[1]=5031010,[2]=5032010,[3]=5033010,[4]=5034010,[5]=5035010},weight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000}},
    ["341"]={dropGroupId=341,beiZhu="四星启示组",dropGoodId={[1]=7000301,[2]=7000302,[3]=7000303,[4]=7000304,[5]=7000305},weight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000}},
    ["351"]={dropGroupId=351,beiZhu="五星启示组",dropGoodId={[1]=7010301,[2]=7010302,[3]=7010303,[4]=7010304,[5]=7010305},weight={[1]=1000,[2]=1000,[3]=1000,[4]=1000,[5]=1000}},
    ["1101"]={dropGroupId=1101,beiZhu="B级角色碎片组",dropGoodId={[1]=3001001},weight={[1]=1000}},
    ["1201"]={dropGroupId=1201,beiZhu="A级角色碎片组",dropGoodId={[1]=3002001,[2]=3003001},weight={[1]=1000,[2]=1000}},
    ["1301"]={dropGroupId=1301,beiZhu="S级角色碎片组",dropGoodId={[1]=3004001},weight={[1]=1000}},
    ["10010"]={dropGroupId=10010,beiZhu="维拉",dropGoodId={[1]=2004001},weight={[1]=1000}},
    ["30010"]={dropGroupId=30010,beiZhu="五星武器1",dropGoodId={[1]=5051010},weight={[1]=1000}},
    ["30020"]={dropGroupId=30020,beiZhu="五星武器2",dropGoodId={[1]=5052010},weight={[1]=1000}},
    ["30030"]={dropGroupId=30030,beiZhu="五星武器3",dropGoodId={[1]=5053010},weight={[1]=1000}},
    ["30040"]={dropGroupId=30040,beiZhu="五星武器4",dropGoodId={[1]=5054010},weight={[1]=1000}},
    ["30050"]={dropGroupId=30050,beiZhu="五星武器5",dropGoodId={[1]=5055010},weight={[1]=1000}},
    ["100001"]={dropGroupId=100001,beiZhu="低级突破材料专属组",dropGoodId={[1]=1030001,[2]=1030003},weight={[1]=1000,[2]=3000}},
    ["100002"]={dropGroupId=100002,beiZhu="高级突破材料专属组",dropGoodId={[1]=1030002,[2]=1030004},weight={[1]=1000,[2]=3000}},
    ["100003"]={dropGroupId=100003,beiZhu="低级突破材料组",dropGoodId={[1]=1030005,[2]=1030007,[3]=1030009},weight={[1]=2000,[2]=4000,[3]=3000}},
    ["100004"]={dropGroupId=100004,beiZhu="高级突破材料组",dropGoodId={[1]=1030006,[2]=1030008,[3]=1030010},weight={[1]=2000,[2]=4000,[3]=3000}},
    ["100101"]={dropGroupId=100101,beiZhu="1星装备经验材料组",dropGoodId={[1]=1090001,[2]=1090101},weight={[1]=1000,[2]=3000}},
    ["100102"]={dropGroupId=100102,beiZhu="2星装备经验材料组",dropGoodId={[1]=1090002,[2]=1090102},weight={[1]=1000,[2]=3000}},
    ["100103"]={dropGroupId=100103,beiZhu="3星装备经验材料组",dropGoodId={[1]=1090003,[2]=1090103},weight={[1]=1000,[2]=3000}},
    ["100104"]={dropGroupId=100104,beiZhu="4星装备经验材料组",dropGoodId={[1]=1090004,[2]=1090104},weight={[1]=1000,[2]=3000}},
}
--生成获取数据的方法
---@return DropGroup
function GetDropGroupData(id)
    return DropGroup_Xls[tostring(id)]
end
--自动生成注释
---@class DropGroup : table 
---@field dropGroupId number
---@field beiZhu string
---@field dropGoodId table
---@field weight table
