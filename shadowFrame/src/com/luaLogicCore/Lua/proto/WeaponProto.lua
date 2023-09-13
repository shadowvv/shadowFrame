local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
\
\
//提升式仗突破等级\
message UpgrageWeaponBreach\
{\
	required string weaponId=2;//武器ID\
}\
\
//提升式仗突破等级\
message UpgrageWeaponBreach_S2C\
{\
	optional WeaponInfo weaponInfo=1;//式仗信息\
	optional Rewards rewards=2;//消耗集合\
	optional LeaderInfo leaderInfo=3;//角色信息\
}\
\
// 律叶升级\
message UpgrageWeapon\
{\
	repeated ProtoHashInt2Int itemInfo = 1;//消耗的物品集合key=id,value=数量\
	//repeated string weaponIds = 2;//消耗的律叶唯一id集合\
	required string weaponId=3;//式仗ID\
}\
\
//式仗升级\
message UpgrageWeapon_S2C\
{\
	optional WeaponInfo weaponInfo=1;//操作式仗信息\
	optional Rewards rewards=2;//消耗集合\
	optional LeaderInfo leaderInfo=3;//角色信息\
	//repeated string weaponIds = 4;//消耗的式仗唯一id集合(同步到式仗列表)\
}\
\
//切换式仗\
message SwitchWeapon\
{\
	required int32 leaderId=1;//武将ID\
	required string weaponId=2;//式仗唯一ID\
}\
\
//切换式仗\
message SwitchWeapon_S2C\
{\
	optional WeaponInfo weaponInfo=1;//式仗信息\
	optional LeaderInfo leader=2;//武将信息\
	optional LeaderInfo beforeLeader=3;//式仗改动前所属武将\
	optional WeaponInfo oldWeaponInfo=4;//之前穿戴的式仗信息\
}\
\
//分解式仗\
message DecomposeWeapon\
{\
	repeated string weaponId=1;//式仗唯一ID\
	repeated ProtoHashInt2Int itemInfo = 2;//分解后得到的物品集合key=id,value=数量（用于前后端比较）\
}\
\
//分解式仗\
message DecomposeWeapon_S2C\
{\
	repeated string weaponId=1;//式仗id集合\
	optional Rewards rewards=2;//返还物品集合\
}\
\
// 提升律叶精炼等级\
message UpgradeWeaponRefineLevel\
{\
	required string weaponId = 1;//提升精炼等级的律叶\
	repeated string consumeIds = 2;// 消耗的律叶id 集合\
	repeated ProtoHashInt2Int consumeItemInfo = 3;// 消耗的物品集合key=id,value=数量\
}\
\
// 提升律叶精炼等级 返回\
message UpgradeWeaponRefineLevel_S2C\
{\
	optional WeaponInfo weaponInfo=2;//律叶信息\
	repeated string consumeWeaponIds = 3;//消耗的律叶唯一id集合\
	optional Rewards rewards=4;//消耗集合\
}\
\
//修改式仗物品锁状态 （锁住后不能销毁）\
message ChangeWeaponLock\
{\
	required string weaponId=1;//式仗唯一ID\
	required int32 state=2;//0：开锁， 1：上锁\
}\
\
//修改式仗物品锁状态 返回\
message ChangeWeaponLock_S2C\
{\
	optional WeaponInfo weaponInfo=2;//式仗信息\
}\
\
// 武装洗练\
message RecastingWeapon\
{\
    required string weaponId   = 1;//式仗唯一ID\
    repeated int32 lockPropKeyIndex = 2;// 锁定的属性key index\
    repeated int32 lockSkillId = 3;// 锁定的技能ID\
    required RecastingType recastingType = 4;//操作的类型\
}\
\
message RecastingWeapon_S2C\
{\
	required WeaponInfo weaponInfo=1;//武装信息\
	required RecastingType recastingType = 2;//操作的类型\
}\
\
// 选择保留武装随机数据\
message SelectWeaponRandomInfo\
{\
    required string weaponId   = 1;//式仗唯一ID\
    required RecastingType recastingType = 2;//操作的类型\
    required SelectRandomType selectType = 3;// 选择类型\
}\
\
message SelectWeaponRandomInfo_S2C\
{\
    required WeaponInfo weaponInfo=1;//武装信息\
    required RecastingType recastingType = 2;//操作的类型\
    required SelectRandomType selectType = 3;// 选择类型\
\
}\
\
enum SelectRandomType\
{\
    OLD = 1; // 保留旧数据\
    NEW = 2; // 选择新数据\
}\
\
enum RecastingType\
{\
    PROP = 1; // 属性\
    SKILL = 2; // 技能\
}\
"
return protoStr