local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
//打开大战场\
message OpenAbyssFront{\
}\
\
message OpenAbyssFront_S2C{\
   required AbyssFrontInfo abyssFrontInfo = 1;// 大战场数据结构\
   optional int32 beforeRewards = 2; // 上期奖励id\
   optional int32 beforeScore =3; //上期的分数\
   optional AbyssFrontRank beforeRank =4; //上期的排名\
}\
\
//打开大战场历史记录\
message HistoryAbyssFront\
{\
\
}\
\
message HistoryAbyssFront_S2C\
{\
   repeated AbyssFrontPlayerInfo rankHistoryPlayerInfo=1;  //历史排名\
   required AbyssFrontPlayerInfo rankHistoryPlayerInfoOwn =2 ; //当前排行榜自己的数据\
}\
\
//开始战斗前调用是否能进入战斗\
message StartAbyssFront{\
   optional int32 battleId = 1;//关卡ID(不同类型关卡对应不同表的主键id)\
   optional LeaderSquadInfo leaderSquadInfo = 3;//阵容信息\
}\
\
\
message StartAbyssFront_S2C{\
   repeated LockMonster lockMonster = 1;\
}\
\
// 结束战斗\
message OverAbyssFront\
{\
   optional int32 result = 1;// 战斗结果\
   optional FightPar fightPar = 2;// 战斗数据\
}\
\
message OverAbyssFront_S2C\
{\
   required int32 uniqueId = 1;// 战斗唯一id\
   required int32 battleId = 2;//关卡ID（WeekTower.newLevelId）\
   optional bool result = 3;//攻打结果\
   required int32 points = 4; //积分\
   required int32 historyMaxPoints = 5;//历史最高分\
   optional int32 battleTime = 6; // 战斗时间\
}\
// 保存战斗数据\
message SaveAbyssFront{\
   required int32 battleId = 1; //战斗关卡id数据\
}\
\
message SaveAbyssFront_S2C{\
   required AbyssFrontInfo abyssFrontInfo = 1;// 大战场数据结构\
}\
\
// 扫荡副本\
message SweepAbyssFront{\
   required int32 battleId = 1;\
}\
\
message SweepAbyssFront_S2C{\
   required AbyssFrontInfo abyssFrontInfo = 1;// 大战场数据结构\
}\
\
// 查看玩家的排行榜信息\
message OpenRankAbyssFront{\
   required int32 uid =1;\
}\
\
message OpenRankAbyssFront_S2C{\
   repeated AbyssFrontMonsterInfo abyssFrontMonsterInfos =1;\
}\
// 重置大战场boss分数\
message ResetBossAbyssFront{\
   required int32 bossId = 1;\
}\
\
message ResetBossAbyssFront_S2C{\
   required AbyssFrontInfo abyssFrontInfo = 1;// 大战场数据结构\
}\
"
return protoStr