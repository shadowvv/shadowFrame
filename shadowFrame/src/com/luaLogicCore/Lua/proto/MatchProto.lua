local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
//开始匹配\
//匹配成功队伍系统推送队伍的TCP消息\
message StartMatch\
{\
  required int32 battleType = 1;//匹配的战斗类型，msg.proto BattleType枚举\
  optional int32 targetId = 2;//匹配的目标关卡id\
}\
//開始匹配返回\
message StartMatch_S2C\
{\
}\
//取消匹配\
message QuitMatch\
{\
}\
//取消匹配返回\
message QuitMatch_S2C\
{\
}\
\
//进入匹配隊列[TCP]\
message MatchEnter_push\
{\
  optional int32 battleType = 1;//匹配的战斗类型，msg.proto BattleType枚举\
  optional int32 targetId = 2;//匹配的目标关卡id\
}\
//退出匹配隊列[TCP](包括一切正常的，异常的退出)\
message MatchExit_push\
{\
  required int32 reason = 1;//退出匹配队列原因，msg.proto MatchExitReason枚举\
}\
"
return protoStr