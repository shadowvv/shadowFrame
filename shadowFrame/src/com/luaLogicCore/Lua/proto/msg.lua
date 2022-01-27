local protoStr = { }
protoStr.str = "package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
message Test{}\
\
//错误返回\
message ErrorMsg_S2C\
{\
	optional int32 errorCode=1;//错误码\
}\
   \
  //客户端推送消息\
message PushMsg2Client{\
	repeated PushBody pushBodys=1;//\
}\
\
  //附加到发送给服务器的协议后面\
message PushMsg2Server{\
	repeated PushBody pushBodys=1;//\
}\
\
//客户端推送消息体\
message PushBody\
{\
	required int32 header=1;\
	optional bytes bodyBytes=2;\
}\
\
//心跳包返回\
message HeartBeat_S2C\
{\
	optional int32 time=1;//服务器当前时间戳\
	optional int32 totalLoginSecond =2;//今天累计的登录时间(秒)\
}\
//======================结构===================\
\
//玩家信息20.8.11\
message PlayerLiveInfo\
{\
	optional int32 uid=1;//玩家ID\
    optional string uName=2;//玩家昵称\
	optional string nameCode=3;// 昵称后缀编码\
    optional int32 exp=4;//玩家经验\
	optional int32 level=5;//玩家等级\
	optional int32 sex=6;//性别 0：女1：男\
	optional int32 headId=7;//头像ID\
	optional int32 serverId = 8; // 服务器id\
	optional string platformId = 9; // 平台id\
	optional string platformUid = 10; // 平台玩家Id\
	optional int32 languageId = 11;//玩家语言ID\
	required int64 birthday=12;//玩家生日, 只有月和日有效 年是赋值为闰年(2020)\
	required int64 lastBirthdayTime=13;//修改生日的最后时间戳\
	required string autograph=14;//签名\
	required int32 secretary=15;//秘书\
	required int64 regDate=16;//玩家注册时间戳\
	optional int32 strength = 17;//体力\
	optional int32 maxStrength = 18;//体力上限\
	optional int32 lastStrengthTime=19;// 最后计算体力时间\
	repeated int32 openHeadSet=20;					//仅记录客户端没法计算的头像开启集合type=0\
	optional int64 lastUNameTime=21;					// 修改指挥官名字的最后时间戳\
}\
\
//玩家信息(废弃)\
message PlayerInfo\
{\
	optional int32 uid=1;//玩家ID\
    optional  string uName=2;//玩家昵称\
    optional  int32 exp=3;//玩家经验\
	optional  int32 level=4;//玩家等级	\
	repeated int32 ChatperRewardList=7;//领取过的章节奖励\
	optional int32 sex=10;//性别 0：女1：男\
	optional int32 headId=11;//头像ID\
	optional int32 serverId = 49; // 服务器id\
	optional string platformId = 50; // 平台id\
	optional string platformUid = 51; // 平台玩家Id\
	optional int32 languageId=62;//玩家语言ID\
	optional int32 maxStrength = 63;//体力上限\
	optional int32 rechargeExp = 12;//充值经验\
	repeated int32 rechargeTaskIds=13;//充值成就已经领取的集合\
	// optional string autograph = 14;//签名\
	// optional int32 secretary=15;//和头像一样的秘书（暂不知道是什么值）\
	optional int32 playerGuide = 16;//新手引导步骤\
	optional string nameCode = 17;	 // 昵称后缀编码\
	optional PlayerStableInfo playerStableInfo = 18;//玩家不频繁的数据\
}\
\
// 玩家不频繁数据结构（废弃）\
message PlayerStableInfo\
{ \
	required int64 lastUNameTime=1;					// 修改指挥官名字的最后时间戳\
	required int64 birthday=2;					// 玩家生日, 只有月和日有效 年是赋值为闰年(2020)\
	required int64 lastBirthdayTime=3;		        //修改生日的最后时间戳\
	required string autograph=4;//签名\
	required int32 secretary=5;//秘书\
	repeated int32 openHeadSet=6;					//仅记录客户端没法计算的头像开启集合type=0\
	repeated int32 weaponSet=7;					//拥有过的式仗id集合\
	required int64 regDate=8;//玩家注册时间戳\
	repeated int32 conditionSet=9;				//已开启的小模块功能ID集合\
}\
\
message MoneyPart\
{\
	required int64 currentNum = 1;    //当前数量\
	required int32 itemId = 2; //消耗的货币id\
}\
\
\
//等级数据\
message LevelExp\
{\
	required int32 level=6;//等级\
	required int32 curExp=7;//当前经验\
	required int32 maxExp=8;//升级所需经验\
}\
\
\
//客户端日志记录\
message ClientLog\
{\
	required string content=1;//日志内容\
}\
\
//设备信息\
message DeviceInfo\
{\
	optional string deviceOS=1;//操作系统版本，例如13.0.2\
	optional string resolution=2;//手机分辨率	\
	optional string deviceId=3;//手机识别码\
	optional string deviceModel=4;//设备的机型，例如Samsung GT-I9208\
	optional string network=5;//网络信息,4G/3G/WIFI/2G\
	optional string mac=6;//mac 地址\
	optional string cpu=7;//cpu使用率\
	optional string gpu=8;//gpu带宽使用率\
	optional string memorySize=9;//内存使用率\
	optional string bUdid=10;//研发方自己记录的设备id\
	optional string bSDKUid=11; //b服SDK udid，客户端SDK登录事件接口获取，32位通用唯一识别码\
}\
\
//proto用的hash结构\
message ProtoHashInt2Int\
{\
	required int32 key=1;//Key\
	required int32 value=2;//Value\
}\
//proto用的hash结构\
message ProtoHashInt2String\
{\
	required int32 key=1;//Key\
	required string value=2;//Value\
}\
//proto用的hash结构\
message ProtoHashString2Int\
{\
	required string key=1;//Key\
	required int32 value=2;//Value\
}\
\
//proto用的hash结构\
message ProtoHashInt2Float\
{\
	required int32 key=1;//Key\
	required float  value=2;//Value\
}\
\
//proto用的hash结构\
message ProtoHashInt2Long\
{\
	required int32 key=1;//Key\
	required int64 value=2;//Value\
}\
\
//属性枚举\
enum PropEnum\
{\
    Hp  =100;//血量（整数）(后端计算)\
    ATK = 101;//攻击（整数）(后端计算)\
	Defense = 102;//防御（整数(后端计算)\
	Energy = 103;//能量（整数）(后端计算)\
	Crit = 104;//暴击（整数）(后端计算)\
	CHp  =105;//当前血量（整数）(后端计算)\
\
	CritRate=254;//暴击率（比分比） (后端计算)\
\
\
	CEnergy = 106;//当前能量（整数）\
	PressurePoint = 107;//压力（整数）\
\
	baojishanghai = 200; //暴击伤害（百分比）\
	shoudaobaojishanghai = 201;//受到暴击伤害（百分比）\
	yidongsudu = 202;//速度（百分比）\
	gongjisudu = 203;//攻击速度（百分比）\
	AtkSpeed = 204;//攻击速度加成\
	xiaoguomingzhong = 205;// 效果命中（百分比）\
	shanbi = 206;// 闪避（整数）（需要转化为百分比）\
	putongmingzhong = 207;//命中（整数）（需要转化为百分比）\
	zaochengshanghai = 208;//造成伤害（百分比）\
	shoudaoshanghai = 209;//受到伤害（百分比）（免伤）\
	fantanshanghai = 210;//反弹伤害（百分比）\
	hudunxiqu = 211;//耐久吸取（百分比）\
	lengqueshijian = 212;//冷却时间（百分比）\
	hudunhuifu = 213;//护盾回复（每10秒回复护盾值）（百分比）\
	aoyijiwuqishanghai = 214;//奥义及武器伤害（百分比）\
	jiqiangleishanghai = 215;//机枪类伤害（百分比）\
	jinzhanleishanghai = 216;//近战类伤害（百分比）\
	zhongxingleishanghai = 217;//重型类伤害（百分比）\
	wushimubiaofangyu = 218;//无视防御（百分比）\
	fumianxiaoguochixushijian = 219;//负面效果持续时间（百分比）\
	huifuxiaoguo = 220;//回复效果（百分比）\
	Hshuxingshanghai = 221;//H属性伤害（百分比）\
	Ashuxingshanghai = 222;//A属性伤害（百分比）\
	Sshuxingshanghai = 223;// S属性伤害（百分比）\
	shoudaoHshuxingshanghai = 224;//受到H属性攻击时，伤害（百分比）\
	shoudaoAshuxingshanghai = 225;//受到A属性攻击时，伤害（百分比）\
	AccurateAdd = 226;//精准参数加成（百分比）\
	yuansushuxingshanghai = 227;//元素属性伤害（百分比）\
	yuansushuxingkangxing = 228;//元素属性抗性（百分比）\
	zhireshanghai = 229;//过热伤害（百分比）\
	zhirekangxing = 230;//过热抗性（百分比）\
	lengkongshanghai = 231;//冷气伤害（百分比）\
	lengkongkangxing = 232;//冷气抗性（百分比）\
	cinengshanghai = 233;//磁能伤害（百分比）\
	cinengkangxing = 234;//磁能抗性（百分比）\
	qiyeshanghai = 235;//溶解伤害（百分比）\
	qiyekangxing = 236;//溶解抗性（百分比）\
	jiqiangxingneng = 237;//机枪性能（蓄力速度/造成伤害提高）（百分比）\
	jinzhanxingneng = 238;//近战性能（锁定持续时间/锁定释放后的冷却时间）（百分比）\
	zhongxingxingneng = 239;//重型性能（导弹伤害/完美导弹伤害倍率）（百分比）\
	zhiyuannengli = 240;//支援能力（百分比）\
	yuannengshanghai=242;//源能伤害（百分比）\
	yuannengkangxing=243;//源能抗性（百分比）\
	putongshanghai=244;//普通攻击造成的伤害(对应五种元素属性那个)（百分比）\
	shoudaoputongshanghai=245;//受到普通攻击时，伤害(对应五种元素属性那个)（百分比）\
	liaojishanghai=246;//僚机伤害倍率（作为僚机时，伤害倍率）（百分比）\
	yichangshijianxiaojian=247;//异常时间削减（百分比）\
	xidongfengsuo=248;//行动封锁(无法移动)\
	gongjifengsuo=249;//攻击封锁(无法攻击)\
	zishenquanbuzidanfeixingsudu=250;//自身全部子弹飞行速度\
	BREAKxingneng=251;//BREAK性能\
	hudungongjixingneng=252;//护盾攻击性能\
	nenglianghuifubaifenbi=253;//能量恢复百分比\
	dodgeRecover=255;//闪避回复速度\
	ENCostRate=256;//能量消耗\
\
	DodgeRate=257;//闪避率（实际闪避率 = 闪避值 *  MAX {（P1 – 等级 * 等级 * P2）,P3} / P4）\
\
	Perception = 301;//普通增伤率（百分比）\
	Maneuvers = 302;//普通反增伤率\
	mianshangbi = 258;//免伤比（值）\
	CritRateShow=265;// 蓄力速度加成\
	DodgeRateShow=266;//显示在ui上的闪避率\
	mianshangbiShow = 267;//显示在ui上的免伤比（值）\
\
\
	// 2021.3.30 新增属性枚举\
	suishihp = 108;//目前损失hp（整数）\
	zuihousunxu = 109;//最后一次损血（整数）\
	jizounengliang = 110;//当前极奏能量（整数）\
	xueliangchengzhang=120;//血量成长（百分比）\
	gongjichengzhang=121;//攻击成长（百分比）\
	fangyuchengzhang=122;//防御成长（百分比）\
	nengliangchangzhang=123;//能量成长（百分比)\
	baojichangzhang=124;//暴击成长（百分比)\
\
	jiguangdanzhongshanghai = 259;//激光弹种伤害加成\
	flybulletdanzhongshanghai = 260;//flybullet弹种伤害加成\
	paowuxiandanzhongshanghai = 261;//抛物线弹种伤害加成\
	jizouzongnengliang = 262;//极奏总能量\
	nengliangxishu = 263;//能量系数\
	jizouhuifuxiaolv = 264;//极奏回复效率(百分比）\
\
	putongjianshanglv = 303;//普通减伤率(百分比）\
	putongfanjianshanglv = 304;//普通反减伤率(百分比）\
	tongyongyuansushanglv = 311;//通用元素伤害加成（百分比）\
\
	tongyongfanyuansushanglv = 312;//通用反元素伤害加成（百分比）\
	tongyongyuansukangxing = 313;//通用元素伤害抗性（百分比）\
	tongyongfanyuansukangxiang = 314;//通用反元素伤害抗性（百分比\
	huoyuansushanglv = 321;//火元素伤害加成（百分比）\
	huofanyuansushanglv = 322;//火反元素伤害加成（百分比）\
	huoyuansukangxing = 323;//火元素伤害抗性（百分比）\
	huofanyuansukangxing = 324;//火反元素伤害抗性（百分比）\
	bingyuansushanglv = 331;//冰元素伤害加成（百分比）\
	bingfanyuansushanglv = 332;//冰反元素伤害加成（百分比）\
	bingyuansukangxing = 333;//冰元素伤害抗性（百分比）\
	bingfanyuansukangxing = 334;//冰反元素伤害抗性（百分比）\
	fengyuansushanglv = 341;//风元素伤害加成(百分比）\
	fengfanyuansushanglv = 342;//风反元素伤害加成(百分比）\
	fengyuansukangxing = 343;//风元素伤害抗性(百分比）\
	fengfanyuansukangxing = 344;//风反元素伤害抗性（百分比）\
	leiyuansushanglv = 351;//雷元素伤害加成（百分比）\
	leifanyuansushanglv = 352;//雷反元素伤害加成（百分比）\
	leiyuansukangxing = 353;//雷元素伤害抗性（百分比）\
	leifanyuansukangxing = 354;//雷反元素伤害抗性（百分比）\
	yuannengyuansushanglv = 361;//源能元素伤害加成（百分比）\
	yuannengfanyuansushanglv = 362;//源能反元素伤害加成（百分比）\
	yuannengyuansukangxing = 363;//源能元素伤害抗性（百分比）\
	yuannengfanyuansukangxing = 364;//源能反元素伤害抗性（百分比）\
\
\
\
\
\
}\
\
//属性对象\
message PropVal\
{\
	required PropEnum propEnum=1;//Key\
	required double value=2;//Value\
}\
\
//奖励附加参数和RewardItem一块使用\
message RewardParameterInfo{\
	required int32 oldLv=1;//改变前的等级\
	required int32 level=2;//改变后的等级\
	optional int64 par =3;//参数 type:1=角色碎片id 2=式仗碎片id，3=改变前的指挥官经验 4=角色服装id 5=改变前的角色经验，6=改变前的好感度经验  7=获得镜像\
}\
\
//奖励物品结构\
message RewardItem\
{\
	required int32 itemId=1;//物品ID\
	required int32 curCount=2;//当前数量\
	required int32 count=3;//总数量\
	optional int32 type =4;//1=获得角色,2=获得式仗,3=指挥官等级，4=获得角色服装，5=角色增加经验，6=角色好感度增加经验， 7=获得镜像\
	// optional int32 par =5;//参数\
	optional RewardParameterInfo rewardParInfo =5;//附加参数\
	optional int64 uuid =6;//唯一id\
	optional int64 beginTime=7;//开始时间\
	optional int64 endTime=8;//结束时间\
	\
}\
\
//奖励物品集合\
message Rewards\
{\
	repeated RewardItem rewardItem=1;//奖励物品集合\
}\
\
//副本星级奖励列表\
message PveStarRewards\
{\
	required int32 star=1;//第几颗星\
	required Rewards rewards=2;//奖励物品集合\
}\
\
\
//武将阵型信息\
message LeaderFormationInfo\
{\
	required int32 position=1;//位置\
	required int32 leaderId=2;//武将Id\
}\
\
//武将阵法信息\
message LeaderSquadInfo\
{\
	required int32 id=1;//阵法id 预设编队共3个  1000以后的是功能模块编队记录\
	repeated LeaderFormationInfo leaderSet=2;//武将阵型信息(1,2,3)\
}\
\
//武将信息\
message LeaderInfo\
{\
	required int32 id=1;//武将实例ID\
	required int32 level=2;//武将等级\
	required int32 exp=3;//武将经验\
	required int32 star=4;//位阶品质\
	required int32 starLevel=5;//位阶等级\
	required int32 favorabilityLevel=6;//好感度等级 默认1级\
	required int32 favorabilityExp=7;//好感度经验 默认0\
	required int32 clothingId=8;//服装ID\
	required int64 weaponId=9;//式仗唯一id\
	optional CalcPropModelInfo calcPropModelInfo=10;//武将属性\
	repeated TalentSkill talentSkills=11;//武将被动技能信息\
	// required int32 breachLevel=12;//突破等级\
	required int32 aceLevel=13;//王级等级\
	repeated ProtoHashInt2Int aceEquipMap=14;//王牌穿戴后的装备key=装备位置value=装备id\
	// required int32 archivesLevel=15;//履历等级默认为0 未开启\
	repeated int32 archivesReadSet=16;//履历读取状态  仅客户端使用\
	repeated ActiveSkillInfo activeSkills=17;//武将主动技能信息\
	repeated int32 archivesSoundSet=18;//档案已查看的语音;\
	repeated int32 archivesStorySet=19;//档案已查看的故事;\
	repeated ProtoHashInt2Long revelationMap=20;//当前武将身上已经穿戴的镜像 key=装备位置， value=装备唯一Id\
	// required int32 signStage=21;//式仗阶段1开始\
	required int32 signLv=22;//式仗等级0开始\
}\
\
//武将显示信息\
message LeaderShowInfo\
{\
	required int32 id=1;//武将实例ID\
    optional int32 level=2;//武将等级	\
	optional int32 star=3;//武将星级\
	optional float capability=4;//武将战力\
	optional int32 weaponId=5;//式仗配置表id\
}\
\
//武装信息\
message WeaponInfo\
{\
	required int32 id=1;//武器实例ID\
	required int32 leaderId=2;//所属武将ID\
	required int32 exp=3;//经验\
	required int32 level=4;//武器等级\
	required int32 breachLevel=5;//突破等级\
	required int64 onlyId=6;//式仗唯一id\
	optional CalcPropModelInfo calcPropModelInfo=7;//属性值列表\
	required int32 getTime=8;//式仗获得的时间\
	required int32 defleaderId=9;//武将ID(标志属于谁的默认式仗，非默认式仗=0)\
	required int32 skinId=10;//涂装id默认为零\
	required int32 lockState=11;//0：未锁， 1：上锁 上锁的不能分解\
	optional int32 refineLevel=12;//律叶精炼等级\
}\
\
//已经打完的PVE地图信息\
message PVEMap{\
	required int32 id=1;//PVEID\
	required int32 attackNum=2;//总攻打次数\
	required int32 todayAttNum=3;//今日攻打次数\
	required int32 battlePoint=4;//战斗点数\
	required int64 lastAttackTime=5;//最后攻打时间\
	repeated int32 stars=6;//星级 1=第一颗星2=第二颗星3=第三颗星 |亮了\
	optional string fileName=7;//上传的战斗日志文件名\
	optional string md5code=8;//文件md5码\
	required bool perfectAdopt=9;//是否完美通关\
	required int32 firstAdopt=10;//首次通关状态0=不能领取1=可领取2=已领取\
	required int32 percentAdopt=11;//百分百通关奖励0=不能领取1=可领取2=已领取\
	// optional int32 battleStrength=12;//消耗体力的战斗次数仅在扫荡前用于判断\
	repeated int32 battleStrengS=12;//战斗完成的id集合（客户端用于显示消耗的体力值）\
	optional int32 monsterMaxScore=13;//关卡怪物最高得分\
	repeated ProtoHashInt2String firstStarRewards=14;//首次获得星星的奖励物品集合key=星星value=奖励集合（itemId:num,itemid,num）\
	required int32 videotapeTime=15;//最后允许上传录像的开始时间（用于判断失败原因）\
	optional string showName=16;//显示的录像名字（后端不用，仅用于客户端显示）\
}\
//碎片\
message Part\
{\
	required int32 id=1;//碎片ID\
	required int32 num=2;//碎片数量\
	optional int32 comeFromLeaderId=3;//来源 0:正常添加 其他:武将ID/灵兽ID\
	optional int64 uuid=4; // uuid\
	optional int64 beginTime=5; // 开始的时间\
	optional int64 endTime=6; // 结束的时间\
}\
\
\
//武将的攻击属性\
message LeaderAtkProp\
{\
	repeated ProtoHashInt2Float attributeMap=1;//属性列表(对应Msg.PropEnum)\
	optional  int32 capability=2;//战力\
}\
\
//属性值列表\
message CalcPropModelInfo\
{\
	repeated ProtoHashInt2Float attributeMap=1;//属性列表(对应Msg.PropEnum)\
	repeated ProtoHashInt2Float growMap=2;//grow属性列表(对应Msg.PropEnum)\
	optional int32 capability=3;//战力:目前标识式仗战力\
}\
\
// 随机属性\
message SecondaryPropInfo\
{\
	//repeated attributeList secondaryList=1;//随机属性列表(对应Msg.PropEnum)， 这是一个数组集合，相同的key不能合并, 比如有三个加血量的 \
	repeated int32 secondaryKeyList=1;//随机属性key列表(对应Msg.PropEnum)，\
	repeated float secondaryValueList=2;//随机属性value列表， 与secondaryKeyList中的 key 一一对应 \
}\
//为了让同种属性可以同时出现\
message attributeList\
{\
	repeated ProtoHashInt2Float secondaryProp=1;// 随机属性(对应Msg.PropEnum)\
}\
\
\
\
//玩家资源 （废弃）\
message PlayerRes {\
    optional  int32 money=1;//金币数	\
    optional  int32 coin=2;//当前钱庄铜钱数量\
	optional  int32 strength=3;//体力\
	optional  int32 skillPoint=4;//技能点\
	optional  int32 currency=5;//神秘结晶-金字塔	\
}\
\
//被动技能\
message TalentSkill\
{\
	required int32 id=1;//技能ID\
	required int32 level=2;//技能等级\
	required int32 state=3;//状态 0：未解锁 1:解锁\
}\
\
//主动技能\
message ActiveSkillInfo\
{\
	required int32 id=1;//技能ID\
	required int32 level=2;//技能等级\
	required int32 type=3;//1=主动2=极奏3=QTE4=支援暂时不用,5=普攻,6=蓄力技能\
}\
\
 //商城 如果刷新类型为0 不刷新,则没有这条\
 message Shop{\
	required int32 shopType=1;//商城类型\
	optional int64 lastRefreshTime=2;//最后刷新时间\
	repeated ShopItem shopItems=3;//物品列表\
	required int32 refreshTimes=4;//刷新次数\
	repeated ProtoHashInt2Int buyItems=5;//已购买的物品列表（key = id value = 数量）\
 }\
//商城物品\
message ShopItem\
{\
	required int32 shopItemId=1;//shop表主键ID\
	required int32 buyNum=2;//购买次数\
}\
\
//任务结构\
message Task\
{\
	required int32  dayTaskPoint=1;					//日常任务活跃点（每天清空）\
	repeated int32 passedDayPoints=2;		        //已经领取日常活跃点奖励id集合（每天清空）\
	repeated ProtoHashInt2Int apPointMap=3;	        //key=势力id value=成就点\
	repeated int32 APPoints=4;		                //已经领取成就点奖励id集合  1\
	repeated ProtoHashInt2Int achievementsTask=5;	//成就任务条件\
	repeated ProtoHashInt2Int dayTask=6;	        //日常任务条件（每天清空）\
	repeated int32 passedDayTask=7;		            //已经完成的日常任务\
	repeated int32 passedAchievementsTask=8;        //已经完成的成就任务\
}\
\
// //势力结构\
// message Power\
// {\
// 	required int32  id=1;					        //id\
// 	required int32  level=2;					    //势力等级\
// 	required int32  skillId=3;					    //势力技能id\
// }\
\
//怪物死亡结构 （暂不需要传值）\
message MonsterDeath\
{\
	required int32  monsterId=1;		            //怪物id\
	required int32  leaderId=2;					    //击杀武将id\
	repeated int32  skillType =3;                   //死亡时挂载的技能类型 暂定会读取skill类型 1=极奏 2=感电；3=混沌\
}\
\
//战斗参数结构\
message FightPar\
{\
	repeated MonsterDeath  monsterDeath = 1;        //怪物死亡结构 和宝申对过 暂时没用到\
	repeated int32  leaderInjuryS = 2;//武将重伤集合（hp <= 20%为重伤）以历史行为为准\
	repeated int32 leaderdeathS = 3;//战斗中死亡的武将id列表 以结算时刻为准 中间复活算没死\
	repeated ProtoHashInt2Int battleStateMap = 4;//战斗中触发的状态类型 ：key=1.冷冻2.爆炸 3.共鸣  value=次数 bufffGroup 和世奇迪康对过 先放弃这条\
	repeated ProtoHashInt2Int skillTypeNums = 5;//战斗中使用的 行动类型，行为Id （1.极奏、2.主动、3.能量攻击、4.普攻, 5. 完美闪避， 6.元素共鸣，7. QTE. 8. 式杖技能，9.角色技能, 10.空弹状态） key = 行为Id value = 次数 普攻无法统计次数。。 迪康说 普攻先按照前端的规则计\
	optional bool isNoInjurie=6;//是否无伤通关 以历史行为为准 中间掉血就算有伤 打护盾上算无伤\
	optional int32 attackTime=7;//战斗攻打时长(秒)\
	optional int32 battleTime=8;//战斗持续时间包括进场和出场特效时间（秒）\
	repeated ProtoHashInt2Int monsterLiveTime = 9;//每波怪物从出生到全灭的时长 key=怪物波次Id  value=本波怪物存活时长，单位秒（s）\
	repeated ProtoHashInt2Int monsterTypeKill = 10;//战斗中击杀的怪物类型以及次数 key=怪物类型Id(MonsterTemplate.id)  value=击杀次数\
}\
\
//邮件中的资源\
message MailThings\
{\
	required int32 objType=1;//资源类型 1:玩家经验 2:米特拉 3:神迹之光(充值货币) 4:体力 5:物品  \
	required int32 objId=2;//对应的资源ID\
	required int32 num=3;//数量\
}\
\
//邮件\
message Mail{\
	required int64 id=1;//唯一id\
    required int32 type=2;//邮件类型 1：普通邮件 2：附件邮件 \
    repeated MailThings thingses=3;//附件\
    required int32 beginTime=4;//开始时间\
    required int32 endTime=5;//结束时间\
    required int32 state=6; //状态 1：未读 2：已读 3:已领取\
    optional int32 classification=7;// 分类 0 自动 1 手动\
\
\
	optional int32 mailId = 8;//游戏内邮件 模板Id Mail.xls  ID。 系统邮件（GM） mailId = 0\
	repeated string params = 9; // 游戏内邮件 需要的参数集合\
	repeated ProtoHashInt2String titls=10;//标题(key=Action.MailLanguageEnum)  只有maild为0时才有值\
	repeated ProtoHashInt2String contents=11;//内容(key=Action.MailLanguageEnum)  只有maild为0时才有值\
	repeated ProtoHashInt2String senderNames=12;//发件人(key=Action.MailLanguageEnum)  只有maild为0时才有值   （2021.08.31废除）\
	required int32 iconId=13;//发送者邮件图标\
	// required int32 bgImage=12;//背景图片id(-1=没有图片)\
\
	optional string bgImage=14;//背景图片文件名称（带后缀）\
\
}\
\
//玩家聊天框信息\
message PlayerChatInfo\
{\
	required int32 icon = 1;	 // 头像ID\
	required string name = 2;	 // 昵称\
	required int32 id = 3;		 // 玩家ID\
	required int32 level = 4;	 // 等级\
	optional string nameCode = 5;	 // 昵称后缀编码\
}\
\
//系统邮件结构\
message SystemChatMessage\
{\
	required int32 languageId = 1;//玩家语言ID\
	required string message = 2;//内容\
}\
\
//服务器结构信息（用于登录后发送：聊天，战斗，服务器信息）\
message ServerInfo\
{\
	required int32 serverId = 1;//服务器id\
	required int32 serverType = 2;//服务器类型 2 战斗服；3 聊天服\
	required string serverIP = 3;//服务器url\
	required int32 socketPort = 4;//服务器socket端口\
	required int32 serverVersion = 5;//服务器版本\
}\
\
//简单玩家信息（废弃待确定）\
message SimplePlayer\
{\
	optional int32 uid=1;//玩家ID\
    optional  string uName=2;//玩家昵称\
    optional  int32 exp=3;//玩家经验\
	optional  int32 level=4;//玩家等级	\
	optional int32 sex=5;//性别 0：女1：男\
	optional int32 headId=6;//头像ID\
	optional string platformId = 8; // 平台id\
	optional string platformUid = 9; // 平台玩家Id\
	optional int32 languageId=10;//玩家语言ID\
	optional int32 maxStrength = 11;//体力上限\
	optional string autograph = 12;//签名\
}\
\
//简单玩家信息\
message ShowPlayer\
{\
	optional int32 uid=1;//玩家ID\
    optional string uName=2;//玩家昵称\
    optional string nameCode=3;//nameCode 昵称后缀编码\
	optional int32 level=4;//玩家等级	\
	// optional int32 sex=5;//性别 0：女1：男\
	optional int32 headId=6;//头像ID\
	optional string autograph = 7;//签名\
	// optional int32 secretary=8;//和头像一样的秘书（暂不知道是什么值）\
	optional int64 birthday = 9;// 玩家生日，时间戳精确到毫秒\
}\
\
//玩家显示信息（用于聊天或好友查看其它玩家信息）\
message ShowGameInfo\
{\
	optional ShowPlayer showPlayer=1;//玩家简单数据\
	optional int32 leaderNum=2;//收集角色数量\
	optional int32 weaponNum=3;//收集式杖数量\
	optional int32 overBattleNum=4;//已通关卡 数量\
	optional int32 achieveNum=5;//达成成就数量\
	// repeated LeaderShowInfo leaderInfos=6;//展示的 武将列表\
	optional PlayerShowInfoSundry showSundry = 7;\
\
	// repeated Power powers=3;//成就列表\
	// repeated int32 pves=4;//pve关卡id集合\
	// optional LeaderShowInfo leaderInfos=1;// 武将信息\
	// repeated Power powers=2;//成就列表\
	// optional string autograph=3;//签名\
}\
\
// 玩家斯露德展示信息，展示背景板信息\
message PlayerShowInfoSundry\
{\
	repeated LeaderShowInfo leaderInfos=1;//展示的 武将列表\
	optional int32 bgImgId=2;//导师详情的背景板\
}\
\
//用于实现事先计算好的奖励\
message PriorReward\
{\
	required int32 itemId=1;//物品ID\
	required int32 itemNum=2;//当前数量\
	required int32 giftNum=3;//在reward中的第几个礼包\
	optional int32 par =4;//在各功能协议中参数不通： 战斗怪物宝箱代表宝箱id\
	optional int32 index =5;// 暂只表示宝箱下标（同一个宝箱中的下标相同）\
}\
\
//战斗内带出的属性值已武将为单位\
message BattleAttribute\
{\
	required int32 leaderId=1;//武将ID\
	repeated ProtoHashInt2Float attributeMap=2;//属性列表(对应Msg.PropEnum)\
}\
\
\
//事件获得的buff和装置\
message BuffDeviceInfo\
{\
	required int32 id=1;//装置或buffid \
	required int32 num=2;//仅用于装置的剩余次数 -1=全场使用 0=已失效需要置灰(此属性已废弃,需要等客户端开发时替换prop.msg)\
	required int32 time=3;//时间戳（秒）\
	required int32 layerNum=4;//层条件,跳层后递减 -1=全场使用（rader_device.parm_condition）\
	required int32 eventNum=5;//事件或战斗触发后递减 -1=全场有效（rader_device.condition）\
}\
\
//阿里云临时钥匙(用户存储副本扫荡信息)\
message AliyunOSSKeyInfo\
{\
	required int32 expiration=1;//到期时间戳(用于判定钥匙是否到期)\
	required string accessKey=2;//访问钥匙\
	required string accessKeySecret=3;//访问钥匙密钥\
	required string securityToken=4;//安全令牌\
	required string endpoint=5;//访问地址\
	required string bucketName=6;//集合名字\
	required string callbackUrl=7;//回调的服务器地址\
}\
\
//副本玩家杂项对象\
message PVESundryInfo\
{\
	optional Rewards notShow=1;//未展示的奖励\
	// optional string mainLevelPlot=2;//MainLevel剧情对话\
	repeated int32 mainStarRewardSet=3;//已经领取mainLevel星星数奖励id集合\
}\
\
//功能红点结构\
message FunctionRedDotInfo\
{\
	required int32 type=1;//红点类型 1=式仗 2=角色 3=...（更多类型在Action.RedDot）\
	repeated ProtoHashInt2String redDotMap=2;//红点模块id\
}\
\
 //充值商城 记录有限购次数的商品\
 message RechargeShopInfo{\
	repeated ProtoHashInt2Int buyItems=1;//已购买的人民币物品列表（key = id value = 数量）\
 }\
\
  //兑换商城 记录有限购次数的商品\
  message ExchangeShopInfo{\
	repeated ProtoHashInt2Int buyItems=1;//已购买的限购物品列表（key = id value = 数量）\
 }\
\
 //充值信息基础数据\
message BasicsRechargeInfo\
{\
	required int32 rechargeId=1;//recharge配置表id\
	required int32 payNum=2;//支付金额\
	required int32 cpOrderTime=3;//游戏充值订单时间（时间戳秒）\
}\
\
//活动战斗对象\
message PVEActivityInfo\
{\
	repeated int32 battleIds = 1;//允许挑战的活动关卡id列表\
	repeated ProtoHashInt2Int battleNums=2;//战斗活动挑战次数，跨天清空(key = special_Battle.Id  value = 挑战次数)\
	repeated ProtoHashInt2Int battleTypeNums=3;//战斗活动类型挑战次数，跨天清空(key = special_Battle.BattleType  value = 挑战次数)\
	repeated ProtoHashInt2Int intervalNums=4;//加倍状态下的消耗次数，跨天清空(key = special_interval.result_type  value = 挑战次数)\
}\
\
//已经打完的新版PVE关卡信息\
message MainPVEInfo{\
	required int32 id=1;//PVEID\
	required int32 attackNum=2;//总攻打次数\
	required int32 todayAttNum=3;//今日攻打次数\
	required int32 battlePoint=4;//战斗点数\
	required int64 lastAttackTime=5;//最后攻打时间\
	repeated int32 stars=6;//星级 1=第一颗星2=第二颗星3=第三颗星 |亮了\
	optional string fileName=7;//上传的战斗日志文件名\
	optional string md5code=8;//文件md5码\
	required int32 videotapeTime=9;//最后允许上传录像的开始时间（用于判断失败原因）\
	optional string showName=10;//显示的录像名字（后端不用，仅用于客户端显示）\
}\
\
//战斗验证结构-进入战斗前给前端用于判断是否需要上传战斗日志\
message WarCheckInfo\
{\
	required bool isVerification=1;//是否需要上传战斗日志(true=需要上传)\
	required string uuid=2;//战斗验证唯一id\
	required string fileName=3;//上传的战斗日志文件名\
	required int64 lastUploadTime=4;//最后允许上传时间\
}\
\
\
//雷达图位置信息结构\
message RadarPositionInfo\
{\
	required int32 x=1;//位置x点\
	required int32 y=2;//位置y点\
	required int32 eventId=3;//事件id\
	required int32 state=4;//0=未被攻打成功1=已经攻打成功\
	required int32 id=5;//map_position表唯一id\
	repeated int32 starList = 6;//评级  内容为1,2,3标识三星\
	required int32 dialogType = 7;//坐标点剧情类型 0=没有剧情1=战斗前剧情2=战斗后剧情\
	optional int32 monsterScore = 8;//单场怪物得分\
	repeated ProtoHashInt2Int evaluateMap = 9;//评分列表 //key=挑战时间戳秒 value=评价（就是星星数量）\
	optional int32 eventstep = 10;//用于判断多事件的步骤是否全部执行完（默认值0每执行一次加2）\
	optional int32 eventNPCNum = 11;//npc小队挑战失败次数(达到最大值结束地图)\
}\
\
//雷达图队伍信息\
message RadarFormationInfo\
{\
	required int32 formationId=1;//小队id\
	required int32 x=2;//位置x点\
	required int32 y=3;//位置y点\
	required bool death=4;//小队是否死亡\
	required LeaderSquadInfo leaderSquadInfo=5;//小队信息\
	// repeated int32 rightOffDevices = 6;//立即使用的装置集合\
	repeated BuffDeviceInfo useDevices = 7;//正在使用的装置\
	repeated BuffDeviceInfo useBuffs = 8;//正在使用的buff集合\
}\
\
//雷达图结构(正在挑战的数据结构)\
message RadarChartInfo\
{\
	required int32 id=1;//塔ID rader_level.id\
	required int32 mapId=2;//层ID rader_main.id\
	required int32 raderInfoId=3;//层ID rader_info.id\
	required int32 raderStoreyWinId=4;//层ID rader_storeyWin.id\
	repeated RadarPositionInfo radarPositions=5;//地图位置信息（事件和挑战地块）\
	optional RadarFormationInfo formation=6;//副本地图队伍信息\
	required int32 aura=7;//灵视值\
	required int32 battlePoint=8;//战斗点数\
	required int32 mapStartTIme=9;//地图开始时间(秒)，超时时间在map_level.SceneName\
	repeated ProtoHashInt2Int deviceList = 11;//可使用的装置id集合key=排序位置1,2,3,value=装置id\
	repeated BattleAttribute battleAttributes = 12;//战斗内带出的属性值已武将为单位\
	repeated int32 plots=13;//完成的对话集合\
	optional int32 evaluate=14;//地图评价 1=b 2=a 3=s\
	optional string skyBox=15;//天空盒\
	optional int32 monsterScore=16;//怪物总得分\
	repeated int32 deathLeaderSet=17;//战斗中死亡的武将列表\
	repeated ProtoHashInt2Int knapsack = 18;//扫塔本层获得的奖励集合key=itemsId,value = 数量\
	optional int32 layer=19;//当前所在的塔层\
	optional int32 done=20;//本层通关条件 1=通关条件已完成 2=本层所有事件已完成 3=本次扫塔所有层已完成\
	optional int32 choiceBuffId=21;//本层玩家主动选择的技能id 0=未选择\
	optional int32 clearPointid=22;//通关条件事件id rader_CheckPoint.Clear_id\
	optional bool sendReward=23;//本层奖励是否已发放\
	optional int32 reviveLayerNum=24;//扫塔关卡恢复次数\
}\
\
//已经挑战完成的雷达塔信息\
message RadarPagodaInfo{\
	required int32 id=1;//雷达塔ID\
	required int32 topFloor=2;//挑战过的最高塔层\
	required int32 attackNum=3;//总攻打次数\
	required int32 todayAttackNum=4;//今日攻打次数\
}\
\
//角色服装信息\
message ClothingInfo\
{\
	repeated int32 clothingIdSet=1; //已存在的服装id集合\
}\
\
//==================抽卡==========================================\
\
//卡池信息结构\
message SwearPoolInfo\
{\
	required int32 id=1;             //卡池ID， cardbox_intsance.Id\
	optional int32 totalTimes=2;     //卡池开启时间内，已抽总次数, 有的卡池不限制，就不需要记录\
	optional int32 upSwearId=3;      //默认up 的 swear_type.Id\
	// repeated ProtoHashInt2Int todayTimes=4; // key 与instance表里的SwearNumber字段对应， value 今日已抽取次数, 有的卡池不限制，就不需要记录\
}\
\
// 抽卡记录结构\
message SwearRecordInfo\
{\
	required int32 itemId=1; // 抽到道具ID\
	required int32 itemNum=2; // 抽到道具数量\
	required int32 timeStamp=3; // 时间戳\
	required int32 drawCardPoolId=4;//来自哪个卡池\
}\
\
// 各个保底目前的循环步数\
message SwearNumberInfo\
{\
	optional int32 bottomgroup=1;//掉落计数同步组\
	repeated ProtoHashInt2Int dropbottomMap=2;//key=dropbottomId 的列序号（从0开始计） value= 对应的循环次数\
}\
\
// 抽卡所有信息\
message SwearInfo \
{\
	repeated SwearNumberInfo swearNumberInfo=1;//各个保底组 的抽卡总次数 key=bottomgroup  value= 对应的组内抽卡总次数\
	repeated SwearPoolInfo poolInfo=2;\
	repeated SwearRecordInfo recordInfo=3;	\
}\
\
\
//==================抽卡==========================================\
\
// 初心者任务信息 结构\
message FirstThoughtInfo\
{\
	required int32 signNumber=1; // 累计签到天数\
	required bool redDot=2; // 阅读的红点\
	required int64 signTimeStamp=3; // 上次签到的时间戳\
}\
\
// ======= 新版=========\
// 任务进度结构\
message TaskProgressInfo\
{\
	required int32 dayTaskPoint=1;				 //日常任务活跃点（每天清空）\
	repeated ProtoHashInt2Int progressTaskIdS=2; //进行中的任务进度key=id value=num ，当value = -2 的时候表示任务处于可领取状态\
	required int32 chapterIndex=3;				//主线任务章节\
	required int32 dayGroupIndex=4;				//日常任务分组\
}\
\
// 已完成已领奖的任务结构\
message TaskInfo\
{  \
   repeated ProtoHashInt2Int passedTaskIdS=1;					// 已经完成的任务状态  key= 任务id, value = 完成时间\
   repeated int32 passedDayPoints=2;		        //已经领取日常活跃点奖励id集合（每天清空）\
}\
\
\
//式仗/服装/皮肤/涂装结构\
message WeaponSkinInfo\
{\
	repeated int32 existIdSet=1; //已存在的式仗皮肤id集合\
}\
\
// 镜像道具结构\
message RevelationInfo\
{\
	required int32 id=1;//镜像主键ID\
	required int32 leaderId=2;//所属武将ID， 有Id说明已装备\
	required int32 exp=3;//经验\
	required int32 level=4;//镜像等级\
	required int32 breachLevel=5;//镜像突破等级\
	required int64 onlyId=6;//唯一id\
	optional CalcPropModelInfo calcPropModelInfo=7;//属性值列表, 主属性\
	optional int32 lockStatus=8;//镜像锁，0：未锁， 1：上锁， 上锁的不能分解\
	optional int32 getTime=9;//获得的时间\
	optional SecondaryPropInfo SecondaryPropInfo=10;// 副属性（随机属性）\
}\
\
// 镜像全部信息\
message AllRevelationInfo\
{\
	repeated RevelationInfo revelationInfo=1;//镜像道具信息\
}\
\
\
// 镜像、武装 拥有过的数据\
message CommonSundry\
{\
	repeated int32 weaponSet=1;//拥有过的武装Id集合\
	repeated int32 revelationSet=2;//拥有过的镜像Id集合\
}\
\
 // 图鉴结构\
message HandbookInfo\
{\
	repeated int32 openRewardIdS=1;//已经领完的收集奖励Id集合\
	//repeated int32 unlockWordIdS=3;//解锁的 道具名词 Id集合\
	repeated int32 unlockRemainIdS=4;//已解锁的遗物图鉴Id集合， 雷达图掉落 (废弃，雷达图已经没了)\
	repeated ProtoHashInt2Int monsterTypeKill = 5;//战斗中击杀的怪物类型以及次数 key=怪物类型Id(MonsterTemplate.id)  value=击杀次数\
}\
\
//统一开关时间结构\
message ServerActivityTimeMoudle\
{\
	required int32 timeId=1;// 时间Id\
	required int64 beginTime=2;//开始时间\
	required int64 endTime=3;//结束时间\
}\
\
//=====================================================各模块数据收集====================================================================\
\
// 所有收集的数据\
message AllModuleStatisticsData\
{\
	optional CollectDataInfo collectDataInfo = 1;\
	optional DataStatistics dataStatistics = 2;\
	optional BattleTimeDataInfo battleTimeDataInfo = 3;\
}\
\
\
// 道具消耗、收集 结构, 不含镜像，武装\
message CollectDataInfo \
{\
	repeated CollectItemInfo collectItemS = 1;\
}\
\
// 道具消耗、收集 结构， 不含镜像，武装\
message CollectItemInfo \
{\
	required int32 itemId = 1;// 本次操作道具Id\
	required int32 obtainNum = 2;// 本次获得道具数量\
	required int32 consumeNum = 3;// 本次消耗道具数量\
	required int32 operateTime = 4;// 本次操作时间\
}\
//道具使用\
message UsePart\
{\
	required int32 itemId = 1;//本次操作道具Id\
	optional int64 uuid = 2;//本次操作道具的唯一ID\
	required int32 num = 3;//花费的数量\
	optional int32 leaderId = 4;//用户leaderId\
	\
	\
	\
}\
\
// 各模块数据收集， 不含战斗通关时间统计，不含道具消耗收集\
message DataStatistics\
{\
	repeated ProtoHashInt2Int loginDataMap=1;//key=统计类型（0：连续登录， 1： 累计登录） value=对应的统计次数\
	repeated ProtoHashInt2Int shopBuyDataMap=2;//key=商城类型Id， value=对应的类型购买次数\
	repeated ProtoHashInt2Int swearDataMap=3;//key=抽卡类型Id（1=角色招募  2=式杖招募）， value=对应的类型抽卡次数\
	\
	optional int32 useVirtualGold = 4;//使用虚拟金补充感知次数\
	optional int32 secretaryInteraction=5;//秘书互动统计次数\
	optional int32 upgradeThrudLevel=6;// 提升斯露德等级次数收集数据\
	optional int32 upgradeWeaponLevel=7;// 提升式杖等级次数收集数据\
	optional int32 upgradeRevelationLevel=8;// 提升镜像等级次数收集数据\
\
	optional int32 notAttackedCrossBarrier=9; //完全无伤通关战斗次数，无伤是战斗中无血量降低行为\
	repeated ProtoHashInt2Int skillTypeMap=10;//战斗中使用的 行动类型，行为Id （1.极奏、2.主动、3.能量攻击、4.普攻, 5. 完美闪避， 6.元素共鸣，7. QTE. 8. 式杖技能，9.角色技能） key = 行为Id value = 次数 普攻无法统计次数。\
	repeated ProtoHashInt2Int onlyUseRoleTypeMap=11;// 仅使用某类型角色，统计次数。key =角色类型，value= 此类型统计次数。\
	repeated ProtoHashInt2Int notUseRoleTypeMap=12;// 没有使用某类型角色，统计次数。key =角色类型，value= 此类型统计次数。\
	repeated ProtoHashInt2Int onlyUseRoleElementTypeMap=13;// 仅使用某元素属性角色，统计次数。key =元素属性，value= 此类型统计次数。\
	repeated ProtoHashInt2Int notUseRoleElementTypeMap=14;// 没有使用某元素属性角色，统计次数。key =元素属性，value= 此类型统计次数。\
	repeated ProtoHashInt2Int useTargetRoleMap=15;// 使用指定角色通关，统计次数。key =指定角色ID，value= 此类型统计次数。\
	repeated ProtoHashInt2Int useTargetNumRoleMap=16;// 使用指定数量角色通关，统计次数。key =角色数量，value= 此类型统计次数。\
	repeated ProtoHashInt2Int useTargetTypeRoleMap=17;// 使用指定类型角色通关，统计次数。key =角色类型id，value= 此类型统计次数。\
	repeated ProtoHashInt2Int useTargetElementRoleMap=18;// 使用指定属性角色通关，统计次数。key =角色元素属性id，value= 此类型统计次数。\
	repeated ProtoHashInt2Int underNumberRoleDiedMap=19;// n名以下角色撤退情况下通关，统计次数。key =角色数量，value= 此类型统计次数。\
\
	repeated ProtoHashInt2Int overTargetTaskMap=20;// key =任务类型，value= 统计次数。\
}\
\
// 战斗时间数据收集\
message BattleTimeDataInfo\
{\
	repeated ProtoHashInt2Int battleTimeMap=1;// key =通关时间，value= 统计次数。\
}\
//=====================================================各模块数据收集====================================================================\
\
// 发送给客户端的 可以连接的聊天服信息\
// message ConnectChatServerInfo\
// {\
	// optional ServerInfo serverInfo = 1;//聊天服务器结构信息\
	// optional int32 channelId = 2;//聊天服 允许进入的房间号，用于登录时，服务器分给玩家默认房间\
	// optional int64 seatCode = 3;// 座位号， 向聊天服发起连接的时候需要带上\
// }\
\
// 今日在线时长\
message TotalLoginSecond\
{\
	optional int64 currentLoginTime = 1;//本次登录时间戳，精确到毫秒\
	optional int32 totalLoginSecond = 2;//今日累计在线时长， 单位：秒\
}\
//=====================================================战斗服副本====================================================================\
// 战斗结果\
enum BattleResult\
{\
	NO_RESULT=0;//没有结果\
	EQUAL=1;//平局\
	WIN=2;//胜利\
	FAIL=3;//失败\
}\
\
// 战斗进入数据（战斗所需的战场完整数据）\
message BattleEnterInfo\
{\
	required int32 battleId = 1;// 战斗id（服务器副本id，不知道客户端用不用）\
	required int32 mainLevelId = 2;// 战斗表id\
	repeated BattlePlayerInfo battlePlayerInfo = 3;// 玩家数据\
}\
\
// 玩家战斗数据（战斗所需的玩家完整数据）\
message BattlePlayerInfo\
{\
	required int32 playerId = 1;// 玩家id\
	required string name = 2;// 玩家名字\
	required int32 level = 3;// 玩家等级\
	required int32 curLeaderId = 4;// 当前武将id\
	repeated LeaderBattleInfo leaders = 5;// 武将\
}\
\
//武将战斗信息（战斗所需的武将完整数据）\
message LeaderBattleInfo\
{\
	required int32 id = 1;//武将实例ID\
	required int32 level = 2;//武将等级\
	required int32 exp = 3;//武将经验\
	required int32 star = 4;//位阶品质\
	required int32 starLevel = 5;//位阶等级\
	required int32 favorabilityLevel = 6;//好感度等级 默认1级\
	required int32 favorabilityExp = 7;//好感度经验 默认0\
	required int32 clothingId = 8;//服装ID\
	required WeaponInfo weapon = 9;//式仗\
	optional CalcPropModelInfo calcPropModelInfo = 10;//武将属性\
	repeated TalentSkill talentSkills = 11;//武将被动技能信息\
	repeated ActiveSkillInfo activeSkills = 12;//武将主动技能信息\
	repeated RevelationInfo revelations = 13;//当前武将身上已经穿戴的镜像 key=装备位置， value=装备唯一Id\
	required int32 signLv = 14;//式仗等级0开始\
}\
\
//通知显示层一般信息\
message PlayerShowBasicInfo\
{\
	required int32 playerId = 1;// 玩家Id\
	required int32 leaderId = 2;//武将实例Id\
	required int32 netId = 3;//显示唯一Id\
}\
\
// 武将netId\
message PlayerLeaderNetInfo\
{\
	required int32 netId = 1;//显示唯一Id\
	required int32 leaderId = 2;//武将实例Id\
}\
\
//战斗事件类型\
enum BattleEvent {\
	BATTLE_START = 1;// 战斗开始\
}\
\
// 3元向量\
message Vector3\
{\
	required float x = 1;\
	required float y = 2;\
	required float z = 3;\
}\
\
// 4元数\
message Quaternion\
{\
	required float x = 1;\
	required float y = 2;\
	required float z = 3;\
	required float w = 4;\
}\
\
// 战斗单位移动\
message BattleUnitMoveOutput\
{\
	required Vector3 v = 1;\
	required Vector3 position = 2;\
	required Quaternion rotation = 3;\
	required Vector3 accelerate = 4;\
	required Vector3 moveParam = 5;\
	required Vector3 cameraParam = 6;\
}\
\
// 战斗单位使用技能\
message BattleUnitSkill\
{\
\
}\
\
// 战斗玩家切换角色\
message BattlePlayerChangeLeader\
{\
	required int32 curNetId = 1;\
	required Vector3 curPos = 2;\
}\
\
// 战斗单位同步客户端数据\
message BattleUnitOutputData\
{\
	required int32 netId = 1;\
	optional BattleUnitMoveOutput moveInfo = 2;\
	optional BattleUnitSkill skillInfo = 3;\
	optional BattlePlayerChangeLeader playerChangeLeaderInfo = 4;\
}\
\
//=====================================================战斗服副本====================================================================\
"
return protoStr