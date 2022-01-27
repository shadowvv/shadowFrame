local protoStr = { }
protoStr.str = "package msg;\
\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
//协议定义\
enum CmdEnum\
{\
	KickPlayer				=9000;//踢出玩家  （未使用）（不压测）\
	ExitGame				=9994;//玩家退出游戏 （未使用）（不压测）\
	ReConnectGetInfo		=9995;//玩家重新连接获取信息 （未使用）（不压测）\
	Activate				=9996;//设备第一次启动客户端时记录一条 （未使用）（不压测）\
	ClientLog				=9997;//客户端日志消息	 （未使用）（不压测）\
	Error					=9998;//错误消息 （未使用）（不压测）\
	HeartBeat				=9999;//心跳 会刷新服务器时间戳\
	\
// ========================玩家操作部分协议=========================\
\
	RegisterUser            =100;  // 注册、登录账号[dev环境下充当SDK的功能] （不压测）\
	GetPrologue     		    =10003;// 玩家获取序章（未使用已和客户端确认 21.06.24）\
	SetPrologue     		    =10004;// 玩家设置序章（未使用已和客户端确认 21.06.24）\
	PlayerLogin 			      =10000;// 玩家登录\
	PlayerRegist			      =10001;// 玩家注册\
	PlayerLoginGetInfo		  =10002;// 玩家获取信息\
	GetPlayerInfo			      =10010;// 获取玩家基础信息（未使用）（不压测）\
	PlayerChangeExpAndLvl   =10011;// 玩家的等级经验发生改变（推送）\
	GetPlayerStrength		    =10069;// 获取玩家当前体力\
	GetPlayerSkillPoint		  =10070;// 获取玩家当前技能点（未使用不压测）\
	GetSignReward			      =10051;// 领取月签到奖励（未使用已确认 21.06.24）\
	GetOtherPlayerData		  =10052;// 通过id或名字获取其他玩家简单信息  （未使用）（不压测）\
	GetShowPlayerData		    =10053;// 通过id获取玩家显示对象\
	ChangeAutograph  		    =10054;// 更换签名\
	ChangeHeadId     		    =10056;// 更换头像\
	ChangeSecretary    		  =10057;// 更换秘书\
	GetSign7DayReward       =10058;// 七日签到（未使用已确认 21.06.24）\
	ChangeStrength   		    =10071;// 改变体力推送 （推送）\
	ChangeItem       		    =10072;// 物品改变后的推送协议暂只用于GM （推送）\
	ChangeFunctionRedDot    =10074;// 通过类型修改功能红点 （此协议废弃）\
	ChangeBirthday    		  =10075;// 更换玩家生日\
	ChangeAnnounceRedDot    =10076;// 更改公告红点状态（未使用 此协议废弃）\
	ChangePlayerName   		  =10077;// 更换指挥官名字\
	ChangeShowLeaderInfo	  =10078;// 更换导师详情中展示斯露德信息\
	ChangeShowBgImg			    =10079;// 更换导师详情背景板\
	ChangeSex   			      =10080;// 更换性别(目前仅注册后的新手步骤使用)\
\
// ========================玩家操作部分协议=========================\
\
	Recharge_Otaku			=10037;//OTAKU客户端充值验证 （不压测）\
	StartRecharge			=10040;//开始充值 （不压测）\
	ChangeStep              =10073;//新手引导步骤 （不压测）\
 	AppleRecharge			=10099;//苹果支付 （不压测）\
 	ClientGameOut			=10108;//玩家切出游戏 （未使用）（不压测）\
 	ClientGameIn			=10109;//玩家切回游戏（未使用）（不压测）\
	PlayerStartFighting		=10221;//玩家开始攻打（未使用）（不压测）\
	PlayerFinishFighting	=10222;//玩家结束攻打（未使用）（不压测）\
\
// ========================武将协议=========================\
    UpgradeLeader			=1001;//武将升级 （未使用 此协议废弃）\
	UpgradeLeaderStar		=1002;//提升角色适性品质\
	UpgradeLeaderStarLevel	=1025;//提升角色适性等级\
	CompositionLeader		=1003;//武将合成（未使用）（不压测）\
	LeaderAttrChanged		=1004;//武将信息发生变化 服务器推送 （推送）\
	GetFormationPush		=1005;//获得新阵法的推送消息 （推送）\
	GetPositionPush 		=1006;//获得新阵法站位的推送消息 （推送）\
	OpenFuctionSetPush 		=1007;//获得模块开启的推送消息 （推送）\
	UpgradeLeaderTalentSkill=1008;//升级武将被动技能	\
	LeaderSkillChanged		=1009;//武将技能开启信息发生变化 服务器推送 （推送）\
	SwearHero           	=1010;//武将抽卡\
	SelectSwearChange		=1030;//选择抽卡概率 up的池子\
	ExchangeFragment        =1011;//兑换武将碎片 （未使用）（不压测）\
	ChangePressurePoint     =1012;//小队压力点改变推送 （推送）\
	UpgradeLeaderBreach     =1013;//提升武将突破等级 （未使用）（不压测）\
	ExchangeWeaponEquip     =1014;//记忆碎片（式仗碎片合成式仗装备） （未使用）（不压测）\
	UpgrageWeaponBreach     =1015;//提升武装突破等级\
	UpgrageWeapon           =1016;//武装升级\
	SwitchWeapon            =1017;//切换武装\
	DecomposeWeapon         =1018;//分解武装\
	ChangeWeaponLock        =1033;//修改武装物品锁状态\
	// WearAceEquip            =1019;//记忆唤醒（王牌=精英化=镶嵌装备  穿戴记忆碎片）（客户端未完成功能）（不压测）\
	// UpgrageAce              =1020;//记忆链接（王牌=精英化=升级  晋升记忆碎片） （客户端未完成功能）（不压测）\
	SetOpenFuctionTips      =1021;//模块开启更改显示tip状态（未使用）（不压测）\
	WeaponChanged           =1022;//式仗信息发生变化 （推送）\
	UpgradeLeaderArchives   =1023;//提升武将履历等级\
	SetArchivesRead         =1024;//修改履历读取状态 （（此协议废弃））\
	SwitchClothing          =1026;//切换服装\
	NewClothing             =1027;//角色新服装推送\
	// NewStateClothing        =1027;//服装更改new试穿状态\
	UpgradeLeaderActiveSkill=1028;//升级武将主动技能\
	ChangeLeaderArchives    =1029;//修改档案语音或故事id（应和客户端协调取消）\
	SwitchWeaponSkin        =1031;//切换式仗服装\
	NewWeaponSkin           =1032;//式仗获得新的涂装推送（推送）\
	ConditionSetPush 		=1034;//获得小功能模块开启的推送消息（推送）\
	UpgradeWeaponRefineLevel=1035;//律叶精炼等级提升\
// ========================武将协议=========================\
\
// ========================pve副本协议=========================\
	AttackPVE               =2001;//攻打关卡结束 （未使用）（不压测）\
	UpRedDot                =2002;//章节红点 （未使用）（不压测）\
	GetChaperReward			=2003;//领取章节奖励（未使用）（不压测）\
	InitPVEMap	    		=2004;//pve创建地图并进入地图（未使用）（不压测）\
	PVEMoveFormation  		=2005;//pve地图上的移动队伍（未使用）（不压测）\
	ExitPVEMap      		=2006;//退出pve地图(删除地图)（未使用）（不压测）\
	PVEMeetMonsterEscape	=2007;//pve地图遇敌逃跑（未使用）（不压测）\
	ChangePVEMapInfo       	=2008;//pve地图信息发生改变 （推送）（未使用）（不压测）\
	EventHandlePVE        	=2009;//处理副本地图中的事件（推送）（未使用）（不压测）\
\
	\
	ChangePower     	    =2014;//更改势力信息 （推送） （未使用）（不压测）\
	StartAttackPVE          =2015;//开始pve挑战前协议 （未使用）（不压测）\
	PVEDefFormation         =2016;//设置pve默认显示小队信息 （未使用）（不压测）\
	AdoptPlotPVE            =2017;//通过剧情关卡（未使用）（不压测）\
	ChangePVEMap        	=2018;//pve信息发生改变(全场结束) （推送） （未使用）（不压测）\
	GetMapLeaderS        	=2019;//通过地图id获取参战武将 （未使用）（不压测）\
	// SaveOrExitBattle       	=2020;//地图结束 保存/丢弃 扫荡信息 （未使用）（不压测）\
	StartSweeping       	=2021;//开始扫荡 （未使用）（不压测）\
	ExecuteWalking       	=2022;//执行走步骤 （未使用）（不压测）\
	TakeOverSweep       	=2023;//玩家扫荡中接手扫荡（未使用）（不压测）\
	OnceReward          	=2024;//pve地图首次获得奖励 （推送）（未使用）（不压测）\
	addPVEOverLeaderEXP    	=2025;//战斗结束后给与武将经验 （推送）（未使用）（不压测）\
	GetFirstAdoptReward		=2026;//获取地图首次通关奖励（未使用）（不压测）\
	GetPercentAdoptReward	=2027;//获取地图百分百通关奖励（未使用）（不压测）\
	AddEventChapter         =2028;//增加事件章节 （未使用）（不压测）\
	AddPlotDialogue         =2029;//解锁关卡特效 （未使用）（不压测）\
	KillDevice              =2030;//摧毁未使用的装置（未使用）（不压测）\
	UseReplaceDevice        =2031;//使用装置/替换buff （未使用）（不压测）\
	GetAliyunOSSKey         =2032;//获取阿里云临时钥匙 （未使用）（不压测）\
	SendDialogueReward      =2033;//发放剧情对话奖励  （未使用）（不压测）\
	GetDialogueReward       =2034;//获取已经发放的剧情对话奖励 （未使用）（不压测）\
	SavePVEPlot             =2035;//记录地图内对话 （未使用）（不压测）\
	StartPVEActivity        =2036;//开始战斗活动前 （未使用）（不压测）\
	OverPVEActivity         =2037;//结束战斗活动后 （未使用）（不压测）\
	ChangePVEActivity       =2038;//活动战斗对象发生改变 （未使用）（不压测）\
	// SaveOrExitPVE       	=2039;//地图结束,保存本场扫荡信息，不包括扫荡文件和名字，删除记录在本场的场次信息（删除pvemapInfo）\
	UpLoadMopUp         	=2040;//上传扫荡文件完成/失败后(上传有时效性)  （未使用）（不压测）\
	StartMainLevel      	=2041;//开始MainLevel战斗前\
	OverMainLevel       	=2042;//结束MainLevel战斗后\
	OverVerification       	=2043;//上传战斗验证信息完成 （未使用）（不压测）\
	AddMainLevelPlot       	=2044;//mainLevel剧情对话 （未使用）（不压测）(和客户端协议删除)\
	GetMainStarReward      	=2045;//领取mainLevel星星数奖励\
	AdoptPlotMainLevel     	=2046;//mainLevel通过剧情关卡\
\
	CreateRadarChart    	=2060;//雷达图=创建塔对象 并创建当前层的雷达图 （不压测）（cbt1不上此功能）\
	RadarMoveFormation    	=2061;//雷达图上的队伍移动 （不压测）（cbt1不上此功能）\
	StartAttackRadar    	=2062;//开始攻打雷达图上的战斗坐标点 （不压测）（cbt1不上此功能）\
	OverAttackRadar     	=2063;//结束攻打雷达图上的战斗坐标点 （不压测）（cbt1不上此功能）\
	RadarEvent          	=2064;//处理雷达图中的事件 （不压测）（cbt1不上此功能）\
	NextFloorRadar         	=2065;//雷达图 爬塔跳转到下一层 （不压测）（cbt1不上此功能）\
	ExitRadarChart         	=2066;//退出爬塔（退出真个雷达图塔）（不压测）（cbt1不上此功能）\
	RadarUseDevice         	=2069;//雷达图使用装置 （不压测）（cbt1不上此功能）\
	RadarChoiceBuffId      	=2070;//雷达图每层选择一次buff （不压测）（cbt1不上此功能）\
	FloorRewardRadar      	=2071;//雷达图 进入下一层前领取本次奖励 （不压测）（cbt1不上此功能）\
	\
// ========================pve副本协议=========================\
\
// ========================阵型协议=========================\
	LeaderFormationChanged	=10016;//武将布阵信息改变\
	AutomatedFormation	    =10017;//武将自动上阵\
	SetFormationTeamType    =10018;//设置功能模块编队记录\
// ========================阵型协议=========================\
	\
// ========================商城协议=========================\
	ShopDataChange_Push	    =3001;//商城变化推送 （推送） \
	ShopRefresh				=3002;//商城刷新\
	BuyShopItem				=3003;//购买商城物品\
	GetRechargeTask			=3004;//领取充值任务商城 （不压测）\
	buyRechargeBanShu		=3005;//版署测试充值接口 （不压测）\
	UseGoods        		=3006;//使用物品道具\
	BuyStrength     		=3007;//购买体力  （未使用）（不压测）\
	BuyExchangeShopItem     =3008;//购买兑换商城物品 (此协议配置表已删除)\
	BuyExchangeItem         =3009;//购买兑换物品\
	SellGoods        		=3010;//出售物品道具\
	ChangeMoneyPush     =3011;//货币推送消息\
// ========================商城协议=========================\
\
// ========================邮件协议=========================\
    NewMail					=4001;//新邮件(推送)\
    ReadSysMail				=4002;//邮件已读\
	GetMailRes				=4003;//领取邮件，领取附件\
	DelMail 				=4004;//删除邮件\
// ========================邮件协议=========================\
\
// ========================聊天协议=========================\
SocketLogin          	  =5001;//登录聊天服\
ChatMessage               =5002;//聊天消息\
SystemMessagePush		  =5003;//系统消息 （推送）\
NoticeMessagePush		  =5004;//通知消息（推送）\
ChangeWorldChannel		  =5005;//更换频道\
ChatMessagePush			  =5006;//聊天消息推送 （推送）\
NotLogin			      =5007;//未登录【主要是用于socket返回连接错误】\
ChangeChatBlacklist       =5008;//更改黑名单列表\
SocketHeartBeat			  =5009;//长连接心跳包\
GetWorldChannel			  =5010;//获取频道信息\
GetLastMessage			  =5011;//获取频道最后滞留信息 （未使用）（不压测）\
ProhibitChat			  =5012;//禁止聊天 禁言 类似错误号 （未使用）（不压测）\
ServerFunctionPash        =5013;//服务功能开关集合(推送)\
ClientAnnouncePush        =5014;//公告更新(推送)\
ChatReport		          =5015;//举报聊天违规\
ServerActivityTimeMoudle  =5016;//推送统一开关时间 （未使用）（不压测）\
APILBMessagePush		  =5017;//推送 API聊天服务 开关状态\
\
// ========================聊天协议=========================\
\
// =======================任务=============================\
FirstThought			=2067;//初心者任务\
FirstThoughtTaskProgress=2068;//初心者任务进度推送协议号（未使用）（不压测）\
\
\
TaskProgress			=6002;//任务数据变化（推送）\
GetActivePointReward	=6006;//新版领取活跃奖励协议号\
SubmitTask				=6007;//提交任务： 点击领奖或者通知后端此任务已完成\
OnlineTaskData			=6008;//在线跨天任务数据推送\
SetTaskProgress			=6009;//特殊任务类型 设置进度协议号，比如秘书互动任务\
\
// 暂时保留\
CommitTask			 	=6001;//完成任务 （未使用）（不压测）\
GetDayTaskPoint 	    =6003;//领取日常活跃点奖励 （未使用）（不压测）\
// GetAchievementsTask	    =6004;//领取成就点奖励\
TaskStateChange		 	=6005;//任务数据变化（推送）（未使用）（不压测）\
TaskConditionClientPush	=6010;//客户端附加推送任务消息 （客户端向服务器推送）\
\
// =======================任务=============================\
//========================图鉴=============================\
GetHandbookReward 		=6100;//领取图鉴奖励\
HandbookUnlockWordId	=6101;//推送新增的名词图鉴数据  （未使用）（不压测）\
HandbookunlockRemainId  =6102;//推送新增的雷达图遗物图鉴数据 （未使用）（不压测）\
HandBookMonsterKillPush =6103;//推送累计击杀的怪物数据\
//========================图鉴=============================\
\
//========================镜像=============================\
UpgrageRevelation 		=7000;//镜像升级\
UpgrageRevelationBreach =7001;//提升镜像突破等级\
SwitchRevelation		=7002;//切换镜像,包含装备和拆卸\
RevelationLock			=7003;//镜像上锁解锁\
RevelationChangedPush	=7004;//镜像推送\
DecomposeRevelation		=7005;//分解镜像\
//========================镜像=============================\
TestSend                   =10;//测试协议 （未使用）（不压测）\
\
//========================战斗服务协议=============================\
BattleErrorMessage				=11000;//战斗服错误提示\
BattleHearBeat					=11001;//战斗服心跳\
BattleHearBeat_S2C				=11002;//战斗服心跳\
BattleLogin						=11003;//首次登录战斗服务器\
BattleLogin_S2C					=11004;//首次登录战斗服务器\
BattleScenePreEnter				=11005;//请求进入场景\
BattleScenePreEnter_S2C			=11006;//请求进入场景\
BattleSceneEnter				=11007;//进入场景\
BattleSceneEnter_S2C			=11008;//进入场景\
BattleSceneReconnect			=11009;//重连进入场景\
BattleSceneReconnect_S2C		=11010;//重连进入场景\
RaidPlayerLoadFinish_Push		=11011;// 副本玩家加载完成\
RaidAllPlayerLoadFinish_Push	=11013;// 副本所有玩家加载完成\
BattleRaidRunStart_Push			=11014;// 战斗服副本开始进行\
NotifyBattleOverResult_Push		=11015;// 战斗服通知战斗结束\
BattleOver						=11016;// 推送战斗结算数据;\
BattleOver_Push					=11017;// 推送战斗结算数据;\
BattleSettle					=11018;// 客户端请求游戏服战斗结算\
BattleLeave						=11019;// 离开战斗服\
BattleSoloTest					=11020;// 单人战斗测试协议\
TestBattleOver					=11021;// 测试战斗结束（机器人自测用）\
KcpLogin								=11022;// KCP登录协议\
KcpLogin_S2C								=11023;// KCP登录协议\
//========================战斗服务协议=============================\
\
//========================战斗Lua服务协议=============================\
// 约定12000-13000位lua解析协议\
//===================================================================\
TestBattleDemo						=12000;// 测试战斗协议\
TestBattleDemo_S2C				=12001;// 测试战斗协议\
BattleLuaEvent_Push				=12002;// 战斗lua事件通知\
PlayerMoveInput 					=12003;//移动协议\
BattleOutputData					=12004;//战斗同步数据\
PlayerChangeLeader				=12005;// 玩家切换角色\
//========================战斗Lua服务协议=============================\
\
//========================战斗Lua服务协议=============================\
// 约定13001-14000位战斗logic与view通讯协议\
//===================================================================\
CreatePlayerCharacter2View			=13000;// logic 通知 view 创建玩家角色\
//========================战斗Lua服务协议=============================\
\
}\
\
message NoneCmdMsg\
{\
	optional int64 none=1;\
}\
\
"
return protoStr