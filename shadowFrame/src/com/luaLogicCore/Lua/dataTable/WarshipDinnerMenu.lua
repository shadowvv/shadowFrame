local default = {id=0,isOpen=0,condition=0,name="",desc="",icon="",model="",rotation=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipDinnerMenu_Xls : table 
WarshipDinnerMenu_Xls =
{
    ["1"]=setmetatable({id=1,isOpen=1,condition=700003,name="拉普兰传统浓汤",desc="拉普兰地区的特色菜品之一。主要采用该地区特色豆类发酵而成的酱汁再加上可以抵御严寒的鲜蔬、肉类熬制而成。浓稠鲜美，味道独特，可快速缓解严寒。",icon="WarshipDinner_m_1",model="PF_Lapulanchuantongnongtang",rotation={[1]=-90,[2]=180,[3]=0}},mt),
    ["2"]=setmetatable({id=2,isOpen=1,condition=700002,name="奶油浓汤",desc="常见的家常浓汤，因材料简单几乎每家必备。以乳汁加入面粉、蔬菜缓慢熬制而成，上用酥皮所覆盖，火烤至酥脆。酥皮一敲即碎，厚重浓郁的乳香味从中散发而出，无比诱人。",icon="WarshipDinner_m_2",model="PF_Naiyounongtang",rotation={[1]=-90,[2]=0,[3]=0}},mt),
    ["3"]=setmetatable({id=3,isOpen=1,condition=700003,name="格洛菜汤",desc="也被称为红菜汤，是一种酸甜爽口热汤。格洛菜汤以番茄与格洛菜为主料熬制，常佐以其他蔬菜涮入其中煮至入味食用，味道酸甜可口、鲜美清香。",icon="WarshipDinner_m_3",model="PF_Geluolaitang",rotation={[1]=-90,[2]=180,[3]=0}},mt),
    ["4"]=setmetatable({id=4,isOpen=1,condition=700002,name="甘薯炖羔羊",desc="鲜嫩的小羔羊排辅以甘薯小火慢炖入味，羊排易嚼而不烂，骨头也已炖得酥软。甘薯的味道包裹在其上，使肉香而不腻，咸中带着一丝微甘。",icon="WarshipDinner_m_4",model="PF_Ganshuyangpai",rotation={[1]=-90,[2]=180,[3]=0}},mt),
    ["5"]=setmetatable({id=5,isOpen=1,condition=700001,name="什锦烩菜",desc="普遍的家常烩菜，一般没有固定的原料，荤素搭配即可。制作者会根据自家现有的蔬菜、肉类搭配组合，口味也有所不同。尼伯赞歌号上的什锦烩菜采用了新鲜五花肉片搭配多种素菜烩成，令人垂涎三尺。",icon="WarshipDinner_m_5",model="PF_Shijinhuicai",rotation={[1]=-90,[2]=180,[3]=0}},mt),
    ["6"]=setmetatable({id=6,isOpen=1,condition=0,name="兰德风味烩饭",desc="简单的食材经过多道工序制成、蕴含了丰富的口感。饱满圆润的熟米经过特制油炒至金黄，加入爽口的蔬菜与调料使味道绝不粘腻，入盘后浇上奶油芝士，烤约三十分钟，一道兰德风味的烩饭便完成了。",icon="WarshipDinner_m_6",model="PF_Chaofan",rotation={[1]=-90,[2]=0,[3]=0}},mt),
    ["7"]=setmetatable({id=7,isOpen=1,condition=700003,name="扉勒酱通心粉",desc="一种特殊酱料的通心粉。经由主香料“扉勒”与辅料各类香料打碎搅拌混合而成的酱料，在炒出香味后加入通心粉搅拌翻炒均匀做成菜肴，口味清爽，蔬菜味浓郁。",icon="WarshipDinner_m_7",model="PF_Feilejiangtongxinfen",rotation={[1]=-90,[2]=180,[3]=0}},mt),
    ["8"]=setmetatable({id=8,isOpen=1,condition=700002,name="乳汁脆片粥",desc="常见的早餐主食，一般会先放入麦片、果脆、坚果、可可味脆片等主餐，再将浓香的乳汁倒入其中。清脆的脆片与酸甜或香浓的乳汁结合，成为了老少皆宜的餐品。",icon="WarshipDinner_m_8",model="PF_Ruzhicuipianzhou",rotation={[1]=-90,[2]=0,[3]=0}},mt),
    ["9"]=setmetatable({id=9,isOpen=1,condition=700001,name="酸乳酪蛋糕",desc="散发着清香、酸甜可口的乳酪蛋糕。脆底上堆着丰满的轻度烘焙酸乳酪，入口厚重的奶味夹杂着酸甜的果味，棉软细腻的口感之上又加入了淡奶油的鲜奶与顶层水果的点缀，可惜一份只有两个。",icon="WarshipDinner_m_9",model="PF_Suanrulaodangao",rotation={[1]=-90,[2]=180,[3]=0}},mt),
    ["10"]=setmetatable({id=10,isOpen=1,condition=0,name="红糖布丁",desc="蛋、乳、面粉以最适当的比例调和增稠，煮熟后制冷形成软滑的冻状口感，顶部再浇以红糖，是令人怎么也吃不够的食物。偶尔尼伯赞歌的厨师也会根据个人口味增加果汁或酒类使其拥有不同的特色味道。",icon="WarshipDinner_m_10",model="PF_Hongtangbuding",rotation={[1]=-90,[2]=180,[3]=0}},mt),
    ["11"]=setmetatable({id=11,isOpen=0,condition=100201,name="红糖布丁",desc="奶油浓汤是用奶油制作的一道家常菜。奶油的脂肪含量比牛奶增加了20～25倍，而其余的成分如非脂乳固体（蛋白质、乳糖）及水分都大大降低，是维生素A和维生素D含量很高的调料。",icon="WarshipDinner_m_10"},mt),
    ["12"]=setmetatable({id=12,isOpen=0,condition=0,name="花蜜欧焙拉",desc="奶油浓汤是用奶油制作的一道家常菜。奶油的脂肪含量比牛奶增加了20～25倍，而其余的成分如非脂乳固体（蛋白质、乳糖）及水分都大大降低，是维生素A和维生素D含量很高的调料。",icon="WarshipDinner_m_10"},mt),
}
--生成获取数据的方法
---@return WarshipDinnerMenu
function GetWarshipDinnerMenuData(id)
    return WarshipDinnerMenu_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipDinnerMenu : table 
---@field id number
---@field isOpen number
---@field condition number
---@field name string
---@field desc string
---@field icon string
---@field model string
---@field rotation table
