local protoStr = { }
protoStr.str = "package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
// 501，504  以 领完奖励  作为 任务完成状态\
// 彦良说 任务中涉及 雷达图的 部分，或者某一类型的局部，暂时都不要管（操作），跟着后续的雷达图需求走\
// 例如301 参数1 为4的情况。313 参数1 为4 的情况\
// ===新版任务类型Id======\
enum ClientTaskType\
{ \
	RoleLevel								=101;//导师等级达到n级【前端】  \
	SignNumber								=105;//每日签到1次  上线就给（不需要签到操作）【前端】  1\
	UnlockHandbookNumber					=109;//解锁n条图鉴 参数，图鉴类型【前端】\
	ObtainWeaponSkin						=206;//获得n品质式杖皮肤x个，参数：品质【前端】 1\
	ThrudTypeLevel 							=211;//（x养成类型的）达到y级的斯露德有n个  参数：养成类型ID（1： 升级（斯露德等级）， 2： 品质等阶（star）,3: 式杖等级， 4：好感度等级），养成等级【前端】  【修改 3类型】\
	ObtainThrudSkin							=212;// 某种品质的 斯露德皮肤有x个， 参数：品质id（0=全部  1=白  2=绿 3=蓝  4=紫 5=橙）【前端】\
	ObtainLeaderNumber						=214;//获得某种品质的 某种类型的 斯露德数目，参数，斯露德品质，斯露德类型（0=全部类型 1=突击  2=引导 3=重型）【前端】  ok \
	//AreaExploreItem							=213;//雷达图遗物收集数量达到n 【前端】\
	ObtainWeaponTypeRecord					=215;//式杖累计收集过的数量 , 参数：式杖类型id，式杖品质id， 式杖类型与品质填写为0时为不限制 【前端】\
	ObtainRevelationRecord					=217;//累计获得 n品质的镜像x个【前端】\
\
	MultipleThrudSkillLevel					=221;//n斯露德技能等级达到y级 ,参数：技能ID（0或不填默认任意）,等级 【前端】【新增】\
	ThrudSkillLevel							=222;//指定斯露德技能等级达到X级 ,参数：斯露德ID，技能ID（0或不填默认任意） 【前端】【新增】\
\
	CrossBarrier							=301;//n类型关卡今日通过x次，参数： 关卡类型ID（0 = 任意, 1=主线  2=个人 3=训练  4=雷达图）【前端】 【修改，类型0】\
	CrossBarrierAllNumber					=313;//n类型关卡通过总次数 达到x次，参数： 关卡类型ID（1=主线  2=个人 3=训练 4=雷达图）【前端】\
	CrossTargetBarrierNum					=314;//通过指定关卡x次, 参数：关卡id， 之后都只读MainLevel中出现关卡Id 【前端】 【新增】\
\
	// CrossTargetBarrier						=401;//通关n主线关卡 ，参数： 主线关卡id【前端】\
	// CrossTargetPlotBarrier					=402;//通关n个人剧情关卡 参数：个人关卡章节id【前端】 \
	// CrossTargetTrainBarrier					=403;//通关n训练关卡  参数，训练关卡id【前端】 \
	// CrossTargetRadarBarrier					=404;//通关n雷达图的x层 参数：雷达图id，通关层数 【前端】\
	AllChapterTaskOver						=504;//所属章节任务全部完成 （无参数，纯状态）【前端】\
	UnlockFirstThoughtBINGON				=502;//解锁初心者BINGO ， 当玩家注册之后自动完成 参数：解锁数量 （只有一次）【前端】\
	BINGOIsConnect							=503;//BINGO达成n连接 ，连接类型 （横向、纵向、斜向）,参数为需要完成的任务Id, 会有2~3个，【前端】 \
	OverAchieveModule						=505;//所属成就模块下 成就全部完成\
}\
\
enum ServerTaskType\
{	\
	LoginDayNumber							=102;//登录天数达到n天 ，参数：统计类型ID（0=连续登录  1=累积登录） 【后端】\
	BuyShopCity								=103;//在商城中累计购买n次物品 ，参数：商城类型id， 填0 表示所有类型【后端】 OK\
	SecretaryInteraction					=104;//与秘书进行n次互动【后端】\
	MoneyConsume							=106;//n货币消耗达到x ， 参数：货币id【后端】 ？                           \
	SwearNumber								=107;//进行n招募x次， 参数： 招募类型（1=角色招募  2=式杖招募 0=全部）【后端】 OK\
	UseVirtualGold							=108;//使用虚拟金补充感知n次， 跟补充数量无关，按操作次数计算【后端】                                 \
	UpgradeThrudLevel						=201;//提升斯露德的等级 不需要升级，有升级的操作行为即可， （有经验提升）【后端】\
	UpgradeWeaponLevel						=202;//提升式杖的等级 不需要升级，有升级的操作行为即可，  （有经验提升）【后端】\
	UpgradeRevelationLevel					=203;//提升镜像的等级 不需要升级，有升级的操作行为即可，（有经验提升）【后端】\
	NotAttackedCrossBarrier					=302;//完全无伤通关战斗次数，无伤是战斗中无血量降低行为  【后端】                 \
	UseSkill_JiZou 							=303;//在战斗中使用n次极奏  参数，次数统计【后端】                 \
	UseSkill_Dodge						    =304;//在战斗中触发n次完美闪避  参数，次数统计 【后端】          \
	UseSkill_GongMing						=305;//在战斗中触发n次元素共鸣  参数，次数统计【后端】           \
	UseSkill_ZhiYuan						=306;//在战斗中触发n次支援技能  参数，次数统计【后端】          \
	UseWeaponSkill							=307;//在战斗中触发n次式杖技能 参数，次数统计 【后端】【弃用】          \
	UseRoleSkill							=308;//在战斗中触发n次角色技能 参数，次数统计 【后端】            \
	OnlyUseTargetRoleType					=309;//在战斗中仅可使用n类型角色 参数，角色类型id 【后端】               \
	NotAccessUseTargetRoleType				=310;//在战斗中不上阵n类型角色  参数，角色类型id【后端】                 \
	OnlyUseTargetRoleElementType			=311;//在战斗中仅可使用n元素属性的角色  参数，元素属性id【后端】      \
	NotAccessUseTargetRoleElementType		=312;//在战斗中不上阵n元素属性的角色  参数，元素属性id 【后端】 \
	CrossBarrierInTime   					=405;//在n秒内通关关卡啊 参数：通关时间【后端】                 范围    <\
	UseTargetRoleCrossBarrier				=406;//使用n角色通关关卡 ，参数：斯露德id 【后端】\
	UseTargetNumRoleCrossBarrier			=407;//使用n数量角色通关关卡 参数：角色数量【后端】 \
	UseTargetTypeRoleCrossBarrier			=408;//使用n类型角色通关关卡 参数：角色类型id【后端】\
	UseTargetPropRoleCrossBarrier			=409;//使用n属性角色通关关卡 参数：角色元素属性id【后端】\
	NotUseTargetActionCrossBarrier			=410;//不使用行动n通关关卡 参数：行为id （极奏、主动、能力攻击、普攻）【后端】【弃用】\
	UnderNumberRoleDiedCrossBarrier			=411;//n名以下角色撤退情况下通关关卡 参数：角色数量  【后端】      范围  <\
	// UnderNumberRoleHurtCrossBarrier			=412;//n名以下角色重伤情况下通关关卡  参数：角色数量 【后端】      范围  <\
	OverTargetTypeTask						=501;//完成n类型任务x次  参数：任务类型id （每日、主线）【后端】   \
	// =================================数量可能回退的 类型===================================================================================   \
	ObtainWeapon							=204;//获得n类型的x品质式杖y把 参数：式杖类型id，式杖品质id， 式杖类型与品质填写为0时为不限制【后端】  获得总数    【可回退】  ok \
	WeaponLevel								=205;//n式杖的x养成类型达到y级  参数：式杖类型ID， 养成类型id（1: 基础等级，2：突破等级），养成等级 【后端】      【可回退】 OK\
	ObtainRevelation						=207;//获得等于n品质的镜像x个， 获得总数  参数：品质id，填0 表示所有【后端】【可回退】 OK\
	ObtainRevelationSuit					=208;//获得n品质的镜像套装x套，参数：品质（0表示所有）【后端】   获得总数\
	RevelationTypeLevel						=209;//n品质的镜像x养成类型达到y级， 参数：镜像品质id（填0表示所有），养成类型ID(1=基础等级，2=突破等级)，养成等级【后端】【可回退】 OK\
	EquipRevelation		 					=210;//装备n品质镜像，使其生效x件套效果,件套数量【后端】\
	\
	\
	ThrudCapatility							=219;//指定斯露德达到X战力 参数， 斯露德ID 【后端】  【新增】\
	MultipleThrudCapatility					=220;//n个斯露德战力达到X  参数，源强度（战力） 【后端】 【新增】\
	WearRevelationNum 						=223;// 佩戴n品质的镜像x个 【后端】 【新增】\
	WearWeaponTypeNum						=224;// 佩戴n类型的武装y把 【后端】 【新增】\
	WearWeaponGrateNUm						=225;// 佩戴n品质的武装y把  【后端】 【新增】\
	\
\
	// =================================数量可能回退的 类型===================================================================================\
\
	//================================= 删除的数据也统计 的类型============================================================================\
	ObtainWeaponDevelopRecord				=216;//n品质的x类型式杖的等级达到y级， 参数：品质（填0表示所有）， 式杖类型(填0表示所有)， 等级【后端】 需要从redis中拿数据  \
	ObtainRevelationDevelopRecord			=218;//累计达到 n品质的镜像x养成类型达到y级， 参数，品质（填0表示所有），养成类型ID(1=基础等级，2=突破等级)， 等级【后端】 需要从redis中拿数据 OK\
	//=================================删除的数据也统计 的类型============================================================================\
\
\
}\
"
return protoStr