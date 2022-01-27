---@class CollectionClassify_Xls : table 
CollectionClassify_Xls =
{
    ["11"]={iD=11,tabName="·怪物图鉴·",tabPicture="Book_Monster",classifyTab=1,classifyName="小型异生体",classifyPicture="monster_small"},
    ["12"]={iD=12,tabName="·怪物图鉴·",tabPicture="Book_Monster",classifyTab=1,classifyName="中型异生体",classifyPicture="monster_middle"},
    ["13"]={iD=13,tabName="·怪物图鉴·",tabPicture="Book_Monster",classifyTab=1,classifyName="大型异生体",classifyPicture="monster_boss"},
    ["21"]={iD=21,tabName="·律叶图鉴·",tabPicture="Book_Weapon",classifyTab=2,classifyName="歌唱型",classifyPicture="weapon_1gechang"},
    ["22"]={iD=22,tabName="·律叶图鉴·",tabPicture="Book_Weapon",classifyTab=2,classifyName="舞蹈型",classifyPicture="weapon_1gechang"},
    ["23"]={iD=23,tabName="·律叶图鉴·",tabPicture="Book_Weapon",classifyTab=2,classifyName="祷告型",classifyPicture="weapon_1gechang"},
    ["24"]={iD=24,tabName="·律叶图鉴·",tabPicture="Book_Weapon",classifyTab=2,classifyName="礼拜型",classifyPicture="weapon_1gechang"},
    ["25"]={iD=25,tabName="·律叶图鉴·",tabPicture="Book_Weapon",classifyTab=2,classifyName="祭祀型",classifyPicture="weapon_1gechang"},
    ["31"]={iD=31,tabName="·镜像图鉴·",tabPicture="Book_Jingxiang",classifyTab=3,classifyName="镜像",classifyPicture="Equip"},
    ["41"]={iD=41,tabName="·剧情图鉴·",tabPicture="Book_Story",classifyTab=4,classifyName="剧情",classifyPicture="story"},
}
--生成获取数据的方法
---@return CollectionClassify
function GetCollectionClassifyData(id)
    return CollectionClassify_Xls[tostring(id)]
end
--自动生成注释
---@class CollectionClassify : table 
---@field iD number
---@field tabName string
---@field tabPicture string
---@field classifyTab number
---@field classifyName string
---@field classifyPicture string
