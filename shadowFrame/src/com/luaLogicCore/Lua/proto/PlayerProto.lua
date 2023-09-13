local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
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
\
\
//注册账号（仅仅用于版署审核之前登录注册协议依旧有效）\
message RegisterUser_S2C\
{\
	optional int32 result=1;//返回结果 0:玩家存在 1:玩家不存在 2:服务器维护中 3:黑名单中\
	optional string userName=2;//账号\
	required int32 type=3;//1=注册2=登录\
}\
\
\
//玩家登录（此消息和注册消息二选一）\
message PlayerLogin\
{\
	required DeviceInfo deviceInfo=1;//设备信息\
	required string		version=2;//游戏版本号\
	optional string appSign=3;//sdk签名\
	optional string sdkAppId=4;//目前仅bili和bili_uo有效\
	optional string pcLoginDeviceOS = 5;// 进pc需要传此参数 设备类型枚举,和兴涛定的全部小写 ,android,ios\
}\
\
\
//玩家登录返回\
message PlayerLogin_S2C\
{\
	optional int32 beginnerModeProgress=1;//新手模式进度 0：未完成，1：只完成了改名字，2：完成了改名字 + 改性别\
	optional int32 uid=2;//玩家ID\
	optional string serverDataVersion=3;//服务端字典数据版本号\
	optional string token=4;//新的Token（后面用于发送消息）\
	required int64 regDate=5;//玩家注册时间\
	required int64 now=6;//当前时间\
	required LevelExp levelExp=7;//等级数据\
}\
\
\
//登录获取玩家全部信息\
message PlayerLoginGetInfo\
{\
	optional DeviceInfo deviceInfo=1;//设备信息\
	optional string	version=2;//游戏版本号\
	optional string appSign=3;//签名\
	optional string dllMd5=4;//类库MD5签名\
}\
\
\
//登录获取玩家全部信息\
message PlayerLoginGetInfo_S2C\
{\
    repeated LeaderInfo leaderInfo=4;//武将信息\
	repeated LeaderSquadInfo leaderSquadInfo=5;//武将阵法信息\
	optional int32 nowTime=7;//当前时间戳秒\
	repeated Shop shops=9;//商城信息\
	repeated Part parts=12;//材料信息\
	repeated Mail mails=13;//邮件集合信息\
	repeated ServerInfo serverInfos=14;//服务器结构信息（目前存放的是聊天服连接信息）\
	repeated ProtoHashInt2Int leaderFragments = 17;//武将兑换次数列表key=武将id,value=兑换总次数\
	optional int32 sign7DayId=18;//领取七日签到配置表主键id\
	optional int32 lastSign7DayRewardTime=19;//最后领取七日签到奖励时间（时间戳秒）\
	optional SwearInfo swearInfo=20;//抽卡信息\
	// repeated ProtoHashInt2Int rechargeIdNumbers = 23;//充值次数信息key=充值配置表id,value=充值次数\
	repeated int32 formationPostions=26;//已激活的阵法位置集合 1=主将位置2=主将左边3=主将右边\
	repeated int32 defPVESquads=27;//副本默认显示的阵型id集合\
	repeated int32 eventChapterSet=28;//事件章节集合\
	repeated string plotDataSet=29;//已完成剧情对话集合\
	optional PVESundryInfo pveSundryInfo = 31;//pve副本玩家杂项对象\
	repeated WeaponInfo weaponInfos=32;//式仗集合信息\
	repeated FunctionRedDotInfo functionRedDotInfos = 33;//功能红点集合信息\
	// repeated int32 FirstRechargeRewardId=34;//已经发放过首冲奖励的rechargeId集合\
	optional RechargeShopInfo rechargeShopInfo=35;//人民币商城限购次数信息\
	optional ExchangeShopInfo exchangeShopInfo=36;//兑换商城限购次数信息\
	repeated BasicsRechargeInfo basicsRechargeInfos = 37;//充值基础信息列表\
	optional PVEActivityInfo pveActivityInfo=39;//活动战斗对象\
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
	// optional string guideData = 57;//已完成的新手引导信息\
	optional GuideInfo guideInfo = 57;//已完成的新手引导信息\
	optional PlayerLiveInfo playerLiveInfo=58;//新的角色对象信息（21.8.11新增）\
	repeated int32 conditionSet=59;	//已开启的小模块功能ID集合（21.8.11新增）\
	// optional int32 monthGetSignRewardTimes=60;// 本月签到次数，-1表示从未签到过\
	// optional int32 lastGetSignRewardTime=61;// 月签到 最后领取签到奖励时间, 精确到秒\
	repeated MoneyPart moneyPart=62;// 货币\
	repeated MainLevelInfo mainLevelInfo=63;// 主线关卡(2022.3.17版本)\
	repeated TrainLevelInfo trainLevelInfo=64;// 训练关卡(2022.3.17版本)\
	required int32 refreshTimes = 65;// 跨天刷新时间点（单位：小时）\
	repeated BattleshipTask battleshipTasks=66;//战舰任务集合信息\
	optional bool battleshipPrologue=70;//战舰任务序章标识是否强制进入战舰\
	repeated TowerTeam towerTeam=67; //当前进行到的塔数据\
	repeated TowerWeekTeam towerWeekTeam=1; //周期的爬塔数据\
	optional HelpCenterData helpCenterData=68;// 帮助中心数据\
	repeated FavorInfo favorInfo=69;//斯露德、NPC的好感度列表\
	optional int32 taskTraceId=71;//战舰正在追踪的任务id\
	repeated WeaponLevelInfo weaponLevelInfo=72;// 武器关卡(当前正在打的)\
	repeated LimitedTimeLevelInfo limitedTimeLevelInfo=73;// 当前刷新的限时关卡\
	optional TeamInfo raidTeamInfo=74;//多人组队队伍信息\
	repeated MultiPveBossLevelInfo multiPveBossLevelInfo=75;// 已打完的多人pve boss战关卡集合\
	optional int32 nextWeekRefreshTime = 76;// 下载跨周刷新时间点(秒级时间戳)\
	optional bool isTowerFirst = 77;// 爬塔是否需要进行周期轮换\
	optional int32 shipStrength = 78;// 战舰体力\
	optional int32 maxShipStrength = 79;// 战舰体力上限\
	optional SignInfo monthSign = 80;// 月签到\
	repeated int32 talentTreeSet=81;	//已经激活已领取的天赋树集合\
	repeated BattleshipDispatchInfo dispatchInfoS =82;//战舰派遣任务的结构集合\
	optional int32 dispatchCount = 83;// 战舰派遣派出上限\
	required int32 smallBattleIsOver  = 89; //是否有结算奖励红点\
	required int32 abyssFrontIsOver  = 90; //大战场是否有结算奖励红点\
	repeated HeadFrameInfo headFrameInfos = 84;// 玩家 头像框 信息\
	repeated PeriodCardInfo periodCardInfo = 85;// 周期卡（月卡、周卡等）信息\
	optional FirstRechargeInfo firstRechargeInfo = 86;// 首冲结构\
	optional CompetitionSeasonInfo seasonInfo = 87;// 赛季信息\
	optional int32 httpStabilityId=88;//http稳定id(默认值为1)\
	optional GuildWarApplyInviteRedDot redDot = 91;//团本邀请、申请新数据\
	optional GuildWarRewardRedDot rewardRedDot = 92;//团本有新的可领取奖励 smallBattleIsOver 用了89\
	optional GuildWarTeamLikesRedDot teamLikesRedDot = 93;//团本可进行点赞\
	optional int32 guildId = 94;//队伍ID\
	optional int32 nextMonthRefreshTime = 95;// 下载跨月刷新时间点(秒级时间戳)\
	optional int32 nextDayRefreshTime = 96;// 垮天刷新时间点(秒级时间戳)\
\
}\
\
//分批请求数据\
message GetRevelationInfoListPage{\
	required int32 page =1;\
}\
//分批请求数据\
message GetRevelationInfoListPage_S2C{\
	repeated RevelationInfo revelationInfo=1;\
	required int32 page =2;\
	required bool next = 3;\
}\
\
//分批请求数据\
message GetWeaponListPage{\
	required int32 page =1;\
}\
//分批请求数据\
message GetWeaponListPage_S2C{\
	repeated WeaponInfo weaponInfos=1;\
	required int32 page =2;\
	required bool next = 3;\
}\
\
//获取跨天（凌晨四点）后修改的玩家数据需要客户端主动获取\
message GetNextDayUpdateData\
{\
	optional bool currentlyOnBattleShip=1;//当前在战舰内(用于标识是否推送战舰npc时间变化信息)\
}\
\
//返回 获取跨天（凌晨四点）后修改的玩家数据需要客户端主动获取\
message GetNextDayUpdateData_S2C\
{\
	repeated Shop shops=1;//商城信息\
	repeated MainLevelInfo mainLevelInfo=4;// 主线关卡(2022.3.17版本)\
	repeated TrainLevelInfo trainLevelInfo=5;// 训练关卡(2022.3.17版本)\
	optional TaskProgressInfo taskProgress=6;//任务进度信息\
	optional TaskInfo taskInfo=7;//任务完成信息\
	optional PVESundryInfo pveSundryInfo = 8;//pve副本玩家杂项对象\
	repeated BattleshipNPC battleshipNPCList=9;//npc结构集合\
	optional BattleshipInfo battleshipInfo=10;//战舰结构信息\
	repeated MultiPveBossLevelInfo multiPveBossLevelInfo=11;//多人pve boss战结构信息\
	optional int32 nextWeekRefreshTime = 12;// 下载跨周刷新时间点(秒级时间戳)\
	optional SignInfo monthSign = 13;// 月签到\
	repeated ProtoHashInt2Int exchangeMap = 14;//体力兑换结构集合\
	repeated PayShopItem payItems = 15;// 付费商店道具\
	optional CompetitionSeasonInfo seasonInfo = 16;// 赛季玩家信息\
	optional int32 nextMonthRefreshTime = 17;// 下载跨月刷新时间点(秒级时间戳)\
	optional bool canLikes = 18;//跨天推送点赞红点\
	optional int32 nextDayRefreshTime = 19;// 垮天刷新时间点(秒级时间戳)\
}\
\
//获取玩家当前体力并计算体力 (这次没有cs)\
message GetPlayerStrength_S2C\
{\
	optional int32 curStrength=1;//当前体力\
	optional int32 lastCalcStrengthTime=2;//最后计算体力时间\
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
//检查玩家名字合法性\
message CheckPlayerName\
{\
	required string uName=1;//玩家昵称\
}\
//返回检查玩家名字合法性\
message CheckPlayerName_S2C\
{\
	required int32 errorCode=1;//错误号0=成功，其他=错误\
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
	required int32 bgImgId = 1;//背景板Id\
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
\
// 修改声音设置\
message ChangeVoiceSetting\
{\
	required int32 soundSwitch=1;//声音开关  1：开启， 0：关闭\
	required int32 bgMusicValue=2;//背景音乐值大小\
	required int32 soundEffectValue=3;//音效值大小\
	required int32 voiceValue=4;//语音值大小\
}\
\
// 修改声音设置返回\
message ChangeVoiceSetting_S2C\
{\
	required int32 soundSwitch=1;//声音开关  1：开启， 0：关闭\
	required int32 bgMusicValue=2;//背景音乐值大小\
	required int32 soundEffectValue=3;//音效值大小\
	required int32 voiceValue=4;//语音值大小\
}\
\
//更新新手战斗引导步骤\
message ChangeBattleGuideStep\
{\
	required int32 guideNum=1;//步骤\
}\
\
\
//更新新手战斗引导步骤\
message ChangeBattleGuideStep_S2C\
{\
	required int32 guideNum=1;//步骤\
}\
\
//Otaku充值\
message Recharge_Otaku{\
	required string orderId=1;//游戏订单号\
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
	repeated int32 sendFirstRechargeRewardIds=9;//已经发放的充值双倍奖励\
	optional int64 lastGetVIPMonthCardRewardTime=32;//最后领取VIP月卡奖励时间\
	optional float totalRecharge = 93; // 累计充值\
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
//新手引导步骤\
message ChangeStep\
{\
	required string guideData=1;//新手引导信息流\
	optional int32 completedId=2;//当前完成的引导ID\
}\
\
//新手引导步骤返回\
message ChangeStep_S2C\
{\
	optional string guideData = 1;//新手引导信息流\
}\
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
//通过类型修改功能红点\
message ChangeFunctionRedDot\
{\
	repeated ChangeFunctionRedDotInfo reaDotInfo = 1;//需要修改的红点信息集合\
}\
\
//通过类型修改功能红点\
message ChangeFunctionRedDot_S2C\
{\
	// required int32 errCode=1;//错误号\
	// optional FunctionRedDotInfo functionRedDotInfo = 2;//功能红点信息\
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
	// optional PlayerChatInfo playerChatInfo = 2;//玩家信息， 2021.8.5：过度阶段使用，客户端接入后删除\
\
	repeated PlayerChatInfo playerChatInfoS = 3;// 玩家信息集合 新增于2021.8.5\
	optional int32 type=4;//帮客户端记录 可扩展 1：黑名单\
}\
\
//月签到\
message GetSignReward\
{\
\
}\
\
//月签到s2c\
message GetSignReward_S2C\
{\
	optional int32 monthGetSignRewardTimes=2;//本月领取签到次数\
	optional int32 lastGetSignRewardTime=3;//最后领取签到奖励时间\
	optional Rewards rewards =4;//奖励\
}\
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
message ClientDataOverLogin\
{\
}\
//玩家修改序章返回\
message ClientDataOverLogin_S2C\
{\
}\
\
//更换 头像框\
message ChangeHeadFrame\
{\
	required int32 headFrameId=1;//玩家 头像框 id\
}\
\
//更换 头像框 返回\
message ChangeHeadFrame_S2C\
{\
	optional int32 headFrameId = 1;//玩家 头像框 id\
}\
\
//获取模块开启条件信息(此消息需要在获取完所有模块后触发)\
message GetOpenFunctionData\
{\
\
}\
\
//获取模块开启条件信息 返回\
message GetOpenFunctionData_S2C\
{\
	repeated int32 conditionSet=1;	//已开启的小模块功能ID集合\
}\
\
//服务器通知客户端显示确认弹窗 请求\
message ShowConfirm\
{\
}\
\
//服务器通知客户端显示确认弹窗 返回\
message ShowConfirm_S2C\
{\
	optional string title=1; //标题\
	required string content=2; //内容\
	repeated ProtoHashString2Int buttonFunction=3; //按钮名 + 功能\
}\
\
"
return protoStr