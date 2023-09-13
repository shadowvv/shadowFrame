local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
//分解Perk\
message DecomposePerk\
{\
	repeated string perkId=1;//唯一ID\
	//是不是要验证物品奖励\
	repeated ProtoHashInt2Int itemInfo = 2;//分解后得到的物品集合key=id,value=数量（用于前后端比较）\
}\
\
//分解Perk\
message DecomposePerk_S2C\
{\
	repeated string perkId=1;//Perk id集合\
}\
\
//切换Perk\
message SwitchPerk\
{\
	required int32 leaderId=1;//武将ID\
	required string perkId=2;//perk唯一ID  0=卸下perk\
}\
\
//切换Perk\
message SwitchPerk_S2C\
{\
	optional PerkInfo perkInfo=1;//perk信息\
	optional LeaderInfo leader=2;//武将信息\
	optional LeaderInfo beforeLeader=3;//perk改动前所属武将\
	optional PerkInfo oldPerkInfo=4;//之前穿戴的perk信息\
}\
\
//分批请求数据\
message GetPerkInfoListPage{\
	required int32 page =1;\
}\
//分批请求数据\
message GetPerkInfoListPage_S2C{\
	repeated PerkInfo perkInfo=1;\
	required int32 page =2;\
	required bool next = 3;\
}\
\
\
//获得perk的推送\
message AddPerkPush{\
	optional PerkInfo perkInfo=1;\
}\
\
//perk锁\
message PerkLock\
{\
	required string perkId=1;//perk唯一ID\
	required int32 state=2;// 当前锁状态 0：开锁， 1：上锁\
\
}\
\
//perk锁 返回\
message PerkLock_S2C\
{\
	optional PerkInfo perkInfo=1;//perk信息\
}\
\
//符灵 镶嵌升词缀/升级词缀\
message WearPerkUpLevel\
{\
	required string perkId=1;//perk唯一ID\
	required int32 itemId=2;// 消耗的物品id\
	required int32 itemNum=3;// 消耗的物品数量\
}\
\
//符灵 镶嵌升词缀/升级词缀 返回\
message WearPerkUpLevel_S2C\
{\
	optional PerkInfo perkInfo=1;//perk信息\
	optional LeaderInfo leader=2;//武将信息\
}\
\
//符灵 剥离返还词缀/分解词缀\
message DecomposePerkAffix\
{\
	required string perkId=1;//perk唯一ID\
	required int32 perkAttributeId=2;// 要分解的词缀id PerkAttribute.id\
}\
\
//符灵 剥离返还词缀/分解词缀 返回\
message DecomposePerkAffix_S2C\
{\
	optional PerkInfo perkInfo=1;//perk信息\
	optional LeaderInfo leader=2;//武将信息\
}\
\
//符灵变形\
message DeformationPerk\
{\
	required string perkId=1;//perk唯一ID\
	required int32 perkAppearanceId=2;// 变形 PerkAppearance.id\
}\
\
//符灵变形 返回\
message DeformationPerk_S2C\
{\
	optional PerkInfo perkInfo=1;//perk信息\
}\
\
//重置符灵变形\
message ResetDeformationPerk\
{\
	required string perkId=1;//perk唯一ID\
}\
\
//重置符灵变形 返回\
message ResetDeformationPerk_S2C\
{\
	optional PerkInfo perkInfo=1;//perk信息\
}\
"
return protoStr