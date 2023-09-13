local default = {id=0,shopId=0,fieldPage=0,field=0,icon="",itemId=0,itemCount=0,itemWeight=0,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=0,money=0,price=0,discountNum=0,discount=0,playerBuy=0,buyTop=0,title="",titleStroke=0,titleColor="",iosWhite=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ShopGood_Xls : table 
ShopGood_Xls =
{
    ["70001"]=setmetatable({id=70001,shopId=70,fieldPage=1,field=1,icon="",itemId=1000001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=14,price=100,discountNum=0,discount=0,playerBuy=0,buyTop=1460,title="",titleStroke=0,titleColor="",iosWhite=1},mt),
    ["70002"]=setmetatable({id=70002,shopId=70,fieldPage=1,field=2,icon="",itemId=1090102,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=5,money=14,price=30,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["70003"]=setmetatable({id=70003,shopId=70,fieldPage=1,field=3,icon="",itemId=1090101,itemCount=10,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=35,money=14,price=5,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["70004"]=setmetatable({id=70004,shopId=70,fieldPage=1,field=4,icon="",itemId=1070002,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=14,price=15,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["70005"]=setmetatable({id=70005,shopId=70,fieldPage=1,field=5,icon="",itemId=1070001,itemCount=2,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=80,money=14,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["70006"]=setmetatable({id=70006,shopId=70,fieldPage=1,field=6,icon="",itemId=1020001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=250,money=14,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["70007"]=setmetatable({id=70007,shopId=70,fieldPage=1,field=7,icon="",itemId=1090001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=250,money=14,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["70008"]=setmetatable({id=70008,shopId=70,fieldPage=1,field=8,icon="",itemId=10,itemCount=20000,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=14,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71001"]=setmetatable({id=71001,shopId=71,fieldPage=0,field=1,icon="",itemId=1000001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=10,money=15,price=20,discountNum=0,discount=0,playerBuy=0,buyTop=1460,title="",titleStroke=0,titleColor="",iosWhite=1},mt),
    ["71002"]=setmetatable({id=71002,shopId=71,fieldPage=0,field=2,icon="",itemId=2008001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=380,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71003"]=setmetatable({id=71003,shopId=71,fieldPage=0,field=3,icon="",itemId=2009001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=380,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71004"]=setmetatable({id=71004,shopId=71,fieldPage=0,field=4,icon="",itemId=2011001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=380,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71005"]=setmetatable({id=71005,shopId=71,fieldPage=0,field=5,icon="",itemId=2014001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=380,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71006"]=setmetatable({id=71006,shopId=71,fieldPage=0,field=6,icon="",itemId=2004001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=380,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71007"]=setmetatable({id=71007,shopId=71,fieldPage=0,field=7,icon="",itemId=2016001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=380,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71008"]=setmetatable({id=71008,shopId=71,fieldPage=0,field=8,icon="",itemId=2026001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=380,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71009"]=setmetatable({id=71009,shopId=71,fieldPage=0,field=9,icon="",itemId=2007001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=380,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71010"]=setmetatable({id=71010,shopId=71,fieldPage=0,field=10,icon="",itemId=5051020,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=250,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71011"]=setmetatable({id=71011,shopId=71,fieldPage=0,field=11,icon="",itemId=5053020,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=250,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71012"]=setmetatable({id=71012,shopId=71,fieldPage=0,field=12,icon="",itemId=5055020,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=250,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71013"]=setmetatable({id=71013,shopId=71,fieldPage=0,field=13,icon="",itemId=5054020,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=15,price=250,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71014"]=setmetatable({id=71014,shopId=71,fieldPage=0,field=14,icon="",itemId=3008001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=15,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71015"]=setmetatable({id=71015,shopId=71,fieldPage=0,field=15,icon="",itemId=3009001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=15,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71016"]=setmetatable({id=71016,shopId=71,fieldPage=0,field=16,icon="",itemId=3011001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=15,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71017"]=setmetatable({id=71017,shopId=71,fieldPage=0,field=17,icon="",itemId=3014001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=15,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71018"]=setmetatable({id=71018,shopId=71,fieldPage=0,field=18,icon="",itemId=3004001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=15,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71019"]=setmetatable({id=71019,shopId=71,fieldPage=0,field=19,icon="",itemId=3016001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=15,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71020"]=setmetatable({id=71020,shopId=71,fieldPage=0,field=20,icon="",itemId=3026001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=15,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["71021"]=setmetatable({id=71021,shopId=71,fieldPage=0,field=21,icon="",itemId=3007001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=15,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=1460},mt),
    ["91002"]=setmetatable({id=91002,shopId=91,fieldPage=0,field=2,icon="",itemId=1000001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=11,price=160,discountNum=0,discount=0,playerBuy=0,buyTop=1460,title="",titleStroke=0,titleColor="",iosWhite=1},mt),
    ["181001"]=setmetatable({id=181001,shopId=191,fieldPage=0,field=1,icon="",itemId=1051026,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=90000000,price=50,discountNum=0,discount=0,playerBuy=0,buyTop=3900,title="",titleStroke=0,titleColor="",iosWhite=1},mt),
    ["181002"]=setmetatable({id=181002,shopId=191,fieldPage=0,field=1,icon="",itemId=1051027,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=90000000,price=25,discountNum=0,discount=0,playerBuy=0,buyTop=3900,title="",titleStroke=0,titleColor="",iosWhite=1},mt),
    ["201001"]=setmetatable({id=201001,shopId=201,fieldPage=0,field=1,icon="",itemId=1000001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=1,money=1006,price=30,discountNum=0,discount=0,playerBuy=0,buyTop=3700,title="",titleStroke=0,titleColor="",iosWhite=1},mt),
    ["201002"]=setmetatable({id=201002,shopId=201,fieldPage=0,field=2,icon="",itemId=1070001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=1006,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=3700},mt),
    ["201003"]=setmetatable({id=201003,shopId=201,fieldPage=0,field=3,icon="",itemId=1070002,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=10,money=1006,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3700},mt),
    ["201004"]=setmetatable({id=201004,shopId=201,fieldPage=0,field=4,icon="",itemId=1070003,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=2,money=1006,price=60,discountNum=0,discount=0,playerBuy=0,buyTop=3700},mt),
    ["201005"]=setmetatable({id=201005,shopId=201,fieldPage=0,field=5,icon="",itemId=10,itemCount=1000,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=1006,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=3700},mt),
    ["220001"]=setmetatable({id=220001,shopId=220,fieldPage=0,field=1,icon="",itemId=3004001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=1008,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220002"]=setmetatable({id=220002,shopId=220,fieldPage=0,field=2,icon="",itemId=3007001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=1008,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220003"]=setmetatable({id=220003,shopId=220,fieldPage=0,field=3,icon="",itemId=3011001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=1008,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220004"]=setmetatable({id=220004,shopId=220,fieldPage=0,field=4,icon="",itemId=3014001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=1008,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220005"]=setmetatable({id=220005,shopId=220,fieldPage=0,field=5,icon="",itemId=3016001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=1008,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220006"]=setmetatable({id=220006,shopId=220,fieldPage=0,field=6,icon="",itemId=3026001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=1008,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220007"]=setmetatable({id=220007,shopId=220,fieldPage=0,field=7,icon="",itemId=3008001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=1008,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220008"]=setmetatable({id=220008,shopId=220,fieldPage=0,field=8,icon="",itemId=3009001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=15,money=1008,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220009"]=setmetatable({id=220009,shopId=220,fieldPage=0,field=9,icon="",itemId=3002001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801,title="",titleStroke=0,titleColor="",iosWhite=1},mt),
    ["220010"]=setmetatable({id=220010,shopId=220,fieldPage=0,field=10,icon="",itemId=3003001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220011"]=setmetatable({id=220011,shopId=220,fieldPage=0,field=11,icon="",itemId=3005001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220012"]=setmetatable({id=220012,shopId=220,fieldPage=0,field=12,icon="",itemId=3006001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220013"]=setmetatable({id=220013,shopId=220,fieldPage=0,field=13,icon="",itemId=3010001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220014"]=setmetatable({id=220014,shopId=220,fieldPage=0,field=14,icon="",itemId=3017001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220015"]=setmetatable({id=220015,shopId=220,fieldPage=0,field=15,icon="",itemId=3012001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220016"]=setmetatable({id=220016,shopId=220,fieldPage=0,field=16,icon="",itemId=3013001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220017"]=setmetatable({id=220017,shopId=220,fieldPage=0,field=17,icon="",itemId=3024001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220018"]=setmetatable({id=220018,shopId=220,fieldPage=0,field=18,icon="",itemId=3015001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220019"]=setmetatable({id=220019,shopId=220,fieldPage=0,field=19,icon="",itemId=3020001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=20,money=1008,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["220020"]=setmetatable({id=220020,shopId=220,fieldPage=0,field=20,icon="",itemId=10,itemCount=3000,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=1008,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=3801},mt),
    ["300001"]=setmetatable({id=300001,shopId=300,fieldPage=0,field=1,icon="",itemId=1000001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=23200,limit=5,money=1007,price=100,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300002"]=setmetatable({id=300002,shopId=300,fieldPage=0,field=2,icon="",itemId=1020003,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=100,money=1007,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300003"]=setmetatable({id=300003,shopId=300,fieldPage=0,field=3,icon="",itemId=1090003,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=200,money=1007,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300004"]=setmetatable({id=300004,shopId=300,fieldPage=0,field=4,icon="",itemId=1090102,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=40,money=1007,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300005"]=setmetatable({id=300005,shopId=300,fieldPage=0,field=5,icon="",itemId=1080033,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7410203,openTime=0,limit=8,money=1007,price=4,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300006"]=setmetatable({id=300006,shopId=300,fieldPage=0,field=6,icon="",itemId=1080032,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7410202,openTime=0,limit=16,money=1007,price=2,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300007"]=setmetatable({id=300007,shopId=300,fieldPage=0,field=7,icon="",itemId=1080031,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7410201,openTime=0,limit=18,money=1007,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300008"]=setmetatable({id=300008,shopId=300,fieldPage=0,field=8,icon="",itemId=1030013,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7400103,openTime=0,limit=16,money=1007,price=4,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300009"]=setmetatable({id=300009,shopId=300,fieldPage=0,field=9,icon="",itemId=1030012,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7400102,openTime=0,limit=32,money=1007,price=2,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300010"]=setmetatable({id=300010,shopId=300,fieldPage=0,field=10,icon="",itemId=1030011,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7400101,openTime=0,limit=36,money=1007,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300011"]=setmetatable({id=300011,shopId=300,fieldPage=0,field=11,icon="",itemId=1070002,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=60,money=1007,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300012"]=setmetatable({id=300012,shopId=300,fieldPage=0,field=12,icon="",itemId=1070001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=360,money=1007,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["300013"]=setmetatable({id=300013,shopId=300,fieldPage=0,field=13,icon="",itemId=10,itemCount=4000,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=1007,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6752},mt),
    ["301001"]=setmetatable({id=301001,shopId=301,fieldPage=0,field=1,icon="",itemId=1000001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=23329,limit=5,money=1011,price=100,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301002"]=setmetatable({id=301002,shopId=301,fieldPage=0,field=1,icon="",itemId=1020003,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=100,money=1011,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301003"]=setmetatable({id=301003,shopId=301,fieldPage=0,field=1,icon="",itemId=1090003,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=200,money=1011,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301004"]=setmetatable({id=301004,shopId=301,fieldPage=0,field=1,icon="",itemId=1090102,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=40,money=1011,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301005"]=setmetatable({id=301005,shopId=301,fieldPage=0,field=1,icon="",itemId=1080023,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7410103,openTime=0,limit=8,money=1011,price=4,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301006"]=setmetatable({id=301006,shopId=301,fieldPage=0,field=1,icon="",itemId=1080022,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7410102,openTime=0,limit=16,money=1011,price=2,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301007"]=setmetatable({id=301007,shopId=301,fieldPage=0,field=1,icon="",itemId=1080021,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7410101,openTime=0,limit=18,money=1011,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301008"]=setmetatable({id=301008,shopId=301,fieldPage=0,field=1,icon="",itemId=1030013,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7400103,openTime=0,limit=16,money=1011,price=4,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301009"]=setmetatable({id=301009,shopId=301,fieldPage=0,field=1,icon="",itemId=1030012,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7400102,openTime=0,limit=32,money=1011,price=2,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301010"]=setmetatable({id=301010,shopId=301,fieldPage=0,field=1,icon="",itemId=1030011,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=7400101,openTime=0,limit=36,money=1011,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301011"]=setmetatable({id=301011,shopId=301,fieldPage=0,field=1,icon="",itemId=1070002,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=60,money=1011,price=6,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301012"]=setmetatable({id=301012,shopId=301,fieldPage=0,field=1,icon="",itemId=1070001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=360,money=1011,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301013"]=setmetatable({id=301013,shopId=301,fieldPage=0,field=1,icon="",itemId=1051021,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=620,openTime=0,limit=30,money=1011,price=5,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301014"]=setmetatable({id=301014,shopId=301,fieldPage=0,field=1,icon="",itemId=10,itemCount=4000,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=1011,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["301015"]=setmetatable({id=301015,shopId=301,fieldPage=0,field=1,icon="",itemId=10,itemCount=40000,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=50,money=1011,price=5,discountNum=0,discount=0,playerBuy=0,buyTop=6754},mt),
    ["600001"]=setmetatable({id=600001,shopId=600,fieldPage=0,field=1,icon="",itemId=3021001,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=120,money=26,price=3,discountNum=0,discount=0,playerBuy=0,buyTop=4001},mt),
    ["600002"]=setmetatable({id=600002,shopId=600,fieldPage=0,field=2,icon="",itemId=1051026,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=26,price=20,discountNum=0,discount=0,playerBuy=0,buyTop=4001},mt),
    ["600003"]=setmetatable({id=600003,shopId=600,fieldPage=0,field=3,icon="",itemId=1051027,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=26,price=10,discountNum=0,discount=0,playerBuy=0,buyTop=4001},mt),
    ["600004"]=setmetatable({id=600004,shopId=600,fieldPage=0,field=4,icon="",itemId=1051021,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=26,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=4001},mt),
    ["600005"]=setmetatable({id=600005,shopId=600,fieldPage=0,field=5,icon="",itemId=1051022,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=26,price=5,discountNum=0,discount=0,playerBuy=0,buyTop=4001},mt),
    ["600006"]=setmetatable({id=600006,shopId=600,fieldPage=0,field=6,icon="",itemId=1051023,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=26,price=5,discountNum=0,discount=0,playerBuy=0,buyTop=4001},mt),
    ["600007"]=setmetatable({id=600007,shopId=600,fieldPage=0,field=7,icon="",itemId=1051024,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=26,price=5,discountNum=0,discount=0,playerBuy=0,buyTop=4001},mt),
    ["600008"]=setmetatable({id=600008,shopId=600,fieldPage=0,field=8,icon="",itemId=1051025,itemCount=1,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=26,price=5,discountNum=0,discount=0,playerBuy=0,buyTop=4001},mt),
    ["600009"]=setmetatable({id=600009,shopId=600,fieldPage=0,field=9,icon="",itemId=10,itemCount=1000,itemWeight=10,refreshType=0,showConditionId=0,conditionId=0,openTime=0,limit=-1,money=26,price=1,discountNum=0,discount=0,playerBuy=0,buyTop=4001,title="",titleStroke=0,titleColor="",iosWhite=1},mt),
}
--生成获取数据的方法
---@return ShopGood
function GetShopGoodData(id)
    return ShopGood_Xls[tostring(id)]
end
--自动生成注释
---@class ShopGood : table 
---@field id number
---@field shopId number
---@field fieldPage number
---@field field number
---@field icon string
---@field itemId number
---@field itemCount number
---@field itemWeight number
---@field refreshType number
---@field showConditionId number
---@field conditionId number
---@field openTime number
---@field limit number
---@field money number
---@field price number
---@field discountNum number
---@field discount number
---@field playerBuy number
---@field buyTop number
---@field title string
---@field titleStroke number
---@field titleColor string
---@field iosWhite number
