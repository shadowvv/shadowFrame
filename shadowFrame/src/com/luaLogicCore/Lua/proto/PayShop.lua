local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
// 获取支付商店信息列表\
message GetPayShopData\
{\
	required int64 version = 1;// 版本号\
	required bool update = 2;// 是否更新商店信息\
}\
// 获取支付商店信息列表 返回\
message GetPayShopData_S2C\
{\
	required PayShopData payShopData = 1;// 支付商城数据\
}\
\
// 获取支付商店信息列表--登录专用\
message GetPayShopDataAfterLogin\
{\
}\
\
// 获取支付商店信息列表 返回--登录专用\
message GetPayShopDataAfterLogin_S2C\
{\
	required PayShopData payShopData = 1;// 支付商城数据\
}\
\
// 购买付费道具\
message BuyPayItem\
{\
	required int32 id = 1;// PaymentGoodsInfo.id 检查是否可购买\
	required string deviceOS = 2;// 设备类型枚举,和兴涛定的全部小写 android,ios\
}\
// 购买付费道具 返回\
message BuyPayItem_S2C\
{\
	required CreatePayOrderInfo createPayOrderInfo = 1;//创建的订单信息\
}\
\
// 购买非人民币道具\
message BuyCommonItem\
{\
	required int32 id = 1;// 道具id，即PaymentGoods.id\
}\
\
// 购买非人民币 返回，结构待定\
message BuyCommonItem_S2C\
{\
	optional PayShopItem item = 1;\
}\
\
// 给未发货订单发货（奖励组）\
message GetPayOrderReward\
{\
	required string orderId = 1;// 游戏支付订单号\
}\
// 给未发货订单发货（奖励组） 返回，结构待定\
message GetPayOrderReward_S2C\
{\
	optional PayShopItem item = 1;\
	required string orderId = 2;//支付订单号\
}\
\
\
\
// 购买周期卡后推送消息\
message BuyPeriodCardPush\
{\
	optional PeriodCardInfo periodCardInfo = 1;// 周期卡结构\
}\
\
\
\
\
\
// 获得周期卡奖励（当天和上次周期卡奖励）\
message GetPeriodCardReward\
{\
	repeated int32 ids = 1;// 周期卡id\
}\
\
// 获得周期卡奖励（当天和上次周期卡奖励） 返回\
message GetPeriodCardReward_S2C\
{\
	repeated PeriodCardInfo periodCardInfo = 1;// 周期卡信息\
}\
\
\
//领取首冲奖励\
message GetFirstRechargeReward\
{\
\
}\
\
//领取首冲奖励 返回\
message GetFirstRechargeReward_S2C\
{\
	optional FirstRechargeInfo firstRechargeInfo = 1;//首冲结构\
}\
\
//首冲完成后的推送消息\
message FirstRechargeStatePush\
{\
	optional FirstRechargeInfo firstRechargeInfo = 1;//首冲结构\
}\
\
//达成推送礼包条件后通知客户端弹出礼包UI\
message PackPush\
{\
	required int32 paymentgoodId =1;//礼包Id\
	required int64 timestamp =2;//触发时间戳\
}\
"
return protoStr