/* ********************************************************************************* */
/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* ********************Copr. ©2013 infiSTAR all rights reserved********************* */
/* *********************************www.infiSTAR.de********************************* */
/*  Key to open the menu  */ _OpenMenuKey = 0x3C;    /* google DIK_KeyCodes (0x3C is F2) */
/* ********************************************************************************* */
/*  Mod EPOCH ?           */ _MEH =  false;   /* true or false */
/* ********************************************************************************* */
/*  LOW ADMIN HERE        */ _LowLevel_List =   ["0","0","0"]; //do not have a , at the end.
/*  NORMAL ADMIN HERE     */ _NormalLevel_List =["0","0","0"]; //do not have a , at the end.
/*  SUPER ADMIN HERE      */ _SuperLevel_List = ["0","0","0"]; //do not have a , at the end.
/*  BANNED PLAYER HERE    */ _BLOCKED =         ["0","0","0"]; //do not have a , at the end.
/* ********************************************************************************* */
/*  Top esc menu TXT      */ _TopOfESC = 'DayZ Server'; //do not use ' or " in this text.
/*  Bottom esc menu TXT   */ _LowerTop = 'AntiHack / AdminTool'; //do not use ' or " in this text.
/*  Bottom esc menu TXT2  */ _LowerBottom = 'by infiSTAR.de'; //do not use ' or " in this text.
/*  Color esc menu TXT    */ _EscColor = [0,0.3,1,1];
/* ********************************************************************************* */
/*  DebugMonitor TXT      */ _BottomDebug = 'infiSTAR.de'; //do not use ' or " in this text.
/*  DebugMonitor Key      */ _ODK =  0xCF;	/* google DIK_KeyCodes (0xCF is END) */
/*  Use DebugMonitor      */ _DMS =  true;	/* true or false */	/* starts up with debugmonitor ON if true */
/*  DebugMonitor Action   */ _DMW = false;	/* true or false */	/* "Debug" option on mousewheel */
/*  DebugMonitor ITEM     */ _DBI = false;	/* item or false */	/* _DBI = 'your item choice'; */
/* ********************************************************************************* */
/*  Use AUTOBAN HACKER    */ _UAB =  true;   /* true or false */	/* recommended:  true */	/* we always used this. */
/*  Forbid VON Sidechat   */ _VON = false;   /* true or false */	/* recommended: false */	/* talking on sidechat will put out a warning and kick if continue */
/*  Use vehicle check?    */ _UVC = false;   /* true or false */	/* recommended: false */	/* using _ALLOWED_Vehicles and _FORBIDDEN_Vehicles lists */
/*  Vehicle WHITELIST     */ _UVW = false;   /* true or false */	/* recommended: false */	/* if false - _ALLOWED_Vehicles won't not be used */
/* ********************************************************************************* */
/*  Use FileScan ?        */ _UFS =  true;   /* true or false */	/* recommended:  true */	/* spams the rpt but often finds hackers */
/*  Use cut-scene ?       */ _UCS =  true;   /* true or false */	/* recommended:  true */	/* dynamicText ~ often colored, animated or used in credits */
/*  Use SafeZones ?       */ _USZ =  true;   /* true or false */	/* recommended:  true */	/* if you have a zone where people get godmode/anti zombie aggro (most Epoch server do have this!) */
/*  HACKED BOX Check ?    */ _CHB =  true;   /* true or false */	/* recommended:  true */	/* some epoch player might want to turn this one off */
/*  Check CMDMenus ?      */ _CCM =  true;   /* true or false */	/* recommended:  true */	/* only disable this if you know what you are doing. */
/*  BLOCK ALL CMDMenus    */ _BCM = false;   /* true or false */	/* recommended:  true */	/* we don't need commandingMenus. so have this true. */
/*  Check Actions ?       */ _CSA = false;   /* true or false */	/* recommended:  true */	/* R3F vehicle towing can't be whitelisted so we need to turn this off */
/* ********************************************************************************* */
/*  Player that have one of the items in _ForbiddenWeapons in their inventory will get punished!  */
/*  FORBIDDEN Weapons     */ _ForbiddenWeapons =
[
	'ItemMap_Debug','ItemCore','Laserdesignator'
];
/* ********************************************************************************* */
/*  If _UVC = true; and _UVW = true; this check will start and delete all vehicles that are not in _ALLOWED_Vehicles  */
/*  ALLOWED  Vehicles     */ _ALLOWED_Vehicles = ['ALL IF _UVW = false','Tractor','Policecar'];
/* ********************************************************************************* */
/*  If _UVC = true; this check will start and delete all vehicles that are in _FORBIDDEN_Vehicles  */
/*  FORBIDDEN Vehicles    */ _FORBIDDEN_Vehicles =
[
	'F35B'
];
/* ********************************************************************************* */
/*  ALLOWED CMDMenus are only used if you have _BCM = false; which I would not recommend.  */
/*  ALLOWED CMDMenus      */ _cMenu = 
[
	'','RscMainMenu','RscMoveHigh','#WATCH','#WATCH0',
	'RscWatchDir','RscDisplayClassSelecter','RscDisplayGenderSelect',
	'RscDisplaySpawnSelecter','RscWatchMoreDir','#GETIN','RscStatus',
	'RscCombatMode','RscFormations','RscTeam','RscSelectTeam','RscReply',
	'RscCallSupport','#ACTION','#CUSTOM_RADIO','RscRadio','RscGroupRootMenu',
	'BTC_Hud'
];
/* ********************************************************************************* */
/*  ALLOWED Actions are only used if you have _CSA =  true;  */
/*  ALLOWED Actions      */ _dayzActions =
"([
	BTC_SganciaActionId,BTC_liftActionId,BTC_liftHudId,
	dayz_myCursorTarget,s_player_craftZombieBait,wardrobe,s_player_butcher_human,s_player_makeBomb,s_player_zombieShield,s_player_upgrademoto,
	s_player_smeltRecipes,null,churchie_check,churchie_defuse,churchie_rig_veh,player_Cannibalism,s_player_fillfuel210,s_player_knockout,s_player_upgradegyro,ActionMenu,
	manatee_craft_menu,manatee_craft_menu_wea,manatee_craft_menu_sur,manatee_craft_menu_ind,s_player_craftZombieBaitBomb,horror_traders,s_player_takeOwnership,s_siphon,s_player_suicide,
	silver_myCursorTarget,stow_vehicle,menu_Worker2,neutral,menu_RU_Citizen1,menu_RU_Citizen4,menu_TK_CIV_Takistani04_EP1,menu_RU_Villager3,menu_RU_Functionary1,menu_Doctor,
	menu_Dr_Hladik_EP1,menu_Profiteer4,menu_Worker3,menu_Pilot_EP1,menu_RU_Citizen3,menu_CIV_EuroMan02_EP1,menu_Rita_Ensler_EP1,menu_RU_WorkWoman5,menu_RU_WorkWoman1,
	menu_Woodlander1,menu_Woodlander3,menu_Rocker4,menu_CIV_EuroMan01_EP1,Tow_settings_action_heliporter,Tow_settings_action_heliport_larguer,
	Tow_settings_action_deplacer_objet,Tow_settings_action_relacher_objet,Tow_settings_action_selectionner_objet_charge,Tow_settings_action_charger_selection,
	Tow_settings_action_charger_deplace,Tow_settings_action_selectionner_objet_remorque,Tow_settings_action_remorquer_selection,Tow_settings_action_remorquer_deplace,
	Tow_settings_action_detacher,Tow_settings_action_contenu_vehicule,Tow_settings_dlg_CV_titre,Tow_settings_dlg_CV_btn_decharger,Tow_settings_dlg_CV_btn_fermer,
	_heliporteur,s_player_makePLBomb,s_player_stats,s_player_deploybike,s_player_packbike,s_player_deploygyro,s_player_upgradebike,nul,
	s_player_equip_carry,s_player_showname,s_player_showname1,s_player_smeltItems,
	s_player_debug,s_player_calldog,s_player_speeddog,s_player_movedog,
	s_player_followdog,s_player_warndog,s_player_barkdog,s_player_trackdog,s_player_staydog,
	s_player_waterdog,s_player_feeddog,s_player_tamedog,s_player_repair_crtl,s_player_towing,
	s_player_fillgen,s_player_maint_build,s_player_fuelauto2,s_player_fuelauto,s_player_information,
	s_player_upgrade_build,s_player_packvault,s_player_unlockvault,s_player_checkGear,
	s_player_lockUnlock_crtl,s_player_deleteBuild,s_player_pzombiesfeed,s_player_pzombiesattack,
	s_player_pzombiesvision,s_player_callzombies,s_player_removeflare,s_player_fishing_veh,
	s_player_forceSave,s_player_fillfuel20,s_player_fillfuel5,s_player_lockvault,s_player_dragbody,
	s_player_packFdp,s_player_otkdv,s_player_isCruse,s_player_cnbb,bis_fnc_halo_action,
	s_player_rest,s_player_flipvehiclelight,s_player_flipvehicleheavy,s_player_1bupd,
	s_halo_action,s_player_smelt_scrapmetal,s_player_grabflare,s_player_fishing,
	s_player_smelt_engineparts,s_player_smelt_fueltank,s_player_smelt_windscreenglass,
	s_player_smelt_mainrotoraryparts,s_player_smelt_wheel,s_player_smelt_jerrycan,s_player_siphonfuel,
	s_player_flipveh,s_player_fillfuel,s_player_dropflare,s_player_butcher,s_player_cook,
	s_player_boil,s_player_fireout,s_player_packtent,s_player_sleep,s_player_studybody,
	NORRN_dropAction,s_player_selfBloodbag,s_clothes,s_player_holderPickup,s_player_gather,
	s_player_recipeMenu,s_player_deleteCamoNet,s_player_netCodeObject,s_player_codeRemoveNet,
	s_player_enterCode,s_player_codeObject,s_player_codeRemove,s_player_disarmBomb,
	unpackRavenAct,disassembleRavenAct,launchRavenAct,strobeRavenResetAct,strobeRavenTestAct,
	batteryLevelCheckRavenAct,batteryRechargeRavenAct,mavBaseStationActionName_00,mavBaseStationActionName_001,
	mavBaseStationActionName_01,mavBaseStationActionName_02,mavBaseStationActionName_03,mavBaseStationActionName_04,
	s_player_dance,s_player_igniteTent,s_player_clothes,STR_R3F_LOG_action_heliporter,STR_R3F_LOG_action_heliport_larguer,
	STR_R3F_LOG_action_relacher_objet,STR_R3F_LOG_action_deplacer_objet,STR_R3F_LOG_action_remorquer_deplace,
	STR_R3F_LOG_action_selectionner_objet_remorque,STR_R3F_LOG_action_detacher,STR_R3F_LOG_action_charger_deplace,
	STR_R3F_LOG_action_selectionner_objet_charge,STR_R3F_LOG_action_remorquer_selection,STR_R3F_LOG_action_charger_selection,
	STR_R3F_LOG_action_contenu_vehicule,STR_R3F_ARTY_action_ouvrir_dlg_SM
] + s_player_removeActions + s_player_repairActions + r_player_actions + r_player_actions2 + s_player_parts + s_player_combi + s_player_lockunlock)";
/* ********************************************************************************* */
/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* ********************Copr. ©2013 infiSTAR all rights reserved********************* */
/* *********************************www.infiSTAR.de********************************* */