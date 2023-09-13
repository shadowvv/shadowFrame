local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
//领取章节奖励\
message GetChapterReward\
{\
	required int32 chapterRewardId = 1;//章节奖励ID\
}\
//领取章节奖励返回\
message GetChapterReward_S2C\
{\
	repeated int32 chapterRewardList = 1;//领取过的章节奖励\
}\
\
//mainLevel通过剧情关卡\
message AdoptPlotMainLevel\
{\
	required int32 id=1;//MainLevel id\
}\
//mainLevel通过剧情关卡返回\
message AdoptPlotMainLevel_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional MainLevelInfo mainLevelInfo=1;//关卡信息\
}\
\
//测试一键战斗结算\
message TestBattleSettle\
{\
	optional int32 mainLevelId = 1;// 关卡id\
	optional int32 formationId = 2;// 阵型id\
}\
//测试一键战斗结算战斗后返回\
message TestBattleSettle_S2C\
{\
	required int32 battleId = 1;//关卡ID（MainLevel.Id）\
	optional bool result = 2;//攻打结果\
	repeated Rewards rewards = 3;//一般奖励下标0=主线关卡首次三星奖励/训练模式为战斗次数奖励 1=普通奖励\
	repeated int32 starArray = 4;//修改未首次星级列表\
	optional MainPVEInfo mainPVEInfo = 5;//战斗对象\
	required int32 passTime = 6;//通关时间\
	required OverSoloPlayerInfo playerInfo = 7;\
}\
\
//主线结算\
message OverMainLevel\
{\
	optional int32 result = 1;// 战斗结果\
	repeated int32 starArray = 2;// 修改未首次星级列表\
	optional FightPar fightPar = 3;// 战斗数据\
}\
//主线结算返回\
message OverMainLevel_S2C\
{\
	required int32 uniqueId = 1;// 战斗唯一id\
	required int32 battleId = 2;//关卡ID（MainLevel.Id）\
	optional bool result = 3;//攻打结果\
	repeated Rewards rewards = 4;//奖励\
	repeated int32 starArray = 5;//修改未首次星级列表\
	required int32 passTime = 6;//通关时间\
	required OverSoloPlayerInfo playerInfo = 7;\
	optional MainLevelInfo mainLevelInfo = 8;\
	optional bool firstPass = 9;\
	optional int32 multipleValue = 10;// 倍率\
}\
\
//训练场结算\
message OverTrainLevel\
{\
	optional int32 result = 1;// 战斗结果\
	optional FightPar fightPar = 2;//战斗数据\
}\
//训练场结算返回\
message OverTrainLevel_S2C\
{\
	required int32 uniqueId = 1;// 战斗唯一id\
	required int32 battleId = 2;//关卡ID（MainLevel.Id）\
	optional bool result = 3;//攻打结果\
	repeated Rewards rewards = 4;//奖励\
	required int32 passTime = 5;//通关时间\
	required OverSoloPlayerInfo playerInfo = 6;\
	optional TrainLevelInfo trainLevelInfo = 7;\
	optional bool firstPass = 8;\
	optional bool helpBattle = 9;// 助战\
	optional int32 multipleValue = 10;// 倍率\
}\
\
//限时关卡结算\
message OverLimitedTimeLevel\
{\
	optional int32 result = 1;// 战斗结果\
	optional FightPar fightPar = 2;//战斗数据\
}\
\
//限时关卡结算返回\
message OverLimitedTimeLevel_S2C\
{\
	required int32 uniqueId = 1;// 战斗唯一id\
	required int32 battleId = 2;//关卡ID（LimitedTimeLevel.id）\
	optional bool result = 3;//攻打结果\
	repeated Rewards rewards = 4;//奖励\
	required int32 passTime = 5;//通关时间\
	required OverSoloPlayerInfo playerInfo = 6;\
	optional LimitedTimeLevelInfo limitedTimeLevelInfo = 7;\
}\
\
//武器关卡结算\
message OverWeaponLevel\
{\
	optional int32 result = 1;// 战斗结果\
	optional FightPar fightPar = 2;//战斗数据\
}\
\
//武器关卡结算返回\
message OverWeaponLevel_S2C\
{\
	required int32 uniqueId = 1;// 战斗唯一id\
	required int32 battleId = 2;//关卡ID（WeaponLevel.id）\
	optional bool result = 3;//攻打结果\
	repeated Rewards rewards = 4;//奖励\
	required int32 passTime = 5;//通关时间\
	required OverSoloPlayerInfo playerInfo = 6;\
	optional WeaponLevelInfo weaponLevelInfo = 7;\
	optional bool firstPass = 8;\
}\
\
// 刷新出新的限时关卡(关卡结算的子包带过来)\
message RefreshLimitedTimeLevel_S2C\
{\
	required LimitedTimeLevelInfo limitedTimeLevelInfo = 1;//新刷新出来的限时关卡\
}\
\
// 领取武器关奖励\
message GetWeaponLevelReward\
{\
	required int32 levelId = 1;//武器关id\
}\
\
message GetWeaponLevelReward_S2C\
{\
	required int32 levelId = 1;//武器关id\
}\
\
//多人pve boss关卡结算\
message OverMultiPveBossLevel\
{\
}\
\
//多人pve boss关卡结算返回\
message OverMultiPveBossLevel_S2C\
{\
	required int32 uniqueId = 1;// 战斗唯一id\
	required int32 battleId = 2;//关卡ID（MultiPveBoss.id）\
	optional bool result = 3;//攻打结果\
	repeated Rewards rewards = 4;//奖励\
	required int32 passTime = 5;//通关时间\
	required OverSoloPlayerInfo playerInfo = 6;\
	optional MultiPveBossLevelInfo multiPveBossLevelInfo = 7;\
	optional bool firstPass = 8;\
	optional bool helpBattle = 9;// 助战\
}\
\
//团本关卡结算\
message OverGuildWarLevel\
{\
	optional int32 result = 1;// 战斗结果\
	repeated int32 starArray = 2;// 获得的星级(1,2,3)\
	optional FightPar fightPar = 3;// 战斗数据\
}\
\
//团本关卡结算返回\
message OverGuildWarLevel_S2C\
{\
	required int32 uniqueId = 1;//关卡ID（GuildWarLevel.id）\
	required int32 battleId = 2;//关卡ID（GuildWarLevel.id）\
	optional bool result = 3;//攻打结果\
	repeated Rewards rewards = 4;//奖励\
	required int32 passTime = 5;//通关时间\
	required OverSoloPlayerInfo playerInfo = 6;\
	optional GuildWarLevelInfo guildWarLevelInfo = 7;\
	optional bool firstPass = 8;\
}\
\
//Rogue关卡结算\
message OverRogueLevel\
{\
	optional int32 result = 1;// 战斗结果\
	optional FightPar fightPar = 2;//战斗数据\
}\
\
//Rogue关卡结算返回\
message OverRogueLevel_S2C\
{\
	required int32 uniqueId = 1;//关卡唯一ID\
	required int32 battleId = 2;//关卡ID（RogueLevel.id）\
	optional bool result = 3;//攻打结果\
	optional int32 eventId = 4;//事件id\
	repeated Rewards rewards = 5;//奖励\
	required int32 passTime = 6;//通关时间\
	required OverSoloPlayerInfo playerInfo = 7;\
	optional RogueLevelInfo rogueLevelInfo = 8;\
	optional int32 eventLevelId = 9;//事件关战斗所属事件关id\
}\
"
return protoStr