local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
// ==========通讯协议===========\
\
\
//战姬 加入/离开 小队\
message ArmorGirlFormationJoinOrLeave\
{\
	required int32 squadId=1;//小队id\
	required int32 position=2;//小队位置\
	required int32 armorGirlId=3;//战姬Id[0表示离开小队]\
}\
\
//战姬 加入/离开 小队\
message ArmorGirlFormationJoinOrLeave_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional SquadFormation squadFormation=2;//阵容信息\
	optional int32 armorGirlId=3;//离队战姬Id[0表示无战姬离队]\
}\
\
//战姬小队交换成员\
message ArmorGirlFormationExchange\
{\
	required int32 squadIdFrom=1;//从 小队ID\
	required int32 posFrom=2;//小队位置\
	required int32 squadIdTo=3;//到 小队ID\
	required int32 posTo=4;//小队位置\
}\
\
//战姬小队交换成员\
message ArmorGirlFormationExchange_S2C\
{\
	required int32 errorCode=1;//错误号\
	repeated SquadFormation squadFormation=2;//阵容信息\
}\
\
\
//战姬小队名字发生变化\
message ArmorGirlFormationName\
{\
	required int32 squadId=1;//小队id\
	required string squadName=2;//小队名字\
}\
\
//战姬小队名字发生变化\
message ArmorGirlFormationName_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional SquadFormation squadFormation=2;//阵容信息\
}\
// ===========战姬协议===========\
\
\
"
return protoStr