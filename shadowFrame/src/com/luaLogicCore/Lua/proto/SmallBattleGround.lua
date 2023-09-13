local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
\
message OpenSmallBattleGround\
{\
}\
\
message OpenSmallBattleGround_S2C\
{\
   optional int32 beforeLevel = 1; // 之前的段位\
   required int32 level = 2;        //段位\
   repeated int32 smallBattleGround = 3; //小战场的关卡组id\
   optional int32 smallBattleBuff = 4; //小战场的关卡组id\
   required int32 state = 5; // 当前所在的哪个 赛期\
   repeated SmallBattleState smallBattleState=6; //全部的赛季\
   optional RankHistoryPlayerInfo rankZoneHistoryPlayerInfo = 7; //小战场分组排名\
   optional int32 gradingScore = 8; //保级积分\
   optional int32 isOver  = 9; //是否领过奖\
   optional int32 averageSettlementScore = 10;// 当前的平均标准分\
   optional int32 rewardIds = 11;// 当前奖励id\
}\
\
\
message OpenSmallBattlePanel\
{\
}\
\
\
message OpenSmallBattlePanel_S2C\
{\
   required int32 state = 1; // 当前所在的哪个 赛期\
   repeated SmallBattleState smallBattleState=2; //全部的赛季\
}\
\
\
message LoginOpenSmallBattlePanel\
{\
}\
\
message LoginOpenSmallBattlePanel_S2C\
{\
   required int32 state = 1; // 当前所在的哪个 赛期\
   repeated SmallBattleState smallBattleState=2; //全部的赛季\
}\
\
\
\
message HistorySmallBattle\
{\
   required int32 uid=1;\
}\
\
message HistorySmallBattle_S2C\
{\
   repeated RankHistoryPlayerInfo rankHistoryPlayerInfo=1;  //小战场历史排名\
}\
\
message NowSmallBattle\
{\
}\
\
message NowSmallBattle_S2C\
{\
   optional RankHistoryPlayerInfo rankHistoryPlayerInfo=1; //小战场总排名\
}\
\
message OverSmallBattle\
{\
   optional int32 result = 1;// 战斗结果\
   optional FightPar fightPar = 2;// 战斗数据\
   optional int32 begin=3; // 0表示 直接退出  发1表示重新开始\
}\
\
message OverSmallBattle_S2C\
{\
   required int32 uniqueId = 1;// 战斗唯一id\
   required int32 battleId = 2;//关卡ID（WeekTower.newLevelId）\
   optional bool result = 3;//攻打结果\
   repeated Rewards rewards = 4;//一般奖励下标0=主线关卡首次三星奖励/训练模式为战斗次数奖励 1=普通奖励\
   repeated int32 starArray = 5;//修改未首次星级列表\
\
   //  required OverSoloPlayerInfo playerInfo = 6;//玩家数据\
   required int32 points = 6; //积分\
   optional int32 battleNext = 7; // 下一关的关卡id\
   repeated int32 rewardWeekTowerId = 8; //当前周期领取的奖励数据\
   optional int32 kill = 9; // 击杀数\
   optional RankHistoryPlayerInfo rankZoneHistoryPlayerInfo = 10; //小战场类型\
   optional int32 gradingScore = 11; //保级积分\
   optional int32 timeReward = 12; //时间奖励\
   optional int32 lifeReward = 13; //我方血量\
   optional int32 monsterReward = 14; // 歼敌奖励\
   optional int32 waveReward = 15; // 波次奖励\
   required int32 passTime = 16;//通关时间\
   optional int32 life = 17; // 我方血量\
   optional int32 monster = 18;//歼敌数量\
   optional int32 wave = 19; //波次数量\
   optional int32 maxPoints = 20; // 最高积分\
}\
\
message OverSmallBattleBatch{\
   required int32 battleId = 1;\
}\
\
\
message OverSmallBattleBatch_S2C\
{\
   repeated RankHistoryPlayerInfo rankZoneHistoryPlayerInfo = 1; //小战场分组排名\
}\
\
\
message AutoStartSmallBattle{\
   required int32 battleId =1;\
}\
\
message AutoStartSmallBattle_S2C{\
   repeated RankHistoryPlayerInfo rankZoneHistoryPlayerInfo = 1; //小战场分组排名\
}\
"
return protoStr