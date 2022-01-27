local protoStr = { }
protoStr.str = "package msg;\
\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
//错误定义（文字对应WindowTips.xlsx表）\
enum ErrorEnum\
{\
	Frequentoperation		=998;//操作过于频繁\
	GameVersionError		=999;//不兼容的客户端版本号\
	TokenError				=1000;//Token错误\
	SysError				=1001;//服务器错误\
	KickPlayer				=1002;//相同账号登录\
	TokenTimeOut			=1003;//Token超时（目前超时时间为24小时）\
	PreIng					=1004;//请完成上一次操作\
	ServerStateError		=1005;//服务器状态错误\
	Locked					=1006;//锁定中\
	ServerVersionChange		=1007;//服务器版本号变化 请重新登录\
	TokenFeignDeath			=1008;//Token假死超时（切入后台超过两个小时）\
	HeartBeatNotUser   		=1009;//还没有账号不需要发送心跳协议\
	NotFunctionRedDot   	=1010;//模块功能红点类型不存在\
	ModuleNotOpen			=1011;//功能模块未开启\
	NotRedisLock	    	=1012;//没有拿到redis锁权限\
	NotLoginCodeErr	    	=1013;//玩家未登录 协议号不对\
	SDKLoginSignErr         =1014;//sdk登录验证秘钥超时\
	ServerKickPlayerErr     =1015;//服务器踢人\
	ServerGMError		    =1016;//服务器GM接口异常\
\
	Success 				      =0    ; // 操作成功\
	PlayerNotExit 			  =1    ; // 玩家不存在（登录的时候，客户端接到此错误码，去进行注册）\
	UserNameNull          =101;  // 用户名为空\
	UserNameLengthMax     =102;  // 用户名长度过长\
	PasswordNull          =103;  // 密码为空\
	PasswordLengthMax     =104;  // 密码长度过长\
	PlatformKeyNull       =105;  // platformKey为空\
	UserOrPwdERR			    =10000; // 账号或密码错误（目前仅用于版署注册中）\
	PlayerExists 			    =10001; // 玩家已存在\
	ServerError 			    =10002; // 服务器错误\
	RedisError	          =10073; // Redis缓存错误\
	PlayerNameExists 		  =10003; // 玩家昵称已经存在\
	NoPlayer 				      =10004; // 没有这个玩家（其他意外情况和服务器错误一样）\
	SeeNoPlayer 			    =10006; // 查找的玩家不存在（目前主要用在通过接口查看玩家信息）\
	SeePlayerListNull 	  =10007; // 查找的玩家列表为空（目前主要用在通过接口查看玩家信息）\
	SeePlayerListMax 	    =10008; // 查找的玩家列表过长（目前主要用在通过接口查看玩家信息）\
	NoCoin 					      =10005; // 铜钱不足\
	PlayerLevelLow			  =10009; // 玩家等级不足\
	BirthdayError  			  =10010; // 玩家生日错误\
	ActivationCodeUse		  =10011; // 激活码已经被使用，不能重复使用\
	ActivationCodeNot		  =10012; // 激活码不存在\
	BirthdayCDTimeError	  =10013; // 修改玩家生日的CD时间未到\
	PlatformIdNull		    =10068; // 平台ID为空\
	PlatformUIDNull		    =10072; // 平台UID为空\
	PrologueDataNull		  =10077; // 序章数据为空\
	PrologueDataLengthMax	=10078; // 序章数据长度过长\
\
	NoMoney					       =10014; //金币不足\
	Recharged				       =10030; //该充值已经处理\
	RechargNotExit			   =10031; //无效的单号\
	RechargBugMaxNum		   =10032; //物品购买次数达到上限\
	NameHasBlackWord		   =10055; //昵称中含有敏感字符\
	NameIsEmpty     		   =10060; //昵称为空\
	NameSpecial      		   =10061; //昵称含有特殊字符\
	NameSQLSpecial     		 =10062; //昵称含有sql特殊字符\
	AppleVerfyError			   =10083; //苹果充值验证错误\
	AlReadyRecharged		   =10195; //已经充值过该项目\
	UNameCoolingTime 		   =10017; //玩家修改昵称的冷却时间未到\
	UNameNotChange 		     =10018; //玩家昵称未改变\
	HeadImageIdNotExit 		 =10015; //头像id不存在\
	HeadImageIdNoChange 	 =10196; //头像id没变化\
	SecretaryIdNotExit 	   =10197; //秘书id不存在\
\
	MaterialLess			           =10044; //材料不足\
	NoneStrength			           =10019; //体力不足\
	NotItem     			           =10022; //物品不存在\
	NotItemConfig     		       =100210; //物品配置不存在\
	ItemTypeNotuse			         =10040; //物品类型不能被使用\
	TimeItemIsError              =10042; //物品过期\
	ConsumeItemNumError		       =10048; //消耗物品数量不对\
	ConsumeItemListSizeMax		   =10051; //消耗物品集合长度过长\
	ConsumeItemListNull		       =10091; //消耗物品集合为空\
\
	ShopNotExists			=10204;//没有这个商城\
	ShopItemNotExists		=10205;//商城没有这个物品\
	NoneBuyTimes			=10069;//已经没有购买次数\
	NotLeaderBuyFragment	=10070;//没有武将不能兑换碎片\
\
	GetSign7DayReward			  =10041; //今天已经领取7日签到奖励\
	GetSignMonthReward		  =10075; //今天已经领取月签到奖励\
	Sign7DayRewardNotExit	  =10074; //7日签到奖励不存在\
	SignMonthRewardNotExit	=10076; //月签到奖励不存在\
	AutographNull   	      =10052; //签名为空\
	AutographMax        	  =10053; //签名过长\
	UNameMaxError   		    =10059; //昵称过长\
	SexNotUpdate     		    =10063; //性别没有修改\
	AutographSpecial        =10064; //签名含有特殊字符\
	AutographHasBlackWord	  =10065; //签名中含有敏感字符\
	AutographSQLSpecial     =10066; //签名含有sql特殊字符\
	SexCodeError     		    =10067; //性别标识码错误\
\
\
//=======================邮件==================\
    DelMailNotRead   		   =10035; //删除的邮件未读\
    DelMailNotReceive		   =10036; //删除的邮件未领取附件\
    MailTypeError			     =10037; //邮件类型不对(不是附件邮件，没有可能去的物品)\
    MailReceive 	    	   =10038; //邮件附件已领取过了\
    MailNotExitError		   =10039; //邮件不存在\
    BeforeMailTime			   =10049; //未到邮件可读取时间\
    AfterMailTime			     =10071; //已超邮件可读取时间\
    MailAlreadyRead     	 =10050; //已经读取过此邮件\
    MailIdError			       =10034; //邮件id错误\
    MailDeleted			       =10033; //邮件已经被删除了\
//=======================邮件==================\
\
//=======================角色武将==================\
	NotLeader       		     =10016; //玩家没有该武将\
	LeaderExists 			       =10045; //武将已经存在\
	LeaderMaxStarLv 		     =10043; //武将达到最大星级\
	LeaderMaxBreachLv 		   =10046; //武将达到最大突破等级\
	NotLeaderSkill  		     =10054; //角色技能不存在\
	LeaderSkillMaxLe  		   =10056; //角色技能已达到最大等级\
	LeaderMinStarLvNot 		   =10057; //角色等级不满足提升适性条件\
	LeaderSkillLimit  		   =10058; //角色技能限制条件未达到开启条件\
	LeaderArchiveStory  	   =10080; //档案已经查看过此故事\
	LeaderArchiveSound  	   =10081; //档案已经查看过此语音\
	LeaderIdInvalid  	   	   =10082; //武将配置Id非法\
//=======================角色武将==================\
\
\
//=======================任务==================\
	TaskEnded				=10024;//任务已经完成\
	TaskPreNoneEnd			=10025;//前置任务未完成\
	TaskEnough				=10026;//任务条件不足\
	TaskPointNot			=10027;//日常任务活跃点不足\
	TaskAPPointNot			=10028;//任务成就点不足\
	SetSpecialTaskError		=110030;//特殊任务类型设置错误\
	TaskNotOpen				=110031;//任务未开启\
	TaskDataNotExist		=110032;//任务数据不存在\
//=======================任务==================\
\
\
//=======================小队==================\
\
	SquadRepeat             =2006;  // 小队上的角色重复\
	SquadNotFormation       =2007;  // 没有选择的小队\
	RepeatPostion       	  =10047; // 武将位置重复\
	PositionNotActive	      =20001; // 武将位置未激活\
	MainLeaderCanNotDown	  =2008;  // 第一阵法只有一个主武将时不能下阵\
\
//=======================小队==================\
\
\
//=======================聊天==================\
	ChannelLimit                 =8001;//该线达上限\
	Gag					 		 =8002;//被禁言\
	NumLimit					 =8003;//字数限制不符\
	ChannelSame					 =8004;//同样的频道\
	ChannelOld					 =8005;//旧频道不符\
	NotReportContentId			 =8006;//没有举报内容Id\
	NotConnectType				 =8007;//没有此连接类型， 用于分配聊天服务器信息\
	EntryWaitingQueue			 =8008;//当前无空位，进等待队列\
	RejectConnect				 =8009;//当前等待队列已满，拒绝连接，请XX分钟后重连\
	ExistPlayer					 =8010;//已存在玩家连接\
	ServerLimit					 =8011;//该服已达到上限\
	ChatConnectTimeOut			 =8012;//聊天服连接超时 （用于前端做排错提示）\
	SocketPlayerNotExist		 =8013;//聊天连接不存在\
		\
//=======================抽卡==================\
\
	NotSwearType     			   =20002;// 抽卡类型不存在\
	SwearNumMax     			   =20003;// 抽卡次数已达上限\
	SwearActivityTimeError   =20008;// 卡池不在开启时间内\
	SelectSwearError     		 =20004;// 抽卡up选择错误\
	NotSwearInfoError     	 =20005;// 抽卡信息不存在（几率很小）\
	NotSwearRecord				   =20006;// 没有抽卡记录（几率很小）\
	NotCardBoxInstance			 =20007;// 卡池不存在\
	SwearTimesError   			 =20009;// 抽卡次数错误\
\
//=======================抽卡==================\
\
\
//======================pve=======================\
\
	MainPVENot       			       =30001;//pve副本地图不存在\
	ActivityPVENot     			     =30002;//活动副本地图不存在\
	PVEMapTimeOut   		         =30005;//副本超时\
	EventChapterExisting	       =30008;//事件章节id已存在\
	InitNotPVEMap                =30009;//未初始化地图副本\
	ChapterRewardExisting	       =30011;//章节奖励已领取\
	PVEEventNotPostion		       =30013;//地图事件位置不存在\
	PlotPVEAlreadyExist		       =30015;//剧情关卡已通过\
	Accelerate    		           =30017;//使用加速\
	VerificationNot       		   =30019;//战斗日志文件未找到\
	VerificationUpOver     		   =30020;//战斗日志文件已经上传过了\
	MainChapterNull	    		     =30021;//章节配置不存在\
	TrainChapterFightNumError	   =30022;//训练章节战斗次数错误\
	MainLevelNull	    		       =30023;//关卡配置不存在\
	MainPVELocked				         =10021;//关卡未解锁\
	NoneAttackTime  			       =10020;//攻打次数已达上限\
	MainPVEStarNum	    		     =10023;//关卡章节奖励因星星数量不足不能领取\
	NotMainPVEStar	    		     =10029;//关卡章节星级奖励不存在\
\
//======================pve地图=======================\
\
\
//=======================律叶==================\
\
	NoneEquip                        =40001;// 律叶配置不存在\
	WeaponMaxLevel                   =40002;// 式仗改造次数已达上限\
	EquipAlreadyInLeader	           =40003;// 律叶已经装备在角色身上\
	EquipNotFull     	               =40004;// 式仗镶嵌位置没有装满\
	EquipWrongful     	             =40005;// 镶嵌的式仗装备不在可镶嵌列表\
	IdenticalWeapon     	           =40006;// 不能装备同一个式仗\
	NotWeapon     	                 =40007;// 律叶不存在\
	InconsistentTypeWeapon           =40008;// 式仗类型和武将类型不一致\
	DefaultWeaponNotDel              =40009;// 默认式仗不能分解\
	WeaponMaxNum    	               =40010;// 式仗达到上限\
	WeaponNotEqual				           =40011;// 律叶不是同一种\
	WeaponSkillNotExist			         =40012;// 律叶技能不存在\
	WeaponLevelUpperLimit		         =40013;// 律叶技能等级达到上限\
	WeaponBaseLevelUpperLimit	       =40014;// 律叶当前等级达到上限\
	WeaponGrowConfigNotExit	         =40015;// 律叶升至该等级的成长配置不存在\
	ConsumeWeaponListSizeMax	       =40016;// 消耗律叶集合长度过长\
	WeaponBeEquiped	                 =40017;// 律叶被装备了\
	ModifyWeaponLockStateError	     =60014;// 修改的律叶的锁状态值错误\
	WeaponLockStateError	    	     =60015;// 该律叶锁状态错误\
	WeaponLocked	                   =40018;// 律叶被锁定了\
	DecomposeWeaponObtainItemErr     =40019;// 律叶分解得到的结果和客户端计算结果不匹配\
	WeaponOnlyIdInvalid			         =40020;// 律叶Id非法\
	WeaponIdInvalid				           =40021;// 律叶配置id非法\
	WeaponSkinIdInvalid			         =40022;// 律叶皮肤配置Id非法\
	WeaponSkinNotExist			         =40023;// 没有律叶皮肤\
	WeaponSkinNotMatch			         =40024;// 律叶皮肤不匹配\
	ConsumeWeaponIdParamErr		       =40025;// 消耗的律叶Id参数错误\
	ConsumeWeaponIdNotExist		       =40026;// 消耗的律叶不存在\
	DecomposeWeaponNull              =40027;// 分解的律叶为空\
	DecomposeWeaponListMax           =40028;// 分解的律叶列表过长\
\
\
//=======================律叶==================\
		\
\
//=======================初心者任务==================\
    SignInvalid				    =50001;//签到天数非法\
	TaskReceiveInvalid	        =50002;//任务奖励领取非法\
	ReadRedInvalid		 	    =50003;//阅读红点非法\
//=======================初心者任务==================\
\
\
//=======================装备/镜像==================\
	NoRevelation	    		                      = 60001; // 玩家没有该镜像\
	NoConsumeRevelation	    	                  = 60002; // 消耗的镜像不存在\
	UpgradeEquipLevel	    	                    = 60003; // 镜像已到当前等级最高级\
	UpgradeBreachLevel	    	                  = 60004; // 镜像已到当前突破的最高级\
	NoEquipConfigInfo	    	                    = 60005; // 没有镜像配置信息\
	UpgradeBreachError	    	                  = 60006; // 没有达到突破升级条件\
	EquipOnLeader	    		                      = 60007; // 该镜像已经装备在此武将身上\
	EquipLockStateError	    	                  = 60008; // 该镜像锁状态错误\
	EquipMaxLimit		    	                      = 60009; // 镜像数量达到上限\
	RevelationIdError	    		                  = 60010; // 镜像id错误\
	ConsumeRevelationListSizeMax                = 60011; // 消耗镜像集合长度过长\
	ModifyRevelationLockStateError	    	      = 60012; // 修改的镜像的锁状态值错误\
	SwitchRevelationTypeError	    	            = 60013; // 未知的切换镜像的操作类型\
	DefaultRevelationNotDel         =60016;// 默认镜像不能分解\
	RevelationLocked				=60017;// 镜像为上锁状态\
	DecomposeObtainItemErr			=60018;// 镜像分解得到的结果和客户端计算结果不匹配\
//=======================装备/镜像==================\
\
		\
//======================雷达图=======================\
	RadarNot         			=70001;//雷达图地图不存在（配置表不对/或客户端发送id错误）\
	RadarLayerNot       		=70002;//雷达图要进行的层不存在\
	RadarJumpLayerNot    		=70003;//雷达图此层不可跳过\
	RadarTopFloor       		=70004;//雷达图要调过的层没有被打过不能跳过\
	RadarNotFinished 	    	=70005;//存在为结束的雷达图，结束后才能创建新的\
	RadartCreateMaxNum	    	=70006;//雷达图今天的挑战次数已达上限\
	RadarNotCreate 		    	=70007;//雷达图没有创建不可操作（跳到下一层,战斗,操作事件,退出塔,使用装置，选择buff）\
	RadarTimeOut 		    	=70008;//雷达图超时\
	RadarWalkPositionMin        =70009;//雷达图行走位置太小（小于1）\
	RadarIllegalPostion  		=70010;//雷达图行走位置非法\
	RadarEventNotPostion        =70011;//雷达图事件位置不存在\
	RadarEventPostionEnd        =70012;//雷达图事件已经处理过了不能重复处理\
	RadarNotDevice              =70013;//雷达图装置不存在\
	RadarBuffRepeat             =70014;//雷达图本次扫塔已经选择过此类型的buff不可重复选择\
	RadarNotreviveNum           =70015;//雷达图复活次数不够\
//======================雷达图=======================\
\
//======================图鉴=========================\
	HandbookRewardNotExist      =80001;//图鉴奖励已领取\
	HandbookBeanNotExist   	   	=80002;//玩家图鉴数据不存在\
	HandbookCollectNotExist     =80003;//图鉴奖励不存在\
//======================图鉴=========================\
\
//======================API==========================\
	APILBConnectTimeOut			=90001;// API 分配聊天服接口 访问超时（用于前端做排错提示）\
	APILBNoContent				=90002;// API 分配聊天服接口 内容为空（用于前端做排错提示）\
	APILBSwitchClose			=90003;// API 分配聊天服接口 已关闭\
	APILBInputParamError		=90004;// API 分配聊天服接口 入参错误\
	APILBChatConnectTimeOut 	=90005;// API 分配的 聊天服 连接超时 （用于前端做排错提示）\
//======================API==========================\
\
//======================导师详情展示=========================\
\
	InstallLeaderAlreadyInShowList  = 100001; // 添加的斯露德已在展示列表里了\
	UninstallLeaderNotInShowList		= 100002; // 卸下的斯露德并不在展示列表里\
	ShowBgImgEquals			            = 100003; // 当前已展示此背景\
	ShowBgImgNotExist		            = 100004; // 此背景图不存在\
	ShowLeaderOperateTypeError		  = 100005; // 修改导师详情中展示的斯露德的操作类型错误\
\
//======================导师详情展示=========================\
\
//======================引导================================\
\
	GuideStepNotExist		=110001; // 新手引导步骤不存在\
\
//======================引导================================\
\
//======================战斗错误码=========================\
	BattleRaidCountFull		=120001;//战斗服副本创建满\
	BattleDropMsg			=120002;//战斗服丢弃消息\
	BattleStateError		=120003;//战斗服玩家状态错误\
	BattleLoginError		=120004;//战斗服登录失败\
//======================战斗错误码=========================\
\
//======================黑名单错误码=======================\
	AddBlackUidNotExist 	=130001;//添加uid已在黑名单存在\
	RemoveBlackUidNotExist 	=130002;//删除的uid在黑名单中不存在\
//======================黑名单错误码=======================\
\
//======================服装==============================\
	ClothIdInvalid			=140001;//服装配置Id非法\
	ClothTypeNotMatch		=140002;//服装与武将不匹配\
	ClothIdNotExist			=140003;//玩家没有此皮肤Id\
//======================服装==============================\
\
//======================模块开启==========================\
	OpenFuctionDataErr		=150001;//模块开启数据不存在\
//======================模块开启==========================\
\
}\
\
\
message NoneErrorMsg\
{\
	optional int64 none=1;\
}\
\
\
\
"
return protoStr