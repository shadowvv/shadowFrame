local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
//登录获取玩家全部信息\
message PlayerLoginGetInfo\
{\
	optional DeviceInfo deviceInfo=1;//设备信息\
	optional string	version=2;//游戏版本号\
	optional string appSign=7;//签名\
	optional string dllMd5=8;//类库MD5签名\
}\
\
\
//登录获取玩家全部信息\
message PlayerLoginGetInfo_S2C\
{\
	optional PlayerInfo playerInfo=1;//玩家信息（废弃），替换成PlayerLiveInfo结构\
	// repeated PVEMap pves=2;//已打完的副本信息集合\
	repeated RadarPagodaInfo RadarPagodaInfos=2;//已打完的雷达图信息集合\
	repeated int32 redDotChapterIdS=3;//章节红点集合（废弃）， 放到FunctionRedDotInfo结构中\
    repeated LeaderInfo leaderInfo=4;//武将信息\
	repeated LeaderSquadInfo leaderSquadInfo=5;//武将阵法信息\
	optional PlayerRes playerRes=6;//玩家资源表（废弃）， 数据合并到 Part 中，不再单独发送\
	optional int32 nowTime=7;//当前时间戳秒\
	optional int32 lastStrengthTime=8;// 最后计算体力时间（废弃）， 此属性转移到PlayerLiveInfo结构中\
	repeated Shop shops=9;//商城信息\
	// repeated Power power=11;//势力信息\
	repeated Part parts=12;//材料信息\
	repeated Mail mails=13;//邮件集合信息\
	repeated ServerInfo serverInfos=14;//服务器结构信息（目前存放的是聊天服连接信息）\
	// repeated int32 chatBlacklist =15;//聊天黑名单列表\
	repeated PlayerChatInfo chatBlacklistInfo =15;//聊天黑名单列表（废弃）， 替换成SocketLogin_S2C 中的chatBlacklistInfo\
	// optional int32 lastSkillPointTime=16;// 最后计算技能点时间（废弃）\
	repeated ProtoHashInt2Int leaderFragments = 17;//武将兑换次数列表key=武将id,value=兑换总次数\
	optional int32 sign7DayId=18;//领取七日签到配置表主键id\
	optional int32 lastSign7DayRewardTime=19;//最后领取七日签到奖励时间（时间戳秒）\
	optional SwearInfo swearInfo=20;//抽卡信息\
	repeated ProtoHashInt2Int rechargeIdNumbers = 23;//充值次数信息key=充值配置表id,value=充值次数\
	optional RadarChartInfo radarChartInfo = 24;//进行中的雷达图结构\
	repeated ProtoHashInt2Int openFuctionSet=25;//已开启的功能模块ID集合key=已开启模块idvalue=播放状态1=未播放2=已播放 （废弃）\
	repeated int32 formationPostions=26;//已激活的阵法位置集合 1=主将位置2=主将左边3=主将右边\
	repeated int32 defPVESquads=27;//副本默认显示的阵型id集合\
	repeated int32 eventChapterSet=28;//事件章节集合\
	repeated string plotDataSet=29;//已完成剧情对话集合\
	// optional PVEMapVideotape pveMapVideotape = 30;//扫荡步骤数据仅在pvemapinfo为上当状态时发送其他状态为空\
	optional PVESundryInfo pveSundryInfo = 31;//pve副本玩家杂项对象\
	repeated WeaponInfo weaponInfos=32;//式仗集合信息\
	repeated FunctionRedDotInfo functionRedDotInfos = 33;//功能红点集合信息\
	repeated int32 FirstRechargeRewardId=34;//已经发放过首冲奖励的rechargeId集合\
	optional RechargeShopInfo rechargeShopInfo=35;//人民币商城限购次数信息\
	optional ExchangeShopInfo exchangeShopInfo=36;//兑换商城限购次数信息\
	repeated BasicsRechargeInfo basicsRechargeInfos = 37;//充值基础信息列表\
	optional int32 totalLoginTime=38;//今天累计的登录时间(秒)(废弃)\
	optional PVEActivityInfo pveActivityInfo=39;//活动战斗对象\
	repeated LeaderInfo notLeaderInfos=40;//未获得的武将信息列表(用于客户端展示)\
	optional ClothingInfo clothingInfo=41;//服装信息\
	repeated ProtoHashInt2Int announceIDS = 42;//公告id集合 key=公告id,value=公告时间戳秒\
	optional int32 isFirstThoughtAllOver = 43; // 是否完成全部的 初心者任务， 0， 未完成， 1， 已完成\
	optional FirstThoughtInfo firstThoughtInfo = 44;// 玩家的初心者任务完成信息\
	optional WeaponSkinInfo weaponSkinInfo = 45;//式仗/服装/皮肤/涂装\
	repeated MainPVEInfo mainPVEInfos=46;//已经打完的新版MainPVE关卡信息集合\
	optional TaskProgressInfo taskProgress=47;//任务进度信息\
	optional TaskInfo taskInfo=48;//任务完成信息\
	optional AllRevelationInfo allRevelationInfo=49;//镜像信息\
	optional CommonSundry sundry=50;// 镜像、武装 拥有过的数据ID\
	repeated ProtoHashInt2Int exchangeMap = 51;//货币/体力兑换结构集合\
	optional HandbookInfo handbookInfo = 52;//图鉴数据\
	repeated ServerActivityTimeMoudle activityTime=53;//统一开关时间\
	optional int32 lastLoginTime = 54;//最后登录时间\
	repeated ProtoHashInt2String cdnInfo=55;// cdn 地址信息， key =1 :邮件图片CDN地址\
	optional PlayerShowInfoSundry playerShowInfoSundry = 56;// 导师详情展示数据\
	optional int32 guideId = 57;//已完成的新手引导id（21.8.11新增）\
	optional PlayerLiveInfo playerLiveInfo=58;//新的角色对象信息（21.8.11新增）\
	repeated int32 conditionSet=59;	//已开启的小模块功能ID集合（21.8.11新增）\
	optional int32 monthGetSignRewardTimes=60;// 本月签到次数，-1表示从未签到过\
	optional int32 lastGetSignRewardTime=61;// 月签到 最后领取签到奖励时间, 精确到秒\
	repeated MoneyPart moneyPart=62;// 货币\
}\
\
\
// ==========通讯协议===========\
\
\
//============================通用接口===========================\
//消除冷却时间\
message ClearCoolingTime\
{\
	optional int32 actionID=1;//操作类型 对应 ActionEnum中类型\
	optional int32 objId=2;//操作对象ID\
	optional int32 costMoney = 3; // 消耗金钱(客户端计算)\
}\
\
//消除冷却时间\
message ClearCoolingTime_s2c\
{\
	optional int32 errorCode=1;//操作类型 对应 ActionEnum中类型\
}\
\
//=============================玩家==============================\
\
//玩家登录返回\
message KickPlayer_S2C\
{\
	optional int32 errCode=1;//1：有玩家登录顶掉 2：服务器主动踢出\
}\
\
//设备第一次启动客户端时记录一条\
message Activate\
{\
	required string platformId=1;//平台ID(渠道ID)\
	required string deviceId=2;//设备唯一标识\
	required string channelId=3;//渠道号\
}\
//================================版署注册登录==开始=================================\
\
\
\
//玩家获取序章\
message GetPrologue\
{\
	required string platformId=1;//平台ID\
	required string platformUserId=2;//平台玩家ID\
	// required string channelId=3;//渠道号\
}\
//玩家获取序章返回\
message GetPrologue_S2C\
{\
	// required int32 errorCode=1;//错误码\
	optional string data=2;//服务器记录的序章数据 长度不要大于300\
	// optional int64 now=3;//当前时间\
}\
\
//玩家修改序章\
message SetPrologue\
{\
	required string platformId=1;//平台ID\
	required string platformUserId=2;//平台玩家ID\
	required string data=3;//服务器记录的序章数据 长度不要大于300\
	// required string channelId=4;//渠道号\
}\
//玩家修改序章返回\
message SetPrologue_S2C\
{\
	required int32 errorCode=1;//错误码 0=成功，1=数据太长，2=未知保存失败\
}\
\
\
\
\
//注册账号（仅仅用于版署审核之前登录注册协议依旧有效）\
message RegisterUser\
{\
	\
	required string userName=1;//账号\
	required string pwd=2;//密码\
	required int32 type=3;//1=注册2=登录\
}\
//注册账号（仅仅用于版署审核之前登录注册协议依旧有效）\
message RegisterUser_S2C\
{\
	optional int32 result=1;//返回结果 0:玩家存在 1:玩家不存在 2:服务器维护中 3:黑名单中 \
	optional string userName=2;//账号\
	required int32 type=3;//1=注册2=登录\
}\
\
//================================版署注册登录==结束=================================\
\
//玩家登录（此消息和注册消息二选一）\
message PlayerLogin\
{\
	\
	required string platformId=1;//平台ID\
	required string platformUserId=2;//平台玩家ID\
	required DeviceInfo deviceInfo=3;//设备信息\
	required string		version=4;//游戏版本号\
	required string channelId=5;//渠道号\
	// required int32 serverId=6;//登录的服务器ID（此属性已废弃）\
	optional string appSign=7;//sdk签名\
	// optional string dllMd5=8;//类库MD5签名\
}\
\
//玩家登录返回\
message PlayerLogin_S2C\
{\
	// optional int32 result=1;//返回结果 0:玩家存在 1:玩家不存在 2:服务器维护中 3:黑名单中 \
	optional int32 uid=2;//玩家ID \
	optional string serverDataVersion=3;//服务端字典数据版本号\
	optional string token=4;//新的Token（后面用于发送消息）\
	required int64 now=5;//当前时间\
	required LevelExp levelExp=6;//等级数据\
	optional int32 zoneId=7;//游戏自定义的区服id， 默认1001\
}\
\
//玩家登录返回\
message OtherDayAdvice_S2C\
{\
	optional int32 errCode=1;\
}\
\
\
\
//玩家注册（此消息和登录消息二选一）\
message PlayerRegist\
{	\
	required string platformId=1;//平台ID\
	required string platformUserId=2;//平台玩家ID\
	required string uName=3;//玩家昵称\
	required DeviceInfo deviceInfo=4;//设备信息	\
	required int32 sex=5;//性别 0：女1：男\
	required int32 headId=6;//头像ID\
	required string channelId=7;//渠道号\
	required int32 serverId=8;//登录的服务器ID\
	required int32 languageId=9;//玩家语言ID\
	required int32 month=10;//玩家生日 月份\
	required int32 day=11;//玩家生日 天\
	optional string appSign=12;//sdk签名\
}\
\
//玩家注册返回\
message PlayerRegist_S2C\
{\
	// optional int32 errorCode=1;//返回结果 0:玩家存在 1:玩家不存在 \
	optional int32 uid=2;//如果成功返回的玩家ID\
	optional string token=3;//新的Token（后面用于发送消息）\
}\
\
//获取玩家基础信息\
message GetPlayerInfo_S2C\
{\
	optional PlayerInfo playerInfo=1;//返回的玩家信息\
}\
\
//获得经验\
message PlayerChangeExpAndLvl_Push\
{\
	required int32 curLevel=1;//当前等级\
	required int32 curExp=2;//当前经验\
	// required int32 maxExp=3;//升级所需经验\
}\
\
message ChangeMoney_S2C_Push\
{\
	required MoneyPart money =1;//当前货币\
}\
\
//开始充值\
message StartRecharge{\
	required int32 rechargeId=1;//充值ID\
}\
//开始充值\
message StartRecharge_S2C{\
\
	optional int32 rechargeId=1;//充值ID\
	optional int32 cpOrderId=2;//游戏订单ID\
	// required int32 errCode=3;//错误号\
}\
\
//Otaku充值\
message Recharge_Otaku{\
	required string orderId=1;//游戏订单号	\
	required string platOrderId=2;//平台订单号\
}\
\
//OTAKU充值返回\
message Recharge_Otaku_S2C\
{\
	// required int32 errorCode=1;//错误码\
	required int32 rechargeId=2;//充值ID\
	required int32 money=3;//玩家当前金币\
	required int32 curVIPLevel=4;//当前VIP等级\
	required int32 curVIPExp=5;//当前VIP经验\
\
	optional int32 monthVipCardId=7;//月活卡ID 没有为0\
	optional int64 monthVipCardEndTime=8;//月卡开始时间\
	repeated int32 sendFirstRechargeRewardIds=9;//已经发放的充值双倍奖励	\
	optional int64 lastGetVIPMonthCardRewardTime=32;//最后领取VIP月卡奖励时间\
	optional float totalRecharge = 93; // 累计充值\
}\
\
//更新新手引导步骤\
message ChangeGuide\
{\
	required int32 guideNum=1;//步骤\
}\
\
\
//更新新手引导步骤\
message ChangeGuide_S2C\
{\
	required int32 guideNum=1;//步骤\
}\
\
//新邮件推送\
message NewMail_Push\
{\
	required Mail mail=1;//邮件内容\
	repeated int64 removeMails=2;//到期删除的邮件ID集合\
}\
\
//读取邮件\
message ReadSysMail\
{\
	required int64 mailId=1;//邮件ID 0=全部读取\
}\
\
//返回读取邮件\
message ReadSysMail_S2C\
{\
	// required int32 errCode=1;//返回结果\
	repeated int64 mailId=2;//邮件ID\
}\
\
//读取邮件，领取邮件附件\
message GetMailRes\
{\
	required int64 mailId=1;//邮件ID 0=全部领取\
}\
\
//读取邮件，领取邮件附件\
message GetMailRes_S2C\
{\
	// required int32 errCode=1;//返回结果\
	optional Rewards reward=2;//奖励\
	repeated int64 mailId=3;//邮件ID\
}\
\
//删除邮件\
message DelMail\
{\
	required int64 mailId=1;//邮件ID 0=全部领取（全部=没有附件已阅读和有附件已领取）\
}\
\
//删除邮件\
message DelMail_S2C\
{\
	// required int32 errCode=1;//返回结果\
	repeated int64 mailId=2;//邮件ID\
}\
\
\
//玩家完成触发引导步骤\
message TriggerGuideChange\
{\
	required int32 stepNum=1;//步骤\
}\
\
\
//新手引导步骤\
message ChangeStep\
{\
	required int32 step=1;//步骤\
}\
\
//新手引导步骤返回\
message ChangeStep_S2C\
{\
	// required int32 errCode = 1;//返回结果\
	optional int32 playerGuide = 2;//步骤\
}\
\
\
\
//一次性消息\
message Notice_S2C\
{\
	required int32 id=1;//消息id\
	repeated string param=2;//消息参数\
\
}\
\
\
//苹果支付验证\
message AppleRecharge\
{\
	required int32 rechargeId=1;//充值ID\
	required int32 cpOrderId=2;//游戏订单号\
	required string validStr=3;//验证字符串\
	optional string deviceId=4;//设备号\
}\
//苹果支付验证\
message AppleRecharge_S2C\
{\
	required int32 errorCode=1;//错误号\
}\
\
//玩家切出游戏\
message ClientGameOut_S2C\
{\
	required int32 errorCode=1;//错误号\
}\
//玩家切回游戏\
message ClientGameIn_S2C\
{\
	// required int32 errorCode=1;//错误号\
	repeated bytes cachedMessages=2;//缓存的未发送的消息 \
}\
\
\
//玩家改名\
message ChangePlayerName\
{\
	required string uName=1;//玩家昵称\
}\
//玩家改名\
message ChangePlayerName_S2C\
{\
	// required int32 errorCode=1;//错误号\
	optional string uName=2;//玩家昵称\
	optional int64 lastUNameTime=3;//最后修改指挥官名字的时间\
	optional string nameCode=4;//玩家昵称后缀，不带 “#” 字符\
}\
\
// fackbook点击返回\
message FacebookButtonClick_S2C {\
	required bool facebookRewardCanGet = 1; // 错误号\
}\
\
//获取玩家当前体力并计算体力\
message GetPlayerStrength_S2C\
{\
	optional int32 curStrength=1;//当前体力\
	optional int32 lastCalcStrengthTime=2;//最后计算体力时间\
}\
\
//体力改变推送\
message ChangeStrength_S2C_Push\
{\
	required int32 curStrength=1;//当前体力\
}\
\
//==================商城协议========================\
\
//购买商城物品\
message BuyShopItem\
{\
	required int32 shopTypeId=1;//商店id\
	required int32 shopItemId=2;//具体商店表主键ID（例如CommonShop.id）\
	required int32 num=3;//数量\
}\
\
//购买商城物品\
message BuyShopItem_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards rewards=2;//物品集合\
	optional Shop shops=3;//商城\
}\
\
//商城信息变化推送\
message ShopDataChange_S2C_Push\
{\
	required Shop shops=1;//商城\
}\
//商城刷新\
message ShopRefresh\
{\
	required int32 shopType=1;//商城类型\
}\
\
//商城刷新\
message ShopRefresh_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Shop shops=2;//商城\
	optional Rewards rewards=3;//扣除的物品\
}\
\
//领取充值任务商城\
message GetRechargeTask\
{\
	required int32 Id=1;//配置表主键id\
}\
\
//领取充值任务商城\
message GetRechargeTask_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards rewards=2;//获得的物品\
	repeated int32 rechargeTaskList=3;//已领取的充值任务id\
}\
\
//版署测试充值接口\
message buyRechargeBanShu\
{\
	required int32 id=1;//recharge配置表主键id\
}\
\
//版署测试充值接口 充值成功协议\
message buyRechargeBanShu_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards rewards=2;//获得的物品\
	optional bool isFirst=3;//是否是首冲\
	optional int32 id=4;//充值项id\
	repeated ProtoHashInt2Int rechargeIdNumbers = 5;//充值次数信息key=充值配置表id,value=充值次数\
	optional RechargeShopInfo rechargeShopInfo = 6;//人民币商城限购信息\
	repeated BasicsRechargeInfo basicsRechargeInfos = 7;//充值基础信息列表\
}\
\
//使用物品 类型为道具\
message UseGoods\
{\
	repeated UsePart useParts = 1;//使用道具\
}\
\
//购买商城物品\
message UseGoods_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards rewards=2;//物品集合\
}\
\
//出售物品给系统 类型为道具\
message SellGoods\
{\
	repeated UsePart itemInfo = 1;//出售的物品集合key=id,value=数量\
}\
\
//出售物品给系统\
message SellGoods_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards rewards=2;//物品集合\
}\
\
//更改聊天黑名单\
message ChangeChatBlacklist\
{\
	required int32 type=1;//操作类型 1=增加黑名单，2=移除黑名单\
	// required int32 uid=2;//玩家id\
	repeated int32 uids=2;//玩家id\
}\
\
//更改聊天黑名单\
message ChangeChatBlacklist_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional int32 type=2;//操作类型 1=增加黑名单，2=移除黑名单\
	repeated int32 chatBlacklist = 3;//黑名单列表， 修改过后的Id 集合\
}\
\
// //购买体力\
// message BuyStrength\
// {\
// 	required int32 strengthNum=1;//体力点数\
// }\
\
// //购买体力\
// message BuyStrength_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards rewards=2;//物品集合\
// 	optional int32 playerStrength=3;//玩家总体力\
// 	optional int32 dayBuyStrength=4;//今天购买体力的次数\
// }\
\
\
//购买兑换商城物品\
message BuyExchangeShopItem\
{\
	required int32 shopItemId=1;//exchangeshop表主键ID\
	required int32 num=2;//数量\
}\
\
//购买兑换商城物品\
message BuyExchangeShopItem_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards rewards=2;//物品集合\
	optional ExchangeShopInfo exchangeshops=3;//碎片商城\
}\
\
\
//购买兑换\
message BuyExchangeItem\
{\
	required int32 id=1;//CurrencyShop表主键ID\
	required int32 num=2;//数量\
}\
\
//购买兑换\
message BuyExchangeItem_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards rewards=2;//物品集合\
	repeated ProtoHashInt2Int exchangeMap = 3;//货币/体力兑换结构，每天清空集合数据\
}\
\
//==================商城协议结束========================\
\
//获取玩家当前技能点并计算技能点\
message GetPlayerSkillPoint_S2C\
{\
	required int32 skillPoint=1;//当前技能点\
	required int32 lastCalcskillPointTime=2;//最后计算技能点时间\
}\
\
//月签到\
message GetSignReward_S2C\
{\
	// required int32 errCode=1;//返回结果\
	optional int32 monthGetSignRewardTimes=2;//本月领取签到次数\
    optional int32 lastGetSignRewardTime=3;//最后领取签到奖励时间\
	optional Rewards rewards =4;//奖励\
}\
\
//七日签到\
message GetSign7DayReward_S2C\
{\
	// required int32 errCode=1;//返回结果\
	optional int32 sign7DayId=2;// 领取七日签到次数\
    optional int32 lastSign7DayRewardTime=3;//最后领取七日签到奖励时间\
	optional Rewards rewards =4;//奖励\
}\
\
//通过id或名字获取其他玩家简单信息\
message GetOtherPlayerData\
{\
	optional int32 uid=1;//玩家id   2021.8.5：过度阶段使用，客户端接入后删除\
	optional string uName=2;//玩家名字  2021.8.5：过度阶段使用，客户端接入后删除\
\
	repeated int32 idS=3;//玩家Id集合 新增于2021.8.5\
	optional int32 type=4;//帮客户端记录 可扩展 1：黑名单\
\
}\
\
//通过id或名字获取其他玩家简单信息\
message GetOtherPlayerData_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional PlayerChatInfo playerChatInfo = 2;//玩家信息， 2021.8.5：过度阶段使用，客户端接入后删除\
\
	repeated PlayerChatInfo playerChatInfoS = 3;// 玩家信息集合 新增于2021.8.5 \
	optional int32 type=4;//帮客户端记录 可扩展 1：黑名单\
}\
\
//通过id获取玩家显示对象\
message GetShowPlayerData\
{\
	required int32 uid=1;//玩家id\
}\
\
//通过id或名字获取其他玩家简单信息\
message GetShowPlayerData_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional ShowGameInfo showGameInfo = 2;//玩家显示信息\
}\
\
//更换签名\
message ChangeAutograph\
{\
	required string autograph=1;//新签名 （限制字数default_value.11003 初始化=“1” 玩家设置为“”=2）\
}\
\
//更换签名返回\
message ChangeAutograph_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional string autograph = 2;//新签名 （限制15个字）\
}\
\
//更换头像\
message ChangeHeadId\
{\
	required int32 headId=1;//玩家头像id\
}\
\
//更换头像返回\
message ChangeHeadId_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional int32 headId = 2;//玩家头像id\
}\
\
//更换秘书\
message ChangeSecretary\
{\
	required int32 secretary=1;//玩家秘书id\
}\
\
//更换秘书返回\
message ChangeSecretary_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional int32 secretary = 2;//玩家秘书id\
}\
\
\
//测试协议\
message TestSend\
{\
	required int32 test1=1;//测试参数1\
	// required string test2=2;//测试参数2\
}\
//测试协议\
message TestSend_S2C\
{\
	optional int32 test1=1;//测试参数1\
	optional Rewards rewards =2;//测试奖励\
	// optional string test2=2;//测试参数2\
}\
\
\
//物品改变的推送\
message ChangeItem_Push\
{\
	required Rewards reward=1;//奖励\
}\
\
//通过类型修改功能红点\
message ChangeFunctionRedDot\
{\
	required int32 type=1;//红点类型 Action.RedDot\
	required int32 addOrDel=2;//1=增加value值2=删除id\
	required int32 id=3;//红点操作的id\
	required string value=4;//红点操作的id\
}\
\
//通过类型修改功能红点\
message ChangeFunctionRedDot_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional FunctionRedDotInfo functionRedDotInfo = 2;//功能红点信息\
}\
\
//更换玩家生日\
message ChangeBirthday\
{\
	required int32 month=1;//月\
	required int32 day=2;//天\
}\
\
//更换玩家生日返回\
message ChangeBirthday_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional int32 birthdayTime = 2;//生日时间戳\
	optional int64 lastBirthdayTime = 3;//修改生日的最后时间戳\
}\
\
//更改公告红点状态（此协议废弃，转存到红点组去ChangeFunctionRedDot）\
message ChangeAnnounceRedDot\
{\
	required int32 announceId=1;//公告id -1=游戏图标红点 -2=系统公告 -3=活动公告\
}\
\
//更改公告红点状态返回\
message ChangeAnnounceRedDot_S2C\
{\
	// required int32 errCode=1;//错误号\
	repeated ProtoHashInt2Int announceIDS = 2;//公告id集合 key=公告id,value=公告时间戳秒\
}\
\
//更换斯露德展示 协议\
message ChangeShowLeaderInfo\
{\
	required int32 type = 1;// 1: 添加  2：卸下\
	required int32 leaderId = 2;//斯露德Id\
\
}\
\
//更换斯露德展示 协议\
message ChangeShowLeaderInfo_S2C\
{\
	// required int32 errorCode = 1;\
	optional LeaderShowInfo leaderShowInfo = 2;//新斯露德展示信息\
}\
\
// 导师详情背景板修改 协议\
message ChangeShowBgImg\
{\
	required int32 bgImgId = 1;//背景板Id\
}\
\
// 导师详情背景板修改 协议\
message ChangeShowBgImg_S2C\
{\
	required int32 errorCode = 1;\
}\
\
//更换玩家性别\
message ChangeSex\
{\
	required int32 sex=1;//性别 0：女1：男\
}\
\
//更换玩家性别返回\
message ChangeSex_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional int32 sex=2;//性别 0：女1：男\
}\
"
return protoStr