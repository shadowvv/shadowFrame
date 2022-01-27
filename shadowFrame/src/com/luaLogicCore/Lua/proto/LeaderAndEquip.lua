local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
\
\
//=====================武将===========================\
\
//武将升级\
message UpgradeLeader\
{\
	required int32 leaderId=1;//武将ID\
	required int32 upgradeType = 2; // 升级类型 1.升级1级 10.升级10级\
}\
//武将升级\
message UpgradeLeader_S2C\
{\
	// required int32 errCode=1;//错误号\
	required LeaderInfo leader=2;//返回的武将\
	optional int32 curCoin=3;//玩家当前铜币\
	optional Part part=4;//使用后剩余的材料\
}\
\
//提升角色位阶等级\
message UpgradeLeaderStarLevel\
{\
	required int32 leaderId=1;//武将ID\
}\
\
//提升角色位阶等级 返回\
message UpgradeLeaderStarLevel_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
	optional Rewards rewards=3;//消耗集合\
}\
\
//提升角色位阶品质\
message UpgradeLeaderStar\
{\
	required int32 leaderId=1;//武将ID\
}\
\
//提升角色适性位阶 返回\
message UpgradeLeaderStar_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
	optional Rewards rewards=3;//消耗集合\
}\
\
//升级武将被动技能\
message UpgradeLeaderTalentSkill\
{\
	required int32 leaderId=1;//武将ID\
	required int32 skillId=2;//技能ID\
}\
\
//升级武将被动技能返回\
message UpgradeLeaderTalentSkill_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
	optional Rewards rewards=3;//扣除的物品\
}\
\
//升级武将主动技能\
message UpgradeLeaderActiveSkill\
{\
	required int32 leaderId=1;//武将ID\
	required int32 skillId=2;//技能ID\
}\
\
//升级武将主动技能返回\
message UpgradeLeaderActiveSkill_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
	optional Rewards rewards=3;//扣除的物品\
}\
\
\
\
//武将合成\
message CompositionLeader\
{\
	required int32 leaderTypeId=1;//武将类型ID\
}\
//武将合成\
message CompositionLeader_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
	optional Rewards rewards=3;//消耗集合\
}\
\
\
//武将信息发生变化 服务器推送\
message LeaderAttrChanged_S2C\
{\
	optional LeaderInfo leaderInfo=1;//武将信息\
	optional Rewards rewards=2;//经验达到最大值后退回的道具集合\
}\
\
//武将技能开启信息发生变化 服务器推送\
message LeaderSkillChanged_S2C_Push\
{\
	required int32 leaderid=1;//武将id\
	repeated TalentSkill talentSkills=2;//武将技能信息\
}\
\
\
//=====================武将===========================\
\
//=====================武将阵法===========================\
\
//武将阵型变化\
message LeaderFormationChanged\
{\
	required int32 id=1;//阵法id\
	required LeaderFormationInfo formation=2;//阵容信息\
}\
\
//武将阵型变化\
message LeaderFormationChanged_S2C\
{\
	// required int32 errorCode=1;//错误号\
	optional LeaderFormationInfo formation=2;//客户端发过来的改变阵容信息\
	optional LeaderSquadInfo leaderSquadInfo=3;//阵法信息\
}\
\
//获得新阵法的推送消息\
message GetLeaderFormation_S2C_Push\
{\
	repeated LeaderSquadInfo leaderSquadSet=1;//已获得的所有阵法信息\
}\
\
//获得新阵法站位的推送消息\
message GetPositionFormation_S2C_Push\
{\
	repeated int32 formationPostions=1;//已获得的所有阵法站位\
}\
\
//获得模块开启的推送消息\
message OpenFuctionSet_S2C_Push\
{\
	required int32 newId=1;//新开启的功能模块ID\
}\
\
//获得小功能模块开启的推送消息\
message ConditionSet_S2C_Push\
{\
	required int32 newId=1;//新开启的小功能模块ID\
}\
\
\
//自动上阵（根据战力选择上阵）\
message AutomatedFormation\
{\
	required int32 id=1;//阵法id\
	repeated LeaderFormationInfo formation=2;//阵容信息\
}\
\
//自动上阵（根据战力选择上阵）\
message AutomatedFormation_S2C\
{\
	// required int32 errorCode=1;//错误号\
	optional LeaderSquadInfo leaderSquadInfo=2;//阵法信息\
}\
\
//设置功能模块编队记录\
message SetFormationTeamType\
{\
	required int32 formationIds=1;//阵型id\
	required int32 teamTypeIds=2;//编队类型id 例如Mainlevel.TeamType\
}\
//设置功能模块编队记录\
message SetFormationTeamType_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderSquadInfo leaderSquadInfo=2;//阵法信息\
}\
\
//=====================武将阵法===========================\
\
//兑换武将碎片\
message ExchangeFragment{\
	required int32 leaderId=1;//武将id\
	required int32 num=2;//兑换碎片次数\
}\
\
\
//兑换武将碎片\
message ExchangeFragment_S2C{\
	// required int32 errorCode=1;//错误码\
	optional Rewards rewards=2;//物品集合\
	optional int32 leaderId=3;//武将id\
	optional int32 num=4;//兑换碎片次数\
}\
\
\
// //提升武将突破等级\
// message UpgradeLeaderBreach\
// {\
// 	required int32 leaderId=1;//武将ID\
// 	required int32 type=2;//突破消耗的物品类型 1=专属勋章2=通用勋章\
// }\
\
// //提升武将突破等级\
// message UpgradeLeaderBreach_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional LeaderInfo leader=2;//武将信息\
// 	optional Rewards rewards=3;//消耗集合\
// }\
\
// //式仗碎片合成式仗装备 此协议已废弃\
// message ExchangeWeaponEquip\
// {\
// 	required int32 equipId=1;//装备ID\
// }\
\
// //式仗碎片合成式仗装备  此协议已废弃\
// message ExchangeWeaponEquip_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards rewards=2;//消耗集合\
// }\
\
//提升式仗突破等级\
message UpgrageWeaponBreach\
{\
	required int64 weaponId=2;//武器ID\
}\
\
//提升式仗突破等级\
message UpgrageWeaponBreach_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional WeaponInfo weaponInfo=2;//式仗信息\
	optional Rewards rewards=3;//消耗集合\
	optional LeaderInfo leaderInfo=4;//角色信息\
}\
\
// 律叶升级\
message UpgrageWeapon\
{\
	repeated ProtoHashInt2Int itemInfo = 1;//消耗的物品集合key=id,value=数量\
	repeated int64 weaponIds = 2;//消耗的律叶唯一id集合\
	required int64 weaponId=3;//式仗ID\
}\
\
//式仗升级\
message UpgrageWeapon_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional WeaponInfo weaponInfo=2;//操作式仗信息\
	optional Rewards rewards=3;//消耗集合\
	optional LeaderInfo leaderInfo=4;//角色信息\
	repeated int64 weaponIds = 5;//消耗的式仗唯一id集合(同步到式仗列表)\
}\
\
//切换式仗\
message SwitchWeapon\
{\
	required int32 leaderId=1;//武将ID\
	required int64 weaponId=2;//式仗唯一ID\
}\
\
//切换式仗\
message SwitchWeapon_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional WeaponInfo weaponInfo=2;//式仗信息\
	optional LeaderInfo leader=3;//武将信息\
	optional LeaderInfo beforeLeader=4;//式仗改动前所属武将\
	optional WeaponInfo oldWeaponInfo=5;//之前穿戴的式仗信息\
}\
\
//分解式仗\
message DecomposeWeapon\
{\
	repeated int64 weaponId=1;//式仗唯一ID\
	repeated ProtoHashInt2Int itemInfo = 2;//分解后得到的物品集合key=id,value=数量（用于前后端比较）\
}\
\
//分解式仗\
message DecomposeWeapon_S2C\
{\
	// required int32 errCode=1;//错误号\
	repeated int64 weaponId=2;//式仗id集合\
	optional Rewards rewards=3;//返还物品集合\
}\
\
//切换式仗服装\
message SwitchWeaponSkin\
{\
	required int64 weaponId=1;//式仗ID\
	required int32 skinId=2;//服装id\
}\
\
//切换式仗服装返回\
message SwitchWeaponSkin_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional WeaponInfo weaponInfo=2;//式仗信息\
}\
\
//式仗获得新的涂装推送\
message NewWeaponSkin_Push\
{\
	optional WeaponSkinInfo weaponSkinInfo=1;//式仗涂装信息\
}\
\
//式仗信息发生变化 服务器推送\
message WeaponChanged_Push\
{\
	optional WeaponInfo weaponInfo=1;//式仗信息\
	repeated int64 weaponSet=2;//拥有过的式仗id集合\
}\
\
//修改式仗物品锁状态 （锁住后不能销毁）\
message ChangeWeaponLock\
{\
	required int64 weaponId=1;//式仗唯一ID\
	required int32 state=2;//0：开锁， 1：上锁\
}\
\
//修改式仗物品锁状态 返回\
message ChangeWeaponLock_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional WeaponInfo weaponInfo=2;//式仗信息\
}\
\
// 提升律叶精炼等级\
message UpgradeWeaponRefineLevel\
{\
	required int64 weaponId = 1;//提升精炼等级的律叶\
	repeated int64 consumeIds = 2;// 消耗的律叶id 集合\
}\
\
// 提升律叶精炼等级 返回\
message UpgradeWeaponRefineLevel_S2C\
{\
	// required int32 errorCode = 1;\
    optional WeaponInfo weaponInfo=2;//律叶信息\
	repeated int64 consumeWeaponIds = 3;//消耗的律叶唯一id集合\
	optional Rewards rewards=4;//消耗集合\
}\
\
// //王牌镶嵌装备 废弃\
// message WearAceEquip\
// {\
// 	required int32 leaderId=1;//武将ID\
// 	// repeated int32 equipId=2;//装备ID\
// 	repeated ProtoHashInt2Int postionData=2;//位置 key =镶嵌位置 value =装备ID\
// }\
\
// //王牌镶嵌装备 废弃\
// message WearAceEquip_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional LeaderInfo leader=2;//武将信息\
// 	optional Rewards rewards=3;//消耗集合\
// 	repeated int32 equipId=4;//装备ID\
// }\
\
// //王牌升级  废弃\
// message UpgrageAce\
// {\
// 	required int32 leaderId=1;//武将ID\
// }\
\
// //王牌升级  废弃\
// message UpgrageAce_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional LeaderInfo leader=2;//武将信息\
// 	optional Rewards rewards=3;//消耗集合\
// }\
\
\
//模块开启更改显示tip状态\
message SetOpenFuctionTips\
{\
	repeated int32 Id=1;//openfuctionId\
}\
\
//模块开启更改显示tip状态返回\
message SetOpenFuctionTips_S2C\
{\
	// required int32 errCode=1;//错误号\
	repeated ProtoHashInt2Int openFuctionSet=2;//已开启的功能模块ID集合key=已开启模块idvalue=播放状态1=未播放2=已播放\
}\
\
//提升武将履历等级\
message UpgradeLeaderArchives\
{\
	required int32 leaderId=1;//武将ID\
}\
\
//提升武将履历等级\
message UpgradeLeaderArchives_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
	optional Rewards rewards=3;//消耗集合\
}\
\
//修改履历读取状态\
message SetArchivesRead\
{\
	required int32 leaderId=1;//武将ID\
	required int32 archivesId=2;//履历id\
}\
\
//修改履历读取状态 返回\
message SetArchivesRead_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
}\
\
//切换服装\
message SwitchClothing\
{\
	required int32 leaderId=1;//武将ID\
	required int32 clothingId=2;//服装id\
}\
\
//切换服装返回\
message SwitchClothing_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional ClothingInfo clothingInfo=2;//服装信息\
	optional LeaderInfo leader=3;//角色信息\
}\
\
//角色新服装推送\
message NewClothing_Push\
{\
	optional ClothingInfo clothingInfo=1;//服装信息\
}\
\
// //服装更改new试穿状态\
// message NewStateClothing\
// {\
// 	required int32 clothingId=1;//服装id\
// }\
\
// //服装更改new试穿状态返回\
// message NewStateClothing_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional ClothingInfo clothingInfo=2;//服装信息\
// }\
\
//修改档案语音或故事id\
message ChangeLeaderArchives\
{\
	required int32 leaderId=1;//武将ID\
	required int32 id=2;//语音或故事ID\
	required int32 type=3;//1=语音2=故事\
}\
\
//提升武将履历等级\
message ChangeLeaderArchives_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
}\
\
\
//=============================抽卡=============================================================\
\
//抽卡\
message SwearHero{\
	required int32 cardBoxId=1; // 卡池ID\
	required int32 number=2;// 抽卡次数 \
}\
\
\
//抽卡\
message SwearHero_S2C{\
	// required int32 errorCode=1;//错误码\
	optional int32 number=2;// 抽卡次数 \
	optional Rewards rewards=3;// 抽卡奖励 以及消耗的道具 集合\
	// optional SwearInfo swearInfo=4; //抽卡信息\
	optional SwearNumberInfo swearNumberInfo=4;//各个保底组 的抽卡总次数 key=bottomgroup  value= 对应的组内抽卡总次数\
	optional SwearPoolInfo poolInfo=5;  // 抽卡\
	repeated SwearRecordInfo recordInfo=6; // 新抽的记录\
	repeated int32 luckGoodIds=7; // 本次触发的幸运礼包ID 对应 cardbox_addgoods.xlsx   Id \
}\
\
\
\
//抽卡选默认 up\
message SelectSwearChange\
{\
	 required int32 cardBoxId=1; // 卡池ID\
	 required int32 showItemId=2; // swear_type.showitem, 点选的道具Id\
}\
\
// 抽卡选默认up返回\
message SelectSwearChange_S2C \
{\
	// required int32 errorCode=1;//错误码\
	optional int32 swearTypeId=2; // swear_type.Id , 抽卡up 的抽卡类型id\
}\
\
//=============================抽卡=============================================================\
\
\
//镜像\
//镜像升级\
message UpgrageRevelation\
{\
	repeated ProtoHashInt2Int itemInfo = 1;//消耗的物品集合key=id,value=数量\
	repeated int64 consumeIds=2;//消耗的镜像唯一id集合\
	required int64 upgradeId=3;//升级的镜像唯一ID\
}\
\
//镜像升级\
message UpgrageRevelation_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RevelationInfo revelationInfo=2;//操作的镜像信息\
	optional Rewards rewards=3;//消耗集合\
	optional LeaderInfo leaderInfo=4;//角色信息\
	repeated int64 consumeRevelationIds = 5;//消耗的镜像唯一id集合(同步到镜像列表)\
}\
\
//提升镜像突破等级\
message UpgrageRevelationBreach\
{\
	required int64 revelationId=2;//镜像ID\
}\
\
//提升镜像突破等级\
message UpgrageRevelationBreach_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RevelationInfo revelationInfo=2;//镜像信息\
	optional Rewards rewards=3;//消耗集合\
	optional LeaderInfo leaderInfo=4;//角色信息\
}\
\
\
//切换镜像，包括从别的武将身上获取镜像\
message SwitchRevelation\
{\
	required int32 leaderId=1;//武将ID\
	required int64 revelationId=2;//镜像唯一ID，                      // 当镜像唯一ID 为 0时， 且type 为拆卸镜像（2）, 表示 全部拆卸\
	required int32 type=3;// 类型，  1： 装备镜像， 2：拆掉镜像\
}\
\
//切换镜像\
message SwitchRevelation_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional AllRevelationInfo revelationInfos=2;//镜像信息, 如果是全部拆卸，可能有多个\
	optional LeaderInfo leaderInfo=3;//武将信息\
	optional LeaderInfo beforeLeader=4;//镜像改动前所属武将的信息\
	optional RevelationInfo oldRevelationInfo=5;//之前穿戴的镜像信息\
	optional int32 type=6;// 类型，  1： 装备镜像， 2：拆掉镜像\
}\
\
\
//镜像锁\
message RevelationLock\
{\
	required int64 revelationId=1;//镜像唯一ID\
	required int32 state=2;// 当前锁状态 0：开锁， 1：上锁\
	\
}\
\
//镜像锁\
message RevelationLock_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RevelationInfo revelationInfo=2;//镜像信息\
}\
\
//镜像信息发生变化 服务器推送\
message RevelationChanged_Push\
{\
	optional RevelationInfo revelationInfo=1;//镜像信息\
	repeated int32 revelationSet=2;//拥有过的镜像id集合\
}\
\
//分解镜像\
message DecomposeRevelation\
{\
	repeated int64 revelationId=1;//镜像唯一ID\
	repeated ProtoHashInt2Int itemInfo = 2;//分解后得到的物品集合key=id,value=数量（用于前后端比较）\
}\
\
//分解镜像 返回\
message DecomposeRevelation_S2C\
{\
	// required int32 errCode=1;//错误号\
	repeated int64 revelationId=2;//镜像id集合\
	optional Rewards rewards=3;//返还物品集合\
}\
\
"
return protoStr