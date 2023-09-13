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
	repeated ProtoHashInt2Int itemInfo = 3;//消耗的物品集合key=id,value=数量 （不要发钱了）\
}\
//武将升级\
message UpgradeLeader_S2C\
{\
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
	optional LeaderInfo leader=2;//武将信息\
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
	optional LeaderInfo leader=2;//武将信息\
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
	optional LeaderInfo leader=2;//武将信息\
}\
\
//提升武将突破等级\
message UpgradeLeaderBreach\
{\
	required int32 leaderId=1;//武将ID\
}\
\
//提升武将突破等级\
message UpgradeLeaderBreach_S2C\
{\
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
	optional LeaderInfo leader=2;//武将信息\
	optional Rewards rewards=3;//消耗集合\
}\
\
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
	optional LeaderInfo leader=1;//武将信息\
}\
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
// 修改式杖技能槽\
message ChangeStickSkill\
{\
    required int32 skillLeaderId = 1;// 所属斯露德Id\
    required int32 skillPosition = 2;// 技能槽Id\
    required int32 changeSkillId = 3;// 要换成的表id\
}\
\
// 修改式杖技能槽\
message ChangeStickSkill_S2C\
{\
    required int32 skillLeaderId = 1;// 所属斯露德Id\
    required int32 skillPosition = 2;// 技能槽ID\
    required int32 changeSkillId = 3;// 要换成的 表id\
}\
\
// 重置式杖技能槽\
message ResetStickSkill\
{\
    required int32 skillLeaderId = 1;// 所属斯露德Id\
}\
\
// 重置式杖技能槽\
message ResetStickSkill_S2C\
{\
    required int32 skillLeaderId = 1;// 所属斯露德Id\
}\
\
// 合成的武将协议\
message CompositionLeader\
{\
	required int32  leaderId=1;// 合成武将\
}\
\
message CompositionLeader_S2C\
{\
}\
\
\
"
return protoStr