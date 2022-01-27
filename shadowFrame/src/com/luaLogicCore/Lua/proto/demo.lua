local protoStr = { }
protoStr.str = "package ZMessage;\
 \
option optimize_for = SPEED;\
\
message PBString\
{\
   required string str_value = 1;\
}\
\
message PBBytes\
{\
   required bytes byte_value = 1;\
}\
\
message PBInt\
{  \
   required int32 int_value = 1;\
}\
\
message PBUInt\
{ \
   required uint32 uint_value = 1;\
}\
\
message PBLong\
{\
   required int64 long_value = 1;\
}\
\
message PBULong\
{\
   required uint64 ulong_value = 1;\
}\
\
message PBFixed32\
{\
   required fixed32 int_value = 1; \
}\
\
message PBFixed64\
{\
   required fixed64 long_value = 1;\
}\
\
message PBFloat\
{\
   required float float_value = 1;\
}\
\
message PBVector3\
{\
   required float x = 1;\
   required float y = 2;\
   required float z = 3;\
}\
\
message C2SLogin\
{\
    required bytes name = 1;\
    required bytes pwd  = 2; \
}\
\
message LoginRoleNode\
{\
    required uint64 role_id = 1;\
    required bytes  role_name = 2;\
    required int32  level  = 3;\
    required int32  profession = 4;\
}\
\
message S2CLoginResp\
{\
    required int32 result = 1;\
    repeated LoginRoleNode roles = 2;\
}\
\
message CreateRole\
{  \
    required int32 profession = 1;\
    required bytes role_name  = 2;\
}\
\
message S2CCreateRoleResp\
{\
    required int32 result = 1;\
    optional LoginRoleNode roles = 2; \
}\
\
message S2CShowText\
{\
   required int32 text_id = 1;\
   repeated bytes t_data = 2;\
}\
\
message DBAttribute\
{ \
    required int32 profession = 1;\
    required uint64 exp = 2;\
    required int32 level = 3;\
    required int32 max_gun_count = 4;\
    required int32 max_grenade_count = 5;\
    required int64 money = 6;\
    required int32 military_ranks = 7;\
    required bytes role_name = 8;\
    required int32 whole_gun_size = 9;\
    required int32 gun_part_size = 10;\
    required int32 cloth_size = 11;\
    required int32 other_size = 12;\
    required int64 rmb = 13;\
    required int64 powercoin = 14;   \
}\
\
message DBItem\
{\
    required uint64 item_id = 1;\
    required uint32 die_time = 2;\
    required uint32 item_index = 3; \
    required int32  slot = 4;\
    required int32  quality = 5;\
    required int32  durability = 6;\
    required bytes  attribute = 7;  \
    required bytes  memo = 8;    \
}\
\
message S2CInventory\
{\
   repeated DBItem items = 1;\
}\
\
message S2CSetItem\
{\
   required uint64 item_id = 1;\
   required int32  slot = 2;\
   required bool   client_move = 3;\
}\
\
message S2CDeleteItem\
{\
   required uint64 item_id = 1;\
   required bool   is_destroy = 2;\
   required bool   is_hide_msg = 3;\
}\
\
message C2SUseItem\
{\
   required uint64 item_id = 1;\
   required uint64 extra = 2;\
}\
\
\
message C2SEquipOffItem\
{\
   required uint64 item_id = 1;\
   required int32  slot   = 2;\
}\
\
message S2CUpdateItemDurability\
{\
   required uint64 item_id = 1;\
   required int32 durability = 2;\
}\
\
\
message S2CUpdateLevelExp\
{\
   required uint64 exp = 1;\
   required int32 level = 2; \
}\
\
message C2SGMCommand\
{\
    required bytes cmd = 1;\
    repeated bytes paras = 2;\
}\
\
message C2SGunCraft\
{\
    repeated uint64 items = 1;\
}\
\
message C2SGunSplit\
{ \
   required uint64 gun = 1;\
   required int32  keep_index = 2;\
   repeated uint64 keep_items = 3;\
}\
\
message C2SFinishQuest\
{\
   required int32 quest_index = 1;\
   optional int32 item_index = 2;\
}\
\
message DBQuestConditionData\
{\
   repeated bytes success = 1;\
   repeated bytes failed = 2;   \
}\
\
message DBQuestData\
{\
   required DBQuestConditionData data = 1;  \
   required int32 time_up = 2;\
   required int32 index = 3;  \
}\
\
message ClientQuestData\
{\
   required DBQuestData data = 1;\
   required int32       state = 2;   \
}\
\
message DBQuestMgrData\
{ \
    repeated int32 consign = 1;\
    repeated bytes base_quest = 2;   \
}\
\
message S2CQuestStateResp\
{  \
    required int32 index = 1;\
    required int32 state = 2;\
}\
\
message S2CQuestConditionDataChanged\
{\
   required int32 index = 1;\
   required DBQuestConditionData data = 2;\
}\
\
message DBAchiData\
{\
   repeated int32 achi_id = 1;\
}\
\
message DBCollectData\
{\
   repeated bytes collect_data = 1;\
   repeated int32 collect_id = 2;\
}\
\
message Enter\
{\
   required uint64 role_id  = 1;\
   required DBAttribute role_attribute = 2;\
   required S2CInventory inventory = 3;\
   required DBQuestMgrData quest = 4;\
   required DBAchiData achi = 5;\
}\
\
message C2SCreateScene\
{\
   required int32 scene_id = 1;\
   required int32 round_count = 2;\
   required int32 max_player = 3;\
   required bytes scene_name = 4;\
   required bytes password = 5;\
}\
\
message C2SSceneList\
{\
   required int32 page  = 1;\
   required int32 percount = 2;\
}\
\
message S2CSceneListResp\
{\
    message Node\
    {\
   	required uint64 scene_server_id = 1;\
        required bytes scene_name = 2;\
        required bool  password = 3;\
        required int32 state  = 4;\
        required int32 now  = 5;\
        required int32 full = 6;\
	required int32 scene_res_id = 7;\
        required int32 scene_type = 8;\
        required int32 round_count = 9;\
    }\
    repeated Node node = 1;\
    optional int32 current_page = 2;\
    optional int32 total_page = 3;    \
}\
\
message S2CPlayerRoomSceneData\
{\
    required uint64 role_id = 1;\
    required int32  level  = 2;\
    required bytes  name   = 3;\
    required bool   host   = 4;\
    required bool   ready  = 5;\
    required uint32  team   = 6;\
}\
\
message S2CJoinGameSuccess\
{\
   repeated float speed = 1;\
   required uint64 scene_id = 2;\
}\
\
message S2CGunBulletChange\
{\
   required int32 loaded_bullet = 1;\
   required int32 remain_bullet = 2;\
   optional int32 item_index = 3;\
   required int32 perfect = 4;\
   optional bool  change_bullet = 5[default = false];\
}\
\
message S2CGrenadeCountChange\
{\
   required int32 now_count = 1;\
   required int32 total_count = 2;\
   required int32 item_index = 3;\
}\
\
message S2CGameInventory\
{\
    required S2CInventory equip = 1;\
    optional S2CGunBulletChange maingun = 2;\
    optional S2CGunBulletChange handgun = 3;\
    optional S2CGrenadeCountChange grenade = 4;\
}\
\
message GameUnitData\
{\
    required PBVector3 pos = 1;\
    required uint32    uid = 2;\
    required int32    team = 3;\
    required int32    hp = 4;\
    required int32    max_hp = 5;\
    required int32    data = 6;\
}\
\
message GameBombUnitData\
{\
   required GameUnitData unit_data = 1;\
   required uint32 owner_uid = 2;\
   required PBVector3 building_position = 3;\
   required int32 building_data = 4;   \
}\
\
message GameDropBulletData\
{\
   required GameUnitData unit_data = 1;\
   required float percent = 2;   \
}\
\
message S2CSceneConfig\
{\
   message GunUI\
   {\
      required PBVector3 position = 1;\
      required float     distance = 2;\
	  required int32     team = 3;\
   }\
   message LiveLine\
   {\
      required float top = 1;\
      required float btm = 2;\
   }\
   repeated GunUI gun_ui = 1;\
   required LiveLine live_line = 2;   \
}\
\
message S2CObjectsGameSceneData\
{\
    repeated GameUnitData stove = 1;\
    repeated GameUnitData hp_point = 2;\
    repeated GameBombUnitData game_bomb = 3;\
    required S2CSceneConfig config = 4;\
}\
\
message S2CPlayerGameSceneData\
{\
   required uint64 role_id = 1;\
   required bytes  name    = 2;\
   required uint32 team    = 3;\
   required S2CGameInventory equip = 4;\
   required PBVector3 born_position = 5;\
   required int32 armor = 6;\
   required int32 max_armor = 7;\
   required int32 hp   = 8;\
   required int32 max_hp = 9;\
   required uint32 role_uid = 10;\
   required int32  profession = 11;\
}\
\
message C2CDownloadProgress\
{\
   required uint64 role_id = 1;\
   required float progress = 2;\
}\
\
message S2CDownLoadData\
{\
   required int32 profession = 1;\
   required S2CGameInventory equip = 2;\
   required int32  scene_id = 3;\
   required bytes  name    = 4;\
   required uint64 role_id = 5;\
   required uint32 team    = 6;   \
}\
\
message S2CRoomSceneDownLoadData\
{\
   repeated S2CDownLoadData down = 1;\
}\
\
message S2CRoomInfomation\
{\
   required uint64 scene_server_id = 1;\
   required bytes scene_name = 2;\
   required bytes password = 3;\
   required int32 state  = 4;\
   required int32 scene_res_id = 5;\
   required int32 scene_type = 6;\
   required int32 channel = 7;\
   required int32 round_count = 8;\
}\
\
message S2CGameTabUIData\
{\
   message One\
   {\
      required bytes name = 1;\
	  required bytes corps = 2;\
	  required int32 kill = 3;\
	  required int32 dead = 4;\
	  required int32 ping = 5;\
	  required int32 level = 6;\
	  required int32 vip = 7;\
   }\
   repeated One team0 = 1;\
   repeated One team1 = 2;\
}\
\
message S2CSelfJoinRoomScene\
{\
    repeated S2CPlayerRoomSceneData player = 1;\
}\
\
message S2CRoomSceneTeamChange\
{\
    required S2CPlayerRoomSceneData self_data = 1;\
    required S2CSelfJoinRoomScene player_list = 2;\
}\
\
message C2SRoomSceneChangeInfomation\
{\
   required int32 scene_id = 1;\
   required int32 round_count = 2;\
   required bytes password = 3;   \
}\
\
message S2CRoomScenePlayerReady\
{\
    required uint64 role_id = 1;\
    required bool   ready   = 2;\
}\
\
message C2SGameBroadCast\
{\
  enum Type\
  {\
	ALLTEAM = 1;\
	SELFTEAM = 2;\
	OTHERTEAM = 3;	\
   }\
   required int32 message_id = 1;\
   required Type send_type = 2;\
   required bytes message_data = 3;    \
}\
\
\
message NewMove\
{\
    enum LegAxis\
    {\
	LEFT = 0;\
	RIGHT = 1;\
	UP = 2;\
	DOWN = 3;\
	LEFT_UP = 4;\
	LEFT_DOWN = 5;\
	RIGHT_UP = 6;\
	RIGHT_DOWN = 7;\
	MAX = 8;\
    }\
    required PBVector3 position = 1;\
    required PBVector3 face_direction = 2;\
    required PBVector3 move_direction = 3;\
    required LegAxis leg_axis = 4;\
    optional uint32   uid = 5;    \
}\
\
message NewStop\
{\
    required PBVector3 position = 1;\
    optional uint32   uid = 2;\
}\
\
message NewDuck\
{\
    required bool   duck = 1;\
    optional uint32   uid = 2;\
}\
\
message NewJump\
{\
  optional uint32   uid = 1;\
  required bool jump = 2;\
}\
\
message NewRush\
{\
  optional uint32   uid = 1;\
  required bool rush = 2;\
}\
\
message S2CDamageData\
{\
   required uint32 target_uid = 1;\
   optional int32  armor  = 2[default = 0];\
   optional int32  hp     = 3[default = 0];       \
}\
\
message GunAttackInfo\
{\
   required PBVector3 start_position = 1;\
   required PBVector3 direction = 2;\
   optional uint32    uid = 3; \
}\
\
\
message C2SGunAttack\
{\
   required uint32 target_uid = 1;\
   required bool  head = 2;\
}\
\
message C2SGunAttackEx\
{\
    repeated uint32 target_uid = 1;\
    required PBVector3 centre = 2;\
}\
\
message S2CDead\
{\
   required uint32   uid = 1;\
   required bool   head    = 2;\
     \
}\
\
message S2CGameObjectTeam\
{\
   required uint32 uid = 1;\
   required int32 team = 2;\
}\
\
message S2CAttacked\
{\
    required uint32 attack_uid = 1;\
    repeated uint32 attacked_uid = 2;\
}\
\
message S2CGameChangeEquipment\
{\
   required uint32   uid = 1;\
   required int32  new_equip_slot = 2;    \
}\
\
message S2CSummaryTeamPlayerResult\
{\
   required bytes role_name = 1;\
   required int32 level     = 2;\
   required int32 kill = 3;\
   required int32 dead = 4;\
   required int32 base_exp = 5;\
   repeated int32 dropgroup = 6;  \
}\
\
message S2CSummaryMyResult\
{\
   required int32 exp = 1;\
   required int32 kill = 2;\
   required int32 dead = 3;\
   required int32 money = 4;\
   required int32 shoot_head = 5;\
   repeated int32 achi = 6;   \
}\
\
message S2CTeamMVP\
{\
   required uint64 role_id = 1;\
   required bytes  role_name = 2;\
}\
\
message S2CSummaryTeamResult\
{\
   repeated S2CSummaryTeamPlayerResult win = 1;\
   repeated S2CSummaryTeamPlayerResult lose = 2;\
   required int32 win_team = 3; \
   required S2CTeamMVP mvp = 4; \
}\
\
message S2CSummaryTeamPlayerResultNew\
{\
   required bytes role_name = 1;\
   required int32 level     = 2;\
   required int32 kill = 3;\
   required int32 dead = 4;\
   required int32 exp = 5;\
   required int32 team = 6;\
}\
\
\
message S2CSummaryTeamResultNew\
{\
   required S2CTeamMVP mvp = 1;\
   required int32 win_team = 2;\
   repeated S2CSummaryTeamPlayerResultNew team = 3; \
}\
\
message S2CSummaryMyResultNew\
{ \
   required int32 start_level = 1;\
   required int32 start_exp = 2;\
   required int32 end_level = 3;\
   required int32 end_exp = 4;\
   required int32 base_money = 5;\
   required int32 total_money = 6;\
   repeated int32 achi = 7; \
   required bool  win  = 8; \
}\
\
message S2CSummaryTeamList\
{\
   repeated S2CTeamMVP your_team = 1;\
   repeated S2CTeamMVP other_team = 2;\
}\
\
message S2CSummaryNew\
{\
    required S2CSummaryTeamResultNew team = 1;\
    required S2CSummaryMyResultNew my = 2;\
    required S2CRoomInfomation room_data = 3;\
    required S2CSummaryTeamList role_list = 4;\
}\
\
message S2CSummary\
{\
   required S2CSummaryTeamResult team = 1;   \
   required S2CSummaryMyResult my = 2;   \
}\
\
message S2CSummaryMyLastOneResult\
{\
   optional int32 item_index = 1;\
   optional int32 item_count = 2;\
   optional int32 money = 3;\
   optional int32 exp = 4;\
   required int32 dropgroup = 5;\
   required bool hit = 6;\
}\
\
message S2CSummaryMyLastResult\
{\
   repeated S2CSummaryMyLastOneResult result = 1;\
}\
\
message GrenadeAttackInfo\
{\
   required PBVector3 start_position = 1;\
   required PBVector3 direction = 2;\
   optional uint32    uid = 3; \
}\
\
message C2SGrenadeAttack\
{\
    repeated uint32 target_uid = 1;\
    required PBVector3 centre = 2;\
}\
\
message KnifeAttackInfo\
{\
   optional uint32    uid = 1;\
   required bool      heavy = 2;\
}\
\
message C2SKnifeAttack\
{\
   required bool      heavy = 1;\
   repeated uint32 target_uid = 2;\
   repeated bool cut_head = 3;   \
}\
\
message C2SSetupGameBomb\
{\
   required uint32 bomb_uid = 1;\
   required PBVector3 setup_position = 2;\
}\
\
message S2CPickupGameBombResp\
{\
   required uint32 bomb_uid = 1;\
   required uint32 owner_uid = 2;\
}\
\
message S2CGameBombDrop\
{\
   required uint32 bomb_uid = 1;\
   required PBVector3 position = 2; \
}\
\
message S2CSetupGameBombResp\
{\
   required uint32 bomb_uid = 1;\
   required PBVector3 building_position = 2;\
   required PBVector3 setup_position = 3;\
}\
\
message S2CDestroyModeLink\
{\
   message OneLink\
   {\
       required PBVector3 a = 1;\
       required PBVector3 b = 2;\
       required uint32 color = 3;\
   }\
\
   repeated OneLink links = 1;\
   required uint32 team0 = 2;\
   required uint32 team1 = 3;\
}\
\
message S2CRoleUIData\
{\
    optional bytes corps_name = 1;\
	optional int32 all_kill_count = 2;\
	optional int32 all_dead_count = 3;\
	optional int32 all_win_count = 4;\
	optional int32 all_lose_count = 5;\
	optional int32 mode_person_kill_count = 6;\
    optional int32 mode_person_dead_count = 7;\
    optional int32 mode_person_win_count = 8;\
    optional int32 mode_person_lose_count = 9;\
}\
\
////////////////////////////////////////////////////////////////////////////////////////////////\
\
message TopMessage {\
	required int32		id		= 1;	// Unique ID number for message\
	optional bytes		body	= 2;	// binary format msg\
}\
\
message S2CGivenID\
{\
	required int32		id		= 1;\
}\
\
message ChatMessage\
{\
	optional int32			channel	= 1 ; // chat channel\
	required bytes		content = 2;	// utf8 content\
	required bytes		speakerName = 3;	// utf8 content\
	optional bytes		targetName = 4;	// utf8 content\
	optional uint64		speakerRoleId = 5;// uint64\
}\
\
message FirstTest\
{\
	required string		name		= 1;\
}\
\
message KeyMapping\
{\
	required	int32	ScanCode	=	1;\
	required	int32	SysKey		=	2;\
	required	string	MapName		=	3;\
}\
\
message PersonalKeyControl\
{\
	required	KeyMapping	keymap	=	1;\
}\
\
message S2C_LoginSuccess\
{\
	required	uint32	session	=	1;\
	optional	uint32	serverTime	=	2;\
}\
\
message CreateFirstPlayer\
{\
	required	float	X	=	1;\
	required	float	Y	=	2;\
	required	float	Z	=	3;\
}\
\
message CreateThirdPlayer\
{\
	required	uint32	session	=	1;\
	required	float	X	=	2;\
	required	float	Y	=	3;\
	required	float	Z	=	4;\
}\
\
message Move\
{\
	required	uint32	session	=	1;\
	required	float	X	=	2;\
	required	float	Y	=	3;\
	required	float	Z	=	4;\
	required	float	EulerAngleX	=	5;\
	required	uint32	timeStampSend	=	6;\
	required	float	deltaTime	=	7;\
}\
\
message Input\
{\
	required	uint32	session	=	1;\
	required	uint32	buttonMask	=	2;\
	required	uint32	timeStampSend	=	3;\
}\
\
message Damage\
{\
	required	uint32	session	=	1;\
	required	uint32	receiverSession	=	2;\
	required	int32	HP	=	3;\
	required	int32	armor	=	4;\
	required	uint32	timeStampSend	=	5;\
}\
\
message Relive\
{\
	required	uint32	session	=	1;\
	required	float	X	=	2;\
	required	float	Y	=	3;\
	required	float	Z	=	4;\
	required	int32	HP	=	5;\
	required	int32	armor	=	6;\
	required	uint32	count	=	7;\
	required	uint32	timeStampSend	=	8;\
}\
\
message	RelationListNode\
{  \
	required	uint64	RelationRoleId		=	1;\
	required	bytes	RelationRoleName	=	2;\
	required	uint32	RelationType		=	3;\
	optional	uint32	RelationRoleLevel	=	4;\
	optional	uint32	RelationRoleOnline	=	5;	\
}\
\
message	S2CRelationList\
{\
	required	uint32	Count	=	1;\
	repeated	RelationListNode	RelationList =	2;	\
}\
\
message	C2SRelationAction\
{\
	required	uint32	ActionType		=	1;\
	required	uint64	RelationRoleId		=	2;\
	optional	uint32	RelationType 		=	3;\
	optional	bytes	RelationRoleName 	= 	4;	\
}\
\
message	S2CRelationResp\
{\
	required	uint64	RelationRoleId		=	1;\
	required	uint32	RespType		=	2;\
	optional	bytes	RelationRoleName	=	3;\
	optional	uint32	RelationType		=	4;\
	optional	uint32	RelationRoleLevel	=	5;	\
}\
\
message RelationOnlineNode\
{\
	required	uint64	RelationRoleId		=	1;\
	optional	uint32	RelationRoleOnline	=	2;\
}\
\
message S2CRelationOnlineList\
{\
	required	uint32			Count			=	1;\
	repeated	RelationOnlineNode	RelationOnlineList	=	2;\
}\
\
message	CorpsListNode\
{  \
	required	uint64	LeaderId	=	1;\
	required	bytes	CorpsName	=	2;\
	required	uint64	CorpsLevel	=	3;\
	optional	bytes	LeaderName	=	4;\
	optional	bytes	Announcement	=	5;\
	optional	uint64	AnnouncementDate	=	6;\
	optional	uint64	CreateDate	=	7;\
	optional	uint32	CurrentNumber	=	8;\
	optional	uint32	UpperNumber	=	9;	\
}\
\
message	S2CCorpsList\
{\
	required	uint32	Count	=	1;\
	repeated	CorpsListNode	CorpsList =	2;\
	optional	int32	Page		=	3;\
	optional	int32	PageCount	=	4;	\
}\
\
message	C2SCorpsAction\
{\
	required	uint64	LeaderId	=	1;\
	required	uint32	ActionType	=	2;\
	optional	bytes	CorpsName	=	3;\
	optional	bytes	Announcement	=	4;\
	optional	uint32	UpperNumber	=	5;\
}\
\
message	S2CCorpsResp\
{\
	required	uint64	LeaderId	=	1;\
	required	uint32	RespType	=	2;\
	optional	uint64	TransformId	=	3;	\
	optional	bytes	CorpsName	=	4;\
	optional	uint64	CorpsLevel	=	5;\
	optional	bytes	LeaderName	=	6;\
	optional	bytes	Announcement	=	7;\
	optional	uint64	AnnouncementDate	=	8;\
	optional	uint64	CreateDate	=	9;\
	optional	uint32	CurrentNumber	=	10;\
	optional	uint32	UpperNumber	=	11;\
}\
message	CorpsMemberListNode\
{  \
	required	uint64	MemberId	=	1;\
	required	uint64	CorpsBelongId	=	2;\
	optional	bytes	MemberName	=	3;\
	optional	uint32	MemberLevel	=	4;\
	optional	uint32	MemberOnline	=	5;\
	optional	uint64	JoinDate	=	6;	\
}\
\
message	S2CCorpsMemberList\
{\
	required	uint32	Count	=	1;\
	repeated	CorpsMemberListNode	CorpsMembrList	=	2;\
}\
\
message	C2SCorpsMemberAction\
{\
	required	uint64	MemberId	=	1;\
	required	uint32	ActionType	=	2;\
	optional	uint64	CorpsBelongId	= 	3;\
}\
\
message	S2CCorpsMemberResp\
{\
	required	uint64	MemberId	=	1;\
	required	uint32	RespType	=	2;\
	optional	uint64	CorpsBelongId	=	3;\
	optional	uint32	MemberLevel	=	4;\
	optional	bytes	MemberName	=	5;\
	optional	uint64	JoinDate	=	6;\
}\
\
message CorpsMemberOnlineNode\
{\
	required	uint64	MemberId	=	1;\
	optional	uint32	MemberOnline	=	2;\
}\
\
message C2SCorpsMemberOnlineList\
{\
	required	uint32			Count			=	1;\
	repeated	CorpsMemberOnlineNode	CorpsMemberOnlineList	=	2;\
}\
\
message S2CCorpsMemberOnlineList\
{\
	required	uint32			Count			=	1;\
	repeated	CorpsMemberOnlineNode	CorpsMemberOnlineList	=	2;\
}\
\
message C2SSelectPage\
{\
   	required int32 Page  		= 1;\
   	required int32 PageCount	= 2;\
}\
\
message C2SGiftGiving\
{\
	required	uint64	FriendsId	=	1;\
	required	int32	GiftIndex	=	2;\
	optional	bytes	memo		=	3;\
}\
\
message S2CGiftGiving\
{\
	required	uint64	ContributorId		=	1;\
	required	int32	GiftIndex		=	2;\
	required	bytes	ContributorName		=	3;\
	optional	bytes	Memo			=	4;\
}\
\
message RestrictedGiftNode\
{\
	required	int32	GiftIndex		=	1;\
	optional	int32	AlreadyUseNumber	=	2;\
	optional	int32	UpperLimitNumber	=	3;\
}\
\
message S2CRestrictedGiftList\
{\
	required	uint32			Count			=	1;\
	repeated	RestrictedGiftNode	RestrictedGiftList	=	2;\
}\
\
message NewsTipsNode\
{\
	required	uint64	SenderId	=	1;\
	required	int32	NewsType	=	2;\
	required	uint64	Date		=	3;\
	required	uint64	Time		=	4;\
	optional	bytes	Content		=	5;\
}\
\
message S2CNewsTipsList\
{\
	required	uint32		Count		=	1;\
	repeated	NewsTipsNode	NewsTipsList	=	2;\
}\
"
return protoStr