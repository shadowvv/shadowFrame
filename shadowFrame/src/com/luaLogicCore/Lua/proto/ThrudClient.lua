local protoStr = { }
protoStr.str = "package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
enum ClientCmdEnum\
{\
	UdpBattleLoadingEnd = 100000;\
	UdpBattleLoadingEndBroadCast = 100001;\
	UdpBattleEnd = 100002;\
	UdpBattleEndBroadCast = 100003;\
	UdpBattleCommand = 100004;\
	UdpBattleCommandBroadCast = 100005;\
	\
	DebugCommandC2S = 100006;\
	DebugCommandS2C = 100007;\
	DebugSaveC2S = 100008;\
	DebugSaveS2C = 100009;\
	\
	//=========================上面都是老旧命令\
	\
	AddPlayer_C2S = 110001;\
	PlayerLogin_S2C = 110002;\
	LoginPlayer_S2C_BroadCast = 110003;\
	TransformSync_Both = 110004;\
	\
	AnimatorSpeedSync_Both = 110005;\
	AnimatorStateSync_Both = 110006;\
	AnimatorParamSync_Both = 110007;\
	\
	TransformSyncV2_Both = 110008;\
	NetAnimatorFloatCurveSync_Both = 110009;\
	\
	RemovePlayer_S2C = 110010;\
	\
	ClientBulletHitEntity = 110011;\
	\
	ClientCreateBullet = 110012;\
	ClientDestroyBullet = 110013;\
	\
	CastSkill = 110014;//释放技能\
	CastSkillChargeBegin = 110015;//释放技能-蓄力开始\
	CastSkillChargeEnd = 110016;//释放技能-蓄力结束\
	CastSkillChargeStep = 110017;//释放技能-阶段\
	CastSkillEnd = 110018;//释放技能/蓄力 结束\
\
	BuffChange = 110200;//buff改变\
	BuffRemove = 110201;//buff移除\
	BuffChangeClient = 110202;//前端buff添加\
	\
	AttackStateSwitch = 110100;//状态切换\
	\
	MonsterWave_C2S = 120001;\
    MonsterWave_S2C = 120002;\
    AddMonster = 120003;\
	RemoveDeadEntity = 120004; //实体死亡时删除\
	RemoveAliveEntity = 120005; //实体非死亡时删除\
	EntityHpChange = 120006;\
	ServerCreateBullet = 120007;\
	ServerDestroyBullet = 120008;\
	MonsterChangeTarget = 120009; //怪物切换目标\
	MonsterChangeBehav = 120010; //怪物切换行为\
	MonsterCastSkill = 120011; //怪物使用技能\
	MonsterSpeakBroadcast = 120012; //怪物喊话\
	BattleLevelStageChange = 120013; //战斗关卡状态变化\
	MonsterFindPathList = 120014;   //更新怪物自动寻路路点\
	UpdateMonsterTrans = 120015; //同步怪物transform\
	EatEnergyBall = 120016;\
	ChangeFightLeader = 120017;//换人\
	AddMonsterClient = 120018; //前端通知后端添加怪物\
	ChangeFightGirlV2 = 120019;//换人V2\
	\
	ClientPauseGame = 130001; // 客户端暂停\
	ClientResumeGame = 130002; // 客户端从暂停中恢复\
	\
	TestLuaNetwork = 999999;\
}\
\
//==================================连接层协议==========================\
message UDPPacket\
{\
    optional int32 uid = 1;\
	optional int32 type = 2; // 1 为消息包 2 为ack包\
	optional bytes data = 3;\
}\
\
message UDPDataPacket\
{\
	optional int32 index = 1; // 序号\
	optional bytes data = 2; // 实际消息 包含消息号和消息体\
}\
\
message UDPAckPacket\
{\
	optional int32 index = 1; // 序号\
}\
//=====================================连接层协议结束============================\
\
//====================upd战斗用协议==============================\
message Command_UdpBattleLoadingEnd\
{\
    optional int32 test = 1; \
}\
\
message Command_UdpBattleLoadingEndBroadCast\
{\
    optional int32 test = 1; \
}\
\
message Command_UdpBattleEnd\
{\
    optional int32 winPlayer = 1; \
}\
\
message Command_UdpBattleEndBroadCast\
{\
    optional int32 winPlayer = 1; \
}\
\
message PvpServerCollectionCommand\
{\
	repeated CommandBase commandList = 1; // 命令列表\
	//required int32 seq = 2;\
}\
//====================upd战斗用协议 end==============================\
\
// ==================战斗用命令协议 ==========================\
message CommandBase\
{\
	optional int32 type = 1;// 逻辑命令类型 1 开始摇杆 2 持续摇杆 3 结束摇杆\
	//optional int32 seq = 2;// 时间序号\
	//optional int32 idx = 3;// 包序号\
	optional bytes data = 4;// 数据\
}\
\
//message MoveCommand\
//{\
//	optional int32 srcTeamId = 1;\
//	optional Vector3 pos = 2;\
//}\
\
//message AttackCommand\
//{\
//	optional int32 srcTeamId = 1;\
//	optional int32 desTeamId = 2;\
//}\
\
//message SkillCommand\
//{\
//	optional int32 srcTeamId = 1;\
//	optional Vector3 skillDirEuler = 2;\
//	repeated int32 targetList = 3;\
//}\
\
message BeginJoyStick\
{\
    optional int32 srcUnit = 1;\
}\
\
message DragJoyStick\
{\
    optional int32 srcUnit = 1;\
	optional NetVector2 pos = 2;\
}\
\
message EndJoyStick\
{\
    optional int32 srcUnit = 1;\
}\
\
message CastMissle\
{\
    optional int32 srcUnit = 1;\
    optional int32 targetUnit = 2;\
}\
\
message NetVector3\
{\
	optional float x = 1;\
	optional float y = 2;\
	optional float z = 3;\
}\
\
message NetVector2\
{\
	optional float x = 1;\
	optional float y = 2;\
}\
\
message NetQuaternion\
{\
	optional float x = 1;\
	optional float y = 2;\
	optional float z = 3;\
	optional float w = 4;\
}\
// ==================战斗用命令协议 end==========================\
\
//==================debugTcpCommand================================\
\
message DebugC2SCommand\
{\
    //optional string command = 1;\
    optional string command = 2;\
    optional bytes data = 3;\
}\
\
message DebugS2CCommand\
{\
    //optional string command = 1;\
    optional string info = 2;\
    optional bytes data = 3;\
}\
\
message DebugC2SSaveCommand\
{\
    optional string path = 1;\
    optional bytes data = 2;\
}\
\
message DebugS2CSaveCommand\
{\
    optional string path = 1;\
    optional bytes data = 2;\
}\
//==================debugTcpCommand 结束================================\
\
//==================新战斗命令 开始============================\
\
message Command_AddPlayer_C2S\
{\
	 optional int32 loginPlayerId = 1;\
	 optional bool useSelfMirror = 2;\
	 repeated EnterBattleFlyGirlData girlList = 3;\
}\
\
message Command_ChangeFightLeader_C2S\
{\
	optional int32 leaderId = 1;//斯露德ID\
}\
message Command_ChangeFightLeader_S2C\
{\
	optional int32 playerId = 1;//玩家ID\
	optional int32 netId = 2;//netid\
	optional int32 leaderId = 3;//斯露德ID\
}\
\
message Command_ChangeFlyGirlV2_C2S\
{\
	optional int32 goOffNetId = 1;\
	optional int32 goOnNetId = 2;\
	optional bool castJizou = 3;\
}\
\
message Command_ChangeFlyGirlV2_S2C\
{\
	optional int32 goOffNetId = 1;\
	optional int32 goOnNetId = 2;\
	optional bool castJizou = 3;\
}\
\
\
message OneProperty\
{\
	optional int32 propertyId = 1;\
	optional float propertyValue = 2;\
}\
\
message EnterBattleFlyGirlData\
{\
	optional int32 girlTableId = 1;\
	repeated OneProperty propertyList = 2;\
	optional int32 level = 3;\
	optional int32 funnelId = 4;//武装id\
	optional int32 weaponId = 5;//武装id\
}\
\
message CommonProperty\
{\
	optional int32 Camp = 1;\
	optional float MaxHp = 2;\
	optional float NowHp = 3;\
	optional float Atk = 4;\
	optional float Def = 5;\
	optional float En = 6;\
	optional float Crit = 7;\
	optional int32 Level = 8;\
	optional int32 TotalStage = 9;\
	optional int32 NowStage = 10;\
	repeated int32 StageTotalHps = 11;\
	repeated int32 StageNowHps = 12;\
}\
\
message PlayerData\
{\
	optional int32 playerId = 1;\
	optional NetVector3 pos = 2;\
	optional NetQuaternion qua = 3;\
	repeated LeaderData leaders = 4;\
}\
\
message LeaderData\
{\
	optional int32 instanceId = 1;\
	optional int32 netId = 2;\
	optional int32 funnelId = 3;//武装ID\
	optional CommonProperty property = 4;\
	optional int32 weaponId = 5;//武装id\
}\
\
message MonsterData\
{\
	optional int32 instanceId = 1;\
	optional int32 netId = 2;\
	optional CommonProperty property = 3;\
	optional NetVector3 pos = 4;\
	optional NetQuaternion qua = 5;\
	optional int32 targetId = 6;\
	optional int32 behavId = 7;\
	optional int32 belongEntityId = 8;\
	repeated int32 subEntityIds = 9;\
	optional int32 belongPartId = 10;\
	optional int32 weakenId = 11;\
}\
\
message ServerWorldData_S2C\
{\
	repeated PlayerData existPlayerList = 1;\
	repeated MonsterData existMonsterList = 2;\
}\
\
message ServerBattleLevelData\
{\
	optional int32 levelId = 1;\
	optional int32 levelStage = 2;\
	optional int32 totalLevelWave = 3;\
	optional int32 nowLevelWave = 4;\
	optional int32 stageIntParam = 5;\
}\
\
message Command_PlayerLogin_S2C\
{\
	optional ServerBattleLevelData levelData = 1;\
	optional ServerWorldData_S2C worldData = 2;\
}\
\
message Command_LoginPlayer_S2C_Broadcast\
{\
	optional PlayerData playerData = 1;\
}\
\
message Command_RemovePlayer_S2C\
{\
	optional PlayerData playerData = 1;\
}\
\
message Command_Transform_Sync\
{\
	optional int32 netId = 1;\
	optional NetVector3 pos = 2;\
	optional NetQuaternion qua = 3;\
}\
\
message Command_AnimatorParams\
{\
	optional int32 netId = 1;\
	optional bytes data = 2;\
}\
\
message Command_AnimatorState\
{\
	optional int32 netId = 1;\
	optional int32 stateHash = 2;\
	optional float normalizedTime = 3;\
	optional int32 layerId = 4;\
	optional float weight = 5;\
	optional bytes paramData = 6;\
}\
\
message Command_AnimatorSpeed\
{\
	optional int32 netId = 1;\
	optional float speed = 2;\
}\
\
message Command_TransformSyncV2\
{\
	optional int32 netId = 1;\
	optional int32 state = 2;\
	optional float timeStamp = 3;\
	optional NetVector3 pos = 4;\
	optional NetQuaternion qua = 5;\
}\
\
message Command_NetAnimatorFloatCurveSync\
{\
	optional int32 netId = 1;\
	optional int32 state = 2;\
	optional float timeStamp = 3;\
	repeated float paramList = 4;\
}\
message Command_CastSkill\
{\
	optional int32 casterNetId = 1;\
	optional int32 skillId = 2;\
	optional NetVector3 startPos = 3;//初始位置\
	optional NetVector3 dir = 4;//方向\
	optional int32 targetNetId = 5;//目标ID - 有些技能需要目标 \
}\
message Command_CastSkillEnd\
{\
	optional int32 casterNetId = 1;\
	optional int32 skillId = 2;\
	optional NetVector3 startPos = 3;//初始位置\
	optional NetVector3 dir = 4;//方向\
	optional int32 targetNetId = 5;//目标ID - 有些技能需要目标 \
}\
message Command_CastSkillChargeBegin\
{\
	optional int32 casterNetId = 1;\
	optional int32 skillId = 2;\
	optional NetVector3 startPos = 3;//\
	optional NetVector3 dir = 4;\
	optional int32 targetNetId = 5;\
}\
message Command_CastSkillChargeEnd\
{\
	optional int32 casterNetId = 1;\
	optional int32 skillId = 2;\
	optional int32 step = 3;\
	optional NetVector3 startPos = 4;\
	optional NetVector3 dir = 5;\
	optional int32 targetNetId = 6;\
}\
message Command_CastSkillChargeStep\
{\
	optional int32 casterNetId = 1;\
	optional int32 skillId = 2;\
	optional int32 step = 3;\
	optional NetVector3 startPos = 4;\
	optional NetVector3 dir = 5;\
}\
\
//前端buff改变 增加或移除\
message Command_BuffChange_C2S\
{\
	optional int32 desNetID = 1;//目标NetID\
	optional int32 srcNetID = 2;//来源NetID\
	optional int32 buffID = 3;//buffID\
	optional int32 type = 4;//操作类型0移除,增加\
}\
\
//buff改变 增加或移除\
message Command_BuffChange_S2C_Broadcast\
{\
	optional int32 desNetID = 1;//目标NetID\
	optional int32 srcNetID = 2;//来源NetID\
	optional int32 buffID = 3;//buffID\
	optional int32 type = 4;//操作类型0移除,增加\
	optional int32 time = 5;//持续时间\
}\
//buff 移除单一buff\
message Command_BuffRemove_S2C_Broadcast\
{\
	optional int32 desNetID = 1;//目标NetID\
	optional int32 buffGroupID = 2;//buffGroupID\
	optional int32 buffID = 3;//buffID\
}\
\
message Command_AttackStateSwitch\
{\
	optional int32 netId = 1;\
	optional int32 state = 2;\
}\
\
message Command_ClientBulletHitEntity\
{\
	optional int32 hitNetId = 1;\
	optional int32 localPlayerId = 2; // 这块服务器也能知道playerId 不想让服务器再序列化一遍了而已 未来有作弊的服务器check下这个id\
	optional int32 bulletLocalId = 3;\
	optional int32 casterNetId = 4; // 射击者netId\
	optional int32 skillId = 5; // skill id\
	optional int32 skillStep = 6; // 技能阶段\
	optional int32 bulletConfigId = 7; // 子弹表ID\
	optional NetVector3 dir = 8;//命中的方向\
	optional int32 nodeid = 9; // 节点id\
	optional int32 bodyPartId = 10; // 部位id\
}\
\
message Command_ClientCreateBullet\
{\
	optional int32 srcNetId = 1;\
	optional int32 localPlayerId = 2; // 这块服务器也能知道playerId 不想让服务器再序列化一遍了而已 未来有作弊的服务器check下这个id\
	optional int32 localId = 3; // 用于标识本地的子弹entityId 因为子弹没有等待服务器返回就生成了 要有一个映射关系\
	optional NetVector3 initPos = 4;\
	optional NetVector3 dir = 5;\
	optional float speed = 6;\
	optional string prefabPath = 7;\
	optional int32 configId = 8;//子弹配置ID\
}\
\
message Command_ClientDestroyBullet\
{\
	optional int32 localPlayerId = 1; // 这块服务器也能知道playerId 不想让服务器再序列化一遍了而已 未来有作弊的服务器check下这个id\
	optional int32 localId = 2;\
}\
\
message Command_ServerCreateBullet\
{\
	optional int32 srcNetId = 1;\
	optional int32 localPlayerId = 2; // 这块服务器也能知道playerId 不想让服务器再序列化一遍了而已 未来有作弊的服务器check下这个id\
	optional int32 localId = 3; // 用于标识本地的子弹entityId 因为子弹没有等待服务器返回就生成了 要有一个映射关系\
	optional NetVector3 initPos = 4;\
	optional NetVector3 dir = 5;\
	optional float speed = 6;\
	optional string prefabPath = 7;\
	optional int32 configId = 8;//子弹配置ID\
}\
\
message Command_ServerDestroyBullet\
{\
	optional int32 localPlayerId = 1; // 这块服务器也能知道playerId 不想让服务器再序列化一遍了而已 未来有作弊的服务器check下这个id\
	optional int32 localId = 2;\
}\
\
message Command_MonsterWave_C2S\
{\
	optional int32 netId = 1;\
}\
\
message Command_MonsterWave_S2C_Broadcast\
{\
	optional int32 num = 1;\
}\
\
message Command_AddMonster_C2S\
{\
	optional int32 id = 1;\
	optional int32 belongNetId = 2;  //所属的父entity，没有所属时传-1\
	optional int32 belongPartId = 3; //有父entity时生效\
	optional NetVector3 pos = 4;\
	optional NetQuaternion quan = 5;\
}\
\
message Command_AddMonster_S2C_Broadcast\
{\
	repeated MonsterData monsters = 1;\
}\
\
message Command_EntityHpChange_S2C_Broadcast\
{\
	optional int32 netId = 1;\
	optional float changeHp = 2;//改变的血量\
	optional float nowHp = 3;//现在的血量\
	optional float realChangeHp = 4;//本来应该改变的血量\
	optional int32 reasonType = 5;//来源 子弹,技能,buff,碰撞,爆炸 等\
	optional int32 elementType = 6;//元素类型\
	optional int32 cirtical = 7;//是否爆击0不暴击,1爆击\
	optional int32 specialType = 8;//0没有,无敌,免死,等\
	optional NetVector3 dir = 9;//来源方向\
	optional bool isCritical = 10; // 是否暴击\
	optional int32 reactionType = 11; //相变类型\
	optional int32 nowStage = 12; //当前阶段\
	optional int32 nowStageHp = 13; //当前阶段血量\
}\
\
//移除已死亡实体\
message Command_RemoveDeadEntity_S2C_Broadcast\
{\
	optional int32 netId = 1;\
}\
\
//移除非死亡实体\
message Command_RemoveAliveEntity_S2C_Broadcast\
{\
	optional int32 netId = 1;\
}\
\
message Command_TestLuaNetwork\
{\
	optional string content = 1;\
}\
\
message Command_MonsterChangeTarget_S2C_Broadcast\
{\
	optional int32 monsterNetId = 1;\
	optional int32 targetNetId = 2;\
}\
\
//怪物切换行为，暂用\
message Command_MonsterChangeBehav_S2C_Broadcast\
{\
	optional int32 monsterNetId = 1;\
	optional int32 behavId = 2;\
	optional float behavTime = 3;\
	optional int32 behavIntParam = 4;\
	optional float behavFloatParam = 5;\
	optional CommonProperty property = 6;\
}\
\
//怪物使用技能\
message Command_MonsterCastSkill_S2C_Broadcast\
{\
	optional int32 monsterNetId = 1;\
	optional int32 skillId = 2;\
	optional NetVector3 startPos = 3;\
	optional NetVector3 dir = 4;\
	optional int32 targetNetId = 5;\
	optional int32 aiEventId = 6;\
}\
\
//怪物喊话\
message Command_MonsterSpeak_S2C_Broadcast\
{\
	optional int32 monsterNetId = 1;\
	optional string str = 2;\
}\
\
//更新怪物寻路结果列表\
message Command_MonsterFindPathList_C2S\
{\
	optional int32 monsterNetId = 1;\
	repeated NetVector3 pathList = 2; \
}\
\
//战斗关卡状态变化\
message Command_BattleLevelStageChange_S2C_Broadcast\
{\
	optional int32 stageId = 1;\
	optional int32 intParam = 2;  //不同阶段下可能用到的int参数，结束阶段时，暂时表示战斗结果，0为失败，1为胜利\
}\
\
//更新怪物transform\
message Command_UpdateMonsterTransform_C2S\
{\
	optional int32 monsterNetId = 1;\
	optional NetVector3 pos = 2; \
	optional NetQuaternion qua = 3; \
}\
\
\
//更新能量球？\
message Command_EatEnergyBall\
{\
	optional int32 configId = 1;\
	optional int32 eaterNetId = 2;\
}\
\
message Command_ClientPauseGame\
{\
	optional int32 noUse = 1;\
}\
\
message Command_ClientResumeGame\
{\
	optional int32 noUse = 1;\
}\
\
//==================新战斗命令 结束============================\
"
return protoStr