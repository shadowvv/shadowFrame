xlsNilTable = {}
require "dataTable/CurrencyShop"
require "dataTable/Skill"
require "dataTable/RewardGood"
require "dataTable/BattleLimit"
require "dataTable/EffectEntity"
require "dataTable/CommonRedPointSwitch"
require "dataTable/UIView"
require "dataTable/WeaponTypeDes"
require "dataTable/LeaderBookCore"
require "dataTable/MonsterTypeFall"
require "dataTable/SettingDisplay"
require "dataTable/SettingResolution"
require "dataTable/BattleLeaderVoice"
require "dataTable/LeaderStar"
require "dataTable/WeaponSkin"
require "dataTable/MapShowConfig"
require "dataTable/WeaponSight"
require "dataTable/LeaderBook"
require "dataTable/MainCityAdvertisement"
require "dataTable/InBattleGuideIntro"
require "dataTable/SoundEffect"
require "dataTable/Leader"
require "dataTable/CommonSource"
require "dataTable/InBattleGuide"
require "dataTable/EquipMinorAttributeQuality"
require "dataTable/ElementalReaction"
require "dataTable/Summon"
require "dataTable/Attribute"
require "dataTable/CardBoxDisplay"
require "dataTable/Items"
require "dataTable/LeaderSkill"
require "dataTable/TimelineConfig"
require "dataTable/SkillValue"
require "dataTable/LeaderClothingSeries"
require "dataTable/TypeLevelAttribute"
require "dataTable/AreaColliderCondition"
require "dataTable/DropGroup"
require "dataTable/CardBoxAddGoods"
require "dataTable/SkyBoxParam"
require "dataTable/Equip"
require "dataTable/LeaderClothing"
require "dataTable/CommonCameraBroom"
require "dataTable/LeaderVoice"
require "dataTable/WeatherType"
require "dataTable/WeaponDistance"
require "dataTable/CharacterVoice"
require "dataTable/CommonCondition"
require "dataTable/CardBoxDisplayGoods"
require "dataTable/MailSender"
require "dataTable/GuideFunction"
require "dataTable/MainChapter"
require "dataTable/WeaponWaste"
require "dataTable/FunnelInstance"
require "dataTable/NoiseData"
require "dataTable/LeaderBookSound"
require "dataTable/AchievementModule"
require "dataTable/Word"
require "dataTable/ElementValue"
require "dataTable/StoryDialogBg"
require "dataTable/SignActivity"
require "dataTable/ElementalInfo"
require "dataTable/InBattleDialog"
require "dataTable/ElementCorrect"
require "dataTable/MainStarReward"
require "dataTable/ElementStrength"
require "dataTable/StoryDialogActor"
require "dataTable/CommonCurrencyShow"
require "dataTable/LevelConsume"
require "dataTable/Shop"
require "dataTable/FunctionBGM"
require "dataTable/MonsterSkillValue"
require "dataTable/NewLevelInstance"
require "dataTable/EquipRandom"
require "dataTable/Mail"
require "dataTable/TaskDailyActive"
require "dataTable/WeaponGrow"
require "dataTable/InBattleDialogContent"
require "dataTable/MainLevelBattle"
require "dataTable/GrowAttribute"
require "dataTable/OpenFuction"
require "dataTable/SkillResult"
require "dataTable/CommonBlackWord"
require "dataTable/EquipGrow"
require "dataTable/Task"
require "dataTable/MonsterSeniorAttribute"
require "dataTable/BattlePoint"
require "dataTable/NewLevelStage"
require "dataTable/DropGood"
require "dataTable/LeaderBookWand"
require "dataTable/WeaponHighValue"
require "dataTable/CollectionMonster"
require "dataTable/EquipSuit"
require "dataTable/ItemTypes"
require "dataTable/BattleScene"
require "dataTable/ChangeAttribute"
require "dataTable/MonsterTemplate"
require "dataTable/CommonTime"
require "dataTable/Common"
require "dataTable/GlobalBattleParameter"
require "dataTable/Weapon"
require "dataTable/LeaderTemplate"
require "dataTable/BattlePower"
require "dataTable/CommonUIEffect"
require "dataTable/Loading"
require "dataTable/MonsterBaseAttribute"
require "dataTable/BuffAndActionInstance"
require "dataTable/DropBottom"
require "dataTable/WorldMapRegion"
require "dataTable/BattleButton"
require "dataTable/SignMonth"
require "dataTable/LoseTips"
require "dataTable/EquipBreak"
require "dataTable/BuffGroup"
require "dataTable/ShopGood"
require "dataTable/CommonShake"
require "dataTable/CommonUITransition"
require "dataTable/RepelShoot"
require "dataTable/Setting"
require "dataTable/PlayerGrow"
require "dataTable/WorldMapPointShow"
require "dataTable/SkillTrigger"
require "dataTable/LeaderCamp"
require "dataTable/BattleDefault"
require "dataTable/MainLevel"
require "dataTable/TmpPetInstance"
require "dataTable/BuffAndActionTemplate"
require "dataTable/DropSet"
require "dataTable/StateParameter"
require "dataTable/FixedEquip"
require "dataTable/TalentSkillValue"
require "dataTable/StateSwitchRule"
require "dataTable/ResourceChapter"
require "dataTable/BGM"
require "dataTable/FallObject"
require "dataTable/Consume"
require "dataTable/PlayerInfoCard"
require "dataTable/WeaponBreak"
require "dataTable/LeaderLv"
require "dataTable/MainCityLeader"
require "dataTable/LeaderStarlevel"
require "dataTable/EquipStory"
require "dataTable/FixedReward"
require "dataTable/CollectionClassify"
require "dataTable/CommonWindowTips"
require "dataTable/LotteryInstance"
require "dataTable/PlayerInfoHeadImage"
require "dataTable/WeaponBreakLevel"
require "dataTable/MonsterInstance"
require "dataTable/AreaCollider"
require "dataTable/AreaColliderAction"
require "dataTable/CommonPopupFrame"
require "dataTable/LeaderBookStory"
require "dataTable/LeaderFavor"
require "dataTable/ChangeAttributeType"
require "dataTable/Drop"
print('load table.lua读取所有表格结束')

TableDic = { }
TableDic['AchievementModule'] = AchievementModule_Xls
TableDic['AreaCollider'] = AreaCollider_Xls
TableDic['AreaColliderAction'] = AreaColliderAction_Xls
TableDic['AreaColliderCondition'] = AreaColliderCondition_Xls
TableDic['Attribute'] = Attribute_Xls
TableDic['BattleButton'] = BattleButton_Xls
TableDic['BattleDefault'] = BattleDefault_Xls
TableDic['BattleLeaderVoice'] = BattleLeaderVoice_Xls
TableDic['BattleLimit'] = BattleLimit_Xls
TableDic['BattlePoint'] = BattlePoint_Xls
TableDic['BattlePower'] = BattlePower_Xls
TableDic['BattleScene'] = BattleScene_Xls
TableDic['BGM'] = BGM_Xls
TableDic['BuffAndActionInstance'] = BuffAndActionInstance_Xls
TableDic['BuffAndActionTemplate'] = BuffAndActionTemplate_Xls
TableDic['BuffGroup'] = BuffGroup_Xls
TableDic['CardBoxAddGoods'] = CardBoxAddGoods_Xls
TableDic['CardBoxDisplay'] = CardBoxDisplay_Xls
TableDic['CardBoxDisplayGoods'] = CardBoxDisplayGoods_Xls
TableDic['ChangeAttribute'] = ChangeAttribute_Xls
TableDic['ChangeAttributeType'] = ChangeAttributeType_Xls
TableDic['CharacterVoice'] = CharacterVoice_Xls
TableDic['CollectionClassify'] = CollectionClassify_Xls
TableDic['CollectionMonster'] = CollectionMonster_Xls
TableDic['Common'] = Common_Xls
TableDic['CommonBlackWord'] = CommonBlackWord_Xls
TableDic['CommonCameraBroom'] = CommonCameraBroom_Xls
TableDic['CommonCondition'] = CommonCondition_Xls
TableDic['CommonCurrencyShow'] = CommonCurrencyShow_Xls
TableDic['CommonPopupFrame'] = CommonPopupFrame_Xls
TableDic['CommonRedPointSwitch'] = CommonRedPointSwitch_Xls
TableDic['CommonShake'] = CommonShake_Xls
TableDic['CommonSource'] = CommonSource_Xls
TableDic['CommonTime'] = CommonTime_Xls
TableDic['CommonUIEffect'] = CommonUIEffect_Xls
TableDic['CommonUITransition'] = CommonUITransition_Xls
TableDic['CommonWindowTips'] = CommonWindowTips_Xls
TableDic['Consume'] = Consume_Xls
TableDic['CurrencyShop'] = CurrencyShop_Xls
TableDic['Drop'] = Drop_Xls
TableDic['DropBottom'] = DropBottom_Xls
TableDic['DropGood'] = DropGood_Xls
TableDic['DropGroup'] = DropGroup_Xls
TableDic['DropSet'] = DropSet_Xls
TableDic['EffectEntity'] = EffectEntity_Xls
TableDic['ElementalInfo'] = ElementalInfo_Xls
TableDic['ElementalReaction'] = ElementalReaction_Xls
TableDic['ElementCorrect'] = ElementCorrect_Xls
TableDic['ElementStrength'] = ElementStrength_Xls
TableDic['ElementValue'] = ElementValue_Xls
TableDic['Equip'] = Equip_Xls
TableDic['EquipBreak'] = EquipBreak_Xls
TableDic['EquipGrow'] = EquipGrow_Xls
TableDic['EquipMinorAttributeQuality'] = EquipMinorAttributeQuality_Xls
TableDic['EquipRandom'] = EquipRandom_Xls
TableDic['EquipStory'] = EquipStory_Xls
TableDic['EquipSuit'] = EquipSuit_Xls
TableDic['FallObject'] = FallObject_Xls
TableDic['FixedEquip'] = FixedEquip_Xls
TableDic['FixedReward'] = FixedReward_Xls
TableDic['FunctionBGM'] = FunctionBGM_Xls
TableDic['FunnelInstance'] = FunnelInstance_Xls
TableDic['GlobalBattleParameter'] = GlobalBattleParameter_Xls
TableDic['GrowAttribute'] = GrowAttribute_Xls
TableDic['GuideFunction'] = GuideFunction_Xls
TableDic['InBattleDialog'] = InBattleDialog_Xls
TableDic['InBattleDialogContent'] = InBattleDialogContent_Xls
TableDic['InBattleGuide'] = InBattleGuide_Xls
TableDic['InBattleGuideIntro'] = InBattleGuideIntro_Xls
TableDic['Items'] = Items_Xls
TableDic['ItemTypes'] = ItemTypes_Xls
TableDic['Leader'] = Leader_Xls
TableDic['LeaderBook'] = LeaderBook_Xls
TableDic['LeaderBookCore'] = LeaderBookCore_Xls
TableDic['LeaderBookSound'] = LeaderBookSound_Xls
TableDic['LeaderBookStory'] = LeaderBookStory_Xls
TableDic['LeaderBookWand'] = LeaderBookWand_Xls
TableDic['LeaderCamp'] = LeaderCamp_Xls
TableDic['LeaderClothing'] = LeaderClothing_Xls
TableDic['LeaderClothingSeries'] = LeaderClothingSeries_Xls
TableDic['LeaderFavor'] = LeaderFavor_Xls
TableDic['LeaderLv'] = LeaderLv_Xls
TableDic['LeaderSkill'] = LeaderSkill_Xls
TableDic['LeaderStar'] = LeaderStar_Xls
TableDic['LeaderStarlevel'] = LeaderStarlevel_Xls
TableDic['LeaderTemplate'] = LeaderTemplate_Xls
TableDic['LeaderVoice'] = LeaderVoice_Xls
TableDic['LevelConsume'] = LevelConsume_Xls
TableDic['Loading'] = Loading_Xls
TableDic['LoseTips'] = LoseTips_Xls
TableDic['LotteryInstance'] = LotteryInstance_Xls
TableDic['Mail'] = Mail_Xls
TableDic['MailSender'] = MailSender_Xls
TableDic['MainChapter'] = MainChapter_Xls
TableDic['MainCityAdvertisement'] = MainCityAdvertisement_Xls
TableDic['MainCityLeader'] = MainCityLeader_Xls
TableDic['MainLevel'] = MainLevel_Xls
TableDic['MainLevelBattle'] = MainLevelBattle_Xls
TableDic['MainStarReward'] = MainStarReward_Xls
TableDic['MapShowConfig'] = MapShowConfig_Xls
TableDic['MonsterBaseAttribute'] = MonsterBaseAttribute_Xls
TableDic['MonsterInstance'] = MonsterInstance_Xls
TableDic['MonsterSeniorAttribute'] = MonsterSeniorAttribute_Xls
TableDic['MonsterSkillValue'] = MonsterSkillValue_Xls
TableDic['MonsterTemplate'] = MonsterTemplate_Xls
TableDic['MonsterTypeFall'] = MonsterTypeFall_Xls
TableDic['NewLevelInstance'] = NewLevelInstance_Xls
TableDic['NewLevelStage'] = NewLevelStage_Xls
TableDic['NoiseData'] = NoiseData_Xls
TableDic['OpenFuction'] = OpenFuction_Xls
TableDic['PawnStateMachineRules'] = PawnStateMachineRules_Xls
TableDic['PlayerGrow'] = PlayerGrow_Xls
TableDic['PlayerInfoCard'] = PlayerInfoCard_Xls
TableDic['PlayerInfoHeadImage'] = PlayerInfoHeadImage_Xls
TableDic['RepelShoot'] = RepelShoot_Xls
TableDic['ResourceChapter'] = ResourceChapter_Xls
TableDic['RewardGood'] = RewardGood_Xls
TableDic['Setting'] = Setting_Xls
TableDic['SettingDisplay'] = SettingDisplay_Xls
TableDic['SettingResolution'] = SettingResolution_Xls
TableDic['Shop'] = Shop_Xls
TableDic['ShopGood'] = ShopGood_Xls
TableDic['SignActivity'] = SignActivity_Xls
TableDic['SignMonth'] = SignMonth_Xls
TableDic['Skill'] = Skill_Xls
TableDic['SkillResult'] = SkillResult_Xls
TableDic['SkillTrigger'] = SkillTrigger_Xls
TableDic['SkillValue'] = SkillValue_Xls
TableDic['SkyBoxParam'] = SkyBoxParam_Xls
TableDic['SoundEffect'] = SoundEffect_Xls
TableDic['StateParameter'] = StateParameter_Xls
TableDic['StateSwitchRule'] = StateSwitchRule_Xls
TableDic['StoryDialogActor'] = StoryDialogActor_Xls
TableDic['StoryDialogBg'] = StoryDialogBg_Xls
TableDic['Summon'] = Summon_Xls
TableDic['TalentSkillValue'] = TalentSkillValue_Xls
TableDic['Task'] = Task_Xls
TableDic['TaskDailyActive'] = TaskDailyActive_Xls
TableDic['TimelineConfig'] = TimelineConfig_Xls
TableDic['TmpPetInstance'] = TmpPetInstance_Xls
TableDic['TypeLevelAttribute'] = TypeLevelAttribute_Xls
TableDic['UIView'] = UIView_Xls
TableDic['Weapon'] = Weapon_Xls
TableDic['WeaponBreak'] = WeaponBreak_Xls
TableDic['WeaponBreakLevel'] = WeaponBreakLevel_Xls
TableDic['WeaponDistance'] = WeaponDistance_Xls
TableDic['WeaponGrow'] = WeaponGrow_Xls
TableDic['WeaponHighValue'] = WeaponHighValue_Xls
TableDic['WeaponSight'] = WeaponSight_Xls
TableDic['WeaponSkin'] = WeaponSkin_Xls
TableDic['WeaponTypeDes'] = WeaponTypeDes_Xls
TableDic['WeaponWaste'] = WeaponWaste_Xls
TableDic['WeatherType'] = WeatherType_Xls
TableDic['Word'] = Word_Xls
TableDic['WorldMapPointShow'] = WorldMapPointShow_Xls
TableDic['WorldMapRegion'] = WorldMapRegion_Xls
TableDic['xls_md5'] = xls_md5_Xls
