local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
/*---------------未加入队伍--------------*/\
/*创建队伍*/\
message CreateGuildWarTeam{\
  required string guildName = 1;\
}\
message CreateGuildWarTeam_S2C{\
  optional GuildWarTeam guildWarTeam = 1;//团队数据\
}\
\
/*队伍邀请列表请求*/\
message GetGuildWarInviteList{}\
message GetGuildWarInviteList_S2C{\
  repeated GuildWarTeam guildWarTeamList = 1;\
}\
\
/*玩家同意或拒绝队伍方发起的入队邀请*/\
message AgreeJoinGuildWarTeam{\
  required int32 guildId = 1;//同意加入的团队编号\
  required int32 agreeCode = 2;//同意1 拒绝2\
}\
\
message AgreeJoinGuildWarTeam_S2C{\
  optional int32 agreeCode = 1;//同意1 拒绝2\
  optional GuildWarTeam myGuildWarTeam = 2;//我的队伍\
  repeated GuildWarTeam guildWarTeamList = 3;//刷新列表\
}\
\
/*---------------我的队伍--------------*/\
/*我的队伍-获取玩家列表*/\
message GetMyGuildWarTeam{}\
message GetMyGuildWarTeam_S2C{\
  optional bool notTeam = 1;//没有队伍\
  optional GuildWarTeam guildWarTeam = 2;//队伍信息\
}\
/*修改队伍名*/\
message GuildWarTeamRename{\
  required string newName = 1;//新队名\
  required int32 guildId = 2;\
}\
message GuildWarTeamRename_S2C{\
  optional string newName = 1;//新队名\
}\
\
/*任命副队*/\
message AddGuildWarViceCaptain{\
  required int32 guildId = 1;\
  required int32 viceCaptainUid = 2;//被任命副队uid\
}\
message AddGuildWarViceCaptain_S2C{\
  optional GuildWarTeam guildWarTeam = 1;//刷新队伍信息\
}\
\
/*取消副队*/\
message CancelGuildWarViceCaptain{\
  required int32 guildId = 1;\
  required int32 cancelViceCaptainUid = 2;//被取消副队uid\
}\
\
message CancelGuildWarViceCaptain_S2C{\
  optional GuildWarTeam guildWarTeam = 1;//刷新队伍信息\
}\
\
/*将队友踢出队伍*/\
message MoveOutGuildWar{\
  required int32 guildId = 1;\
  required int32 beMoveUid = 2;//被移除的玩家uid\
}\
message MoveOutGuildWar_S2C{\
  optional GuildWarTeam guildWarTeam = 1;//刷新队伍信息\
}\
\
message MoveOutGuildWar_Push{\
  required int32 moveUid = 1;//玩家被提出队伍\
}\
\
/*转让队长*/\
message TransferGuildWarCaptain{\
  required int32 guildId = 1;\
  required int32 newCaptainUid = 2;//新队长uid\
}\
message TransferGuildWarCaptain_S2C{\
  optional GuildWarTeam guildWarTeam = 1;//刷新队伍信息\
}\
\
/*自己退出当前队伍*/\
message LeaveGuildWarTeam{\
  required int32 guildId = 1;\
}\
message LeaveGuildWarTeam_S2C{\
}\
\
/*队伍内-获取入队申请列表*/\
message GetGuildWarTeamApplyList{\
  required int32 guildId = 1;\
}\
message GetGuildWarTeamApplyList_S2C{\
  repeated GuildWarTeamPlayer playerList = 1; //玩家列表\
}\
\
/*队伍内-单个同意或拒绝玩家的入队申请*/\
message GuildWarToAgreeApply{\
  required int32 guildId = 1;//同意或拒绝加入的团队编号\
  required int32 playerUid = 2;//同意或拒绝加入的玩家uid\
  required int32 agreeCode = 3;//同意1 拒绝2\
}\
message GuildWarToAgreeApply_S2C{\
  required int32 agreeCode = 1;//同意1 拒绝2\
  repeated GuildWarTeamPlayer playerList = 2; //刷新玩家列表\
}\
\
/*批量同意或拒绝*/\
message GuildWarToBatchAgreeApply{\
  required int32 guildId = 1;//同意或拒绝加入的团队编号\
  repeated int32 uidList = 2;//同意或拒绝加入的玩家uid列表\
  required int32 agreeCode = 3;//同意1 拒绝2\
}\
message GuildWarToBatchAgreeApply_S2C{\
  required int32 agreeCode = 1;//同意1 拒绝2\
  repeated GuildWarTeamPlayer playerList = 2; //刷新剩余玩家列表\
}\
\
message AgreeAddTeam_Push{\
  required GuildWarTeam guildWarTeam = 1;\
}\
\
/*修改入队权限（是否需要审核）*/\
message ResetGuildWarTeamVerify{\
  required int32 guildId = 1;\
  required int32 isVerify = 2;//入队是否需要审批 0需要 1不需要\
}\
message ResetGuildWarTeamVerify_S2C{\
  required int32 isVerify = 1;//入队是否需要审批 0需要 1不需要\
}\
\
/*---------------进队伍--------------*/\
/*获取未满员的队伍列表*/\
message GetGuildWarTeamList{\
}\
message GetGuildWarTeamList_S2C{\
  repeated GuildWarTeam guildWarTeamList = 1;\
}\
\
/*搜索团队根据编号*/\
message SearchGuildWarTeam{\
  required int32 guildId = 1;\
}\
message SearchGuildWarTeam_S2C{\
  optional GuildWarTeam guildWarTeam = 1;//搜索结果-队伍信息\
}\
\
/*搜索团队玩家*/\
message SearchGuildWarTeamPlayer{\
  required int32 searchUid = 1;\
}\
\
message SearchGuildWarTeamPlayer_S2C{\
  optional GuildWarTeamPlayer guildWarPlayer = 1;//搜索结果-玩家信息\
}\
\
/*申请加入队伍-需要审批*/\
message ApplyJoinGuildWarTeam{\
  required int32 guildId = 1;\
}\
\
message ApplyJoinGuildWarTeam_S2C{\
  required int32 guildId = 1;\
  required bool isApply = 2;//是否申请过标记\
}\
\
/*加入队伍-不需要审批*/\
message AddGuildWarTeam{\
  required int32 guildId = 1;\
  repeated int32 guildIdList = 2;//当前页面的20个队伍id\
}\
\
message AddGuildWarTeam_S2C{\
  required int32 errorCode = 1;//GuildWarPeopleLimit = 320004 满员-->对应返回值是刷新当前页面列表  success ---> 对应 我的队伍数据\
  repeated GuildWarTeam guildWarTeamList = 2;//满员返回 刷新当前列表\
  optional GuildWarTeam guildWarTeam = 3;//未满员返回 我的队伍信息\
}\
\
/*我的申请列表*/\
message GetMyGuildWarApplyList{}\
message GetMyGuildWarApplyList_S2C{\
  repeated GuildWarTeam guildWarTeamList = 1;//申请过的团队列表\
}\
\
/*取消申请加队*/\
message CancelApply{\
  required int32 guildId = 1;//编队号\
}\
message CancelApply_S2C{\
  repeated GuildWarTeam guildWarTeamList = 1;//刷新申请列表\
}\
\
/*---------------找队友--------------*/\
/*可邀请的玩家列表*/\
message GetGuildWarUnInviteList{}\
message GetGuildWarUnInviteList_S2C{\
  repeated GuildWarTeamPlayer playerList = 1;//可邀请的玩家列表\
}\
/*发起邀请*/\
message ToInvitePlayer{\
  required int32 beInviteUid = 2;//被邀请的玩家\
}\
message ToInvitePlayer_S2C{\
  repeated GuildWarTeamPlayer playerList = 2;//可邀请的玩家列表\
}\
/*拒绝任何邀请*/\
message RejectInvite{\
  required int32 rejectInvite = 1;//开关状态 0是不拒绝 1是拒绝所有邀请\
}\
message RejectInvite_S2C{\
  required int32 rejectInvite = 1;//开关状态 0是不拒绝 1是拒绝所有邀请\
}\
\
/*设置共用卡池里的角色*/\
message SetCardPoolLeader{\
  required int32 leaderId = 1;\
}\
message SetCardPoolLeader_S2C{\
  required int32 leaderId = 1;\
  required LeaderInfo leaderInfo = 2;\
}\
/*设置允许队伍合并*/\
message SetMergeTeam{\
  required int32 mergeCode = 1;//0是关 1是开\
  required int32 guildId = 2;\
}\
message SetMergeTeam_S2C{\
  required int32 mergeCode = 1;//0是关 1是开\
}\
\
/*设置接受组队*/\
message SetAcceptTeam{\
  required int32 acceptTeamCode = 1;//0不接受 1接受\
}\
message SetAcceptTeam_S2C{\
  required int32 acceptTeamCode = 1;//0不接受 1接受\
}\
\
\
/*数据结构*/\
message GuildWarTeam{\
  required int32 guildId = 1;//团队编号\
  required string guildName = 2;//团队名\
  optional int32 isVerify = 3;//是否需要审批加入队伍 0需要 1不需要\
  optional int32 totalCapacity = 4;//队伍总战力\
  optional int32 playerNum = 5;//当前队伍人数（邀请列表里使用）\
  optional bool isApply = 6;//是否申请过（进队伍列表时使用）\
  repeated GuildWarTeamPlayer playerList = 7; //玩家列表\
  optional int32 mergeTeam = 8;//允许队伍合并开关 0不允许 1允许\
}\
\
message GuildWarTeamPlayer{\
  required int32 uid = 1;\
  required int32 headId = 2;//头像id\
  required string name = 3;//玩家名字\
  repeated int32 leaderIdList = 5;//4个战力最高的角色配置表id\
  optional int32 leadersCapacityTotal = 6;//4个战力最高的战力总和\
  optional bool online = 7;//当前是否在线\
  optional int32 permissionType = 8;//玩家拥有的权限类型 1队长 2副队长 3普通队员\
  optional int32 lastLoginTime = 9;//最后一次登录时间 当online=FALSE时这个字段才有值\
  optional bool isInvite = 10;//是否已经邀请过\
  required int32 bgImgId = 11;//导师面板背景板\
  optional int32 cardPoolLeaderId = 12;//玩家共用卡池里的角色卡角色id\
  optional int32 isRobot = 13;//是否时机器人\
  repeated int32 usedPlayerList = 14;//今日已使用的玩家uid\
  repeated int32 usedRobotList = 15;//今日已使用的机器人id\
  optional LeaderInfo cardPoolLeaderInfo = 16;//对应cardPoolLeaderId 的对象\
  optional int32 level = 17;//等级\
  required int32 headFrameId = 18;//头像id\
  required int32 gender = 19;//性别 0：女 1：男\
}\
\
\
/* 玩家领取后发送关卡奖励 */\
message SendStageReward {\
  required int32 stageId = 1;//关卡ID\
  required int32 guildId = 2;//队伍ID\
}\
\
message SendStageReward_S2C {\
  optional int32 stageId = 1;//关卡ID\
  optional int32 guildId = 2;//队伍ID\
  optional int32 rewardState = 3;// 奖励状态，枚举GuildWarLevelRewardState\
}\
\
/* 团本主页关卡数据 */\
message GetGuildWarLevelList {\
}\
\
message GetGuildWarLevelList_S2C {\
  required int32 curStatus = 1;//当前状态 0关闭 1组队阶段 2队伍合并阶段 3竞赛阶段 4结算阶段\
  repeated GuildWarLevelInfo guildWarLevelInfoList = 2; // 团本关卡\
  optional int64 curRank = 3; // 当前排名\
  optional int32 choiceLeaderId = 4; // 选择的助战角色\
  optional int32 leaderPoolCount = 5; // 可选择角色池数量\
  optional int32 acceptTeam = 6;//接受组队 默认0不接受 1接受\
  optional GuildWarTeam guildWarTeam = 7;//我的队伍信息\
  optional int32 sessionId = 8;//GuildWarBase赛季id\
  optional int32 rejectInvite = 9;//拒绝所有邀请开关状态 0是不拒绝 1是拒绝所有邀请\
  optional GuildWarApplyInviteRedDot redDot = 10;//团本邀请，申请数据-红点\
}\
\
/*团本申请数据更新推送*/\
message GuildWarApplyRedDot_Push{\
  optional bool newApply = 1;//团本邀请，申请数据-红点\
}\
\
/*邀请数据更新推送*/\
message GuildWarInviteRedDot_Push{\
  optional bool newInvite = 1;//团本邀请，申请数据-红点\
}\
\
/* 进关选择的编队 */\
message ChoiceFormation {\
  required int32 stageId = 1;//关卡ID\
  required LeaderSquadInfo formation = 2;//编队信息\
}\
\
/* 队伍排名 */\
message GetGuildWarRank {\
  required int32 pageNum = 1;//页数\
}\
message GetGuildWarRank_S2C {\
  repeated GuildWarRankInfo guildWarRankInfoList = 1;//排名信息\
  optional GuildWarRankInfo self = 2;//自身信息\
}\
message GuildWarRankInfo {\
  optional int32 guildId = 1;//队伍ID\
  optional string guildName = 2;//队伍名称\
  optional int32 stageId = 3;//关卡ID\
  optional int64 ranking = 4;//排名\
  optional int32 starCount = 5;//星星数\
  optional int32 time = 6;//上榜时间\
}\
\
/* 队内星星数排名 */\
message GetGuildWarRankStar {\
  required int32 guildId = 1;//队伍ID\
}\
message GetGuildWarRankStar_S2C {\
  repeated GuildWarRankStarInfo guildWarRankStarInfoList = 1;\
}\
message GuildWarRankStarInfo {\
  optional int32 playerUid = 1;//UID\
  optional string playerName = 2;//昵称\
  optional int32 playerLevel = 3;//等级\
  optional int32 guildId = 4;//队伍ID\
  optional int32 stageId = 5;//关卡ID\
  optional int64 ranking = 6;//排名\
  optional int32 starCount = 7;//星星数\
  optional int32 headId = 9;//头像\
  optional int32 bgImgId = 10;//导师面板背景板\
  optional int32 headFrameId = 11;//头像id\
  optional int32 gender = 12;//性别 0：女 1：男\
}\
\
/* 借用次数排名 */\
message GetGuildWarRankLeaderUse {\
  required int32 guildId = 1;\
}\
message GetGuildWarRankLeaderUse_S2C {\
  repeated GuildWarRankLeaderUseInfo guildWarRankLeaderUseInfoList = 1;\
}\
message GuildWarRankLeaderUseInfo {\
  optional int32 playerUid = 1;//UID\
  optional string playerName = 2;//昵称\
  optional int32 playerLevel = 3;//等级\
  optional int32 useCount = 4;//借用次数\
  optional int32 headId = 5;//头像\
  optional int32 bgImgId = 6;//导师面板背景板\
  optional int32 headFrameId = 7;//头像id\
  optional int32 gender = 8;//性别 0：女 1：男\
}\
\
/* 玩家对团本队伍排行前三点赞 */\
message AddGuildWarTeamLikesCount {\
  required int32 guildId = 1;\
}\
message AddGuildWarTeamLikesCount_S2C {\
  optional int32 guildId = 1;\
  optional int32 count = 2;\
}\
\
/* 结算阶段排行 - 团本队伍排行前三 */\
message GetGuildWarTeamLikesList {\
}\
message GetGuildWarTeamLikesList_S2C {\
  repeated GuildWarTeamForLikes guildWarTeamLikesList = 1;//点赞队伍列表\
}\
message GuildWarTeamForLikes {\
  optional int32 guildId = 1;//队伍ID\
  optional string guildName = 2;//队伍名称\
  optional int64 ranking = 3;//名次\
  optional int32 starCount = 4;//星星数\
  optional int32 maxStageId = 5;//最远通关关卡ID\
  optional int64 recordTime = 6;//记录时间\
  optional int64 count = 7;//点赞数\
  optional bool liked = 8;//已点赞\
\
}\
// 邮件-竞速结束阶段领取关卡奖励\
message GetRewardMailStage {\
}\
message GetRewardMailStage_S2C {\
    optional int32 rewardState = 1;// 奖励状态，枚举GuildWarLevelRewardState\
}\
// 邮件-竞速结束阶段领取排行榜奖励\
message GetRewardMailRank {\
}\
message GetRewardMailRank_S2C {\
    optional int32 rewardState = 1;// 奖励状态，枚举GuildWarLevelRewardState\
}\
\
/*根据guidId获取玩家列表*/\
message GetGuildWarTeam{\
  required int32 guildId = 1;\
}\
message GetGuildWarTeam_S2C{\
  required GuildWarTeam guildWarTeam = 1;//队伍信息\
}\
\
message GuildWarStatusRedDot_Push {\
    required int32 status = 1;\
}\
"
return protoStr