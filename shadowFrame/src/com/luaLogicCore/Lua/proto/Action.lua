local protoStr = { }
protoStr.str = "package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
enum ActionEnum\
{\
\
	//暂定每个模块分配100个操作枚举值 101-200为关卡\
\
	Main_Attack 							=101;//攻打main关卡\
	Main_ChaperReward						=102;//领取main章节奖励\
	Main_PlotReward 						=103;//领取main剧情奖励\
	Activity_Attack                         =131;//攻打活动关卡\
\
	Radar_Create                            =201;//雷达图=创建塔对象\
	Radar_Next                              =202;//雷达图=爬塔跳转到下一层\
	Radar_Attack                            =203;//雷达图=战斗\
	Radar_Event                             =204;//雷达图=执行事件\
	Radar_Layer                             =205;//雷达图=关卡层奖励\
	Radar_Exit                              =206;//退出雷达图\
	Radar_Reward                            =207;//进入下一层前领取本次奖励\
\
	Pve     								=1;//副本\
	defaultCreate                           =2;//创角默认增加\
	AutoAddSkillPoint						=3;//技能点自动增长\
	PressurePoint   						=4;//压力点自动增长\
	AutoAddStrength							=26;//体力自动增长\
	PlayerUpLevel							=27;//玩家升级\
	Recharge 								=32;//充值\
	SysSendMail								=35;//系统邮件\
	defaultAdd								=45;//系统初始化\
	Attack_PVE 								=2001;//攻打关卡\
	ChaperReward							=2003;//领取章节奖励\
	compositionLeader						=39;//武将合成\
	upgradeLeaderStar						=41;//武将升星\
	upgradeLeaderTalentSkill				=42;//升级武将技能\
	upgradeArchivesLevel    				=43;//升级武将履历等级\
	buyShop         						=46;//购买商城物品\
	refreshShopItem							=47;//商城刷新\
	ShopDataChange_S2C_Push             	=48;//商城变化推送\
	Cost_S2C_Push               			=49;//扣除信息变化推送\
	ShopRefresh             				=50;//商城刷新\
	BuyShopItem             				=51;//购买商城物品\
	RechargeTaskShop						=52;//充值任务商店兑换物品\
	UseGoods                                =53;//使用物品道具\
	SellGoods                               =72;//出售物品\
	TimeOutGoods                            =73;//道具过期\
	ComminTask                              =1001;//提交任务\
	DayTaskPoint                            =1002;//领取活跃点奖励\
	AchievementsTask                        =1003;//领取成就点奖励\
	MonthSign                               =54;//月签到\
	DaySign                                 =55;//七日签到\
	SwearHero                               =56;//抽卡\
	BuyStrength 							=57;//购买体力\
	ExchangeFragment						=58;//兑换武将碎片\
	OverflowLeaderEXP						=59;//增加武将经验移除部分转换成物品\
	GM              						=60;//系统gm操作\
	PVESweep                                =61;//副本扫荡\
	UpgradeLeaderBreach						=62;//提升武将突破等级\
	ExchangeWeaponEquip						=63;//式仗碎片合成式仗装备\
	WearEquip                               =64;//镶嵌式仗装备\
	UpgrageWeapon                           =65;//式仗升级\
	PVEDialogue                             =66;//剧情对话\
	\
	FirstThoughtTask						=68;//初心者任务\
	RevelationUpgrade						=69;//镜像升级\
	RevelationBreach						=70;//镜像突破\
	Handbook								=71;//图鉴\
	UpgradeWeaponRefine                		=81;//提升精炼等级\
	UpgradeWeaponBreach						=82;//提升律叶突破等级\
\
\
}\
\
//角色技能类型\
enum PlayerPropEnum\
{\
	ActionMax   							=1001;//基础行动力上限\
	ActionNum                               =1002;//基础行动力追回\
	FriendPointMax		     				=1003;//基础友情点上限\
	PVELeaderEXP		     				=1004;//基础斯露德经验提高\
	PVECoin     		     				=1005;//基础米特拉100002经验提高\
}\
\
//语言邮件枚举\
enum MailLanguageEnum\
{\
    cn   							=1;//简中语言\
	tw   							=2;//繁中语言\
	en   							=3;//英语语言\
	jp   							=4;//日语语言\
}\
\
//聊天类型枚举\
enum ChatTypeEnum\
{\
    World  							=1;//世界全频道\
	WorldLine						=2;//世界单频道\
	League 							=3;//联盟频道\
	Friend 							=4;//好友频道\
	Private							=5;//私聊频道\
}\
\
\
//功能红点\
enum RedDot\
{\
    Weapon  							=1;//式仗\
	Leader						        =2;//角色\
	Notice						        =3;//公告\
    HandBook						    =4;//图鉴\
    Chapter								=5;//章节\
    Radar 								=6;//雷达图\
	ChapterStart                        =7;//章节开始\
	MainLevel                           =1001;//管钱的沈德符\
	InBattleGuide						=8;//战斗内新手引导\
}\
\
//服务器模块开关\
enum ServerFunction\
{\
    ShowServer  					=1;//显示服务器列表\
	ShowIpWhite				        =2;//白名单是否显示服务器\
	InvitationCode				    =3;//客户端是否显示邀请码输入框，服务器是否开启邀请码验证逻辑\
	BattleAccelerate    		    =4;//关闭战斗加速验证\
	APILBStatus						=7;//API 聊天服分配功能开关\
}\
\
// 聊天举报内容选项\
enum ChatReportIdEnum\
{\
    UsePlugIn            = 1; //使用外挂\
    Abuse                = 2; //辱骂言论\
    advertisement        = 3; //广告\
    SpreadBadInfo        = 4; //传播反动，色情等违法犯罪内容\
}\
\
// 掉落类型\
enum DropEnum\
{\
	Dropgood			=1;//掉落子\
	Dropgroup			=2;//掉落组\
	Dropset				=3;//掉落集合\
}\
\
// 道具类型枚举\
enum ItemTypeEnum\
{\
	Equip				=16;//镜像类型\
}\
"
return protoStr