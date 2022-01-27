---@class LotteryInstance_Xls : table 
LotteryInstance_Xls =
{
    ["1001"]={id=1001,cardBoxName="斯露德卡池",timeLimit=2,bottomGroup=1000,swearType=1,countType=0,itemId=1000000,itemNum=180,choiceWord="",currencyId=3001,cardBoxNumber=-1,timeId=9999,cardBoxPicture="Gacha_bg_1001",cardBoxTabPicture="Gacha_ad_1001",cardBoxRules="还有<color=#86b6ff><size=32>{1}</size></color>次必有4星或以上斯露德\n还有<color=#eebd14><size=32>{2}</size></color>次必有5星斯露德\n",helpsRules="{title}常驻共鸣说明{title}本卡池不限制召唤次数\n本卡池包含所有上线的斯露德\n本卡池不包含4星及以上式杖\n {title}保底说明{title}每10次招募必有4星及以上斯露德\n每80次必有5星斯露德\n",display1=1,display2=1,cardBoxGroup={[1]=1000}},
    ["1002"]={id=1002,cardBoxName="律叶卡池",timeLimit=2,bottomGroup=3000,swearType=1,countType=0,itemId=1000001,itemNum=180,choiceWord="",currencyId=3001,cardBoxNumber=-1,timeId=9999,cardBoxPicture="Gacha_bg_1001",cardBoxTabPicture="Gacha_ad_1001",cardBoxRules="还有<color=#86b6ff><size=32>{1}</size></color>次必有4星及以上式杖\n还有<color=#eebd14><size=32>{2}</size></color>次必有5星式杖\n",helpsRules="{title}常驻共鸣说明{title}本卡池限制召唤次数100，次数达到后关闭\n本卡池包含所有上线的式杖\n本卡池不包含任何斯露德\n {title}保底说明{title}每10次招募必有四星及以上式杖\n每30次必有五星式杖\n",display1=1,display2=1,cardBoxGroup={[1]=3000}},
    ["2001"]={id=2001,cardBoxName="维拉UP",timeLimit=3,bottomGroup=1001,swearType=1,countType=0,itemId=1000001,itemNum=180,choiceWord="选择的斯露德占5星出率<color=#ffbd30>70%</color>",currencyId=3002,cardBoxNumber=-1,timeId=2001,cardBoxPicture="Gacha_bg_1001",cardBoxTabPicture="Gacha_ad_1001",cardBoxRules="还有<color=#86b6ff><size=32>{1}</size></color>次必有4星或以上斯露德\n还有<color=#eebd14><size=32>{2}</size></color>次必有5星斯露德\n",helpsRules="{title}常驻共鸣说明{title}本卡池不限制召唤次数\n本卡池包含所有上线的斯露德\n本卡池不包含4星及以上式杖\n {title}保底说明{title}每10次招募必有4星及以上斯露德\n每80次必有5星斯露德\n {title}UP说明{title}自选的UP出货率占5星斯露德70%可随时更换UP\n",display1=1,display2=1,cardBoxGroup={[1]=1001}},
    ["3001"]={id=3001,cardBoxName="5星律叶自选",timeLimit=3,bottomGroup=3001,swearType=2,countType=0,itemId=1000001,itemNum=180,choiceWord="选择的式杖占5星出率<color=#ffbd30>70%</color>",currencyId=3002,cardBoxNumber=-1,timeId=5001,cardBoxPicture="Gacha_bg_1001",cardBoxTabPicture="Gacha_ad_1001",cardBoxRules="还有<color=#86b6ff><size=32>{1}</size></color>次必有4星及以上式杖\n还有<color=#eebd14><size=32>{2}</size></color>次必有5星式杖\n",helpsRules="{title}常驻共鸣说明{title}本卡池限制召唤次数100，次数达到后卡池关闭\n本卡池包含所有上线的式杖\n本卡池不包含任何斯露德\n {title}保底说明{title}每10次招募必有四星及以上式杖\n每30次必有五星式杖\n {title}UP说明{title}自选的UP出货率占五星式杖70%可随时更换UP\n",display1=1,display2=1,cardBoxGroup={[1]=3001,[2]=3002,[3]=3003}},
    ["4001"]={id=4001,cardBoxName="初入方舟",timeLimit=1,bottomGroup=4001,swearType=1,countType=0,itemId=1000001,itemNum=180,choiceWord="",currencyId=3002,cardBoxNumber=30,timeId=9999,cardBoxPicture="Gacha_bg_1001",cardBoxTabPicture="Gacha_ad_1001",cardBoxRules="还有<color=#86b6ff><size=32>{1}</size></color>次必有4星或以上斯露德\n还有<color=#eebd14><size=32>{2}</size></color>次必有5星斯露德\n",helpsRules="{title}常驻共鸣说明{title}本卡池不限制召唤次数\n本卡池包含所有上线的斯露德\n本卡池不包含4星及以上式杖\n {title}保底说明{title}每10次招募必有4星及以上斯露德\n每80次必有5星斯露德\n",display1=1,display2=1,cardBoxGroup={[1]=4001}},
}
--生成获取数据的方法
---@return LotteryInstance
function GetLotteryInstanceData(id)
    return LotteryInstance_Xls[tostring(id)]
end
--自动生成注释
---@class LotteryInstance : table 
---@field id number
---@field cardBoxName string
---@field timeLimit number
---@field cardBoxGroup table
---@field bottomGroup number
---@field swearType number
---@field countType number
---@field itemId number
---@field itemNum number
---@field choiceWord string
---@field currencyId number
---@field cardBoxNumber number
---@field timeId number
---@field cardBoxPicture string
---@field cardBoxTabPicture string
---@field cardBoxRules string
---@field helpsRules string
---@field display1 number
---@field display2 number
