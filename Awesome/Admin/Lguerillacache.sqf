//Thanks for checking out my edit. Thanks to: Veteran, LoganNZL, Infistar, Malory, Rustler, Some people off Youtube for sending me some awesome scripts. And anyone else I forgot!
//////////////////////////////////////////////////////////////////////
//          __    Happy New Year!         _   _______   __ 			//
//   	   / /   ____  ____ _____ _____  / | / /__  /  / / 			//
//  	  / /   / __ \/ __ `/ __ `/ __ \/  |/ /  / /  / /  			//
// 		 / /___/ /_/ / /_/ / /_/ / / / / /|  /  / /__/ /___			//
//		/_____/\____/\__, /\__,_/_/ /_/_/ |_/  /____/_____/			//
//            		/____/        www.youtube.com/LoganNZL          //
//////////////////////////////////////////////////////////////////////

_className = "GuerillaCacheBox";
_mypos = getposATL player;
_dir = getdir player;
_mypos = [(_mypos select 0)+2*sin(_dir),(_mypos select 1)+2*cos(_dir), (_mypos select 2)];
_magicbox = createVehicle [_className, _mypos, [], 0, "CAN_COLLIDE"];
_magicbox setDir _dir;
_magicbox setposATL _mypos;

 _dayz_wep =["AK_107_GL_Kobra","AK_107_GL_PSO","AK_107_Kobra","AK_107_PSO","AK_47_M","AK_47_S","AK_74","AK_74_GL","AK_74_GL_Kobra","AKS_74","AKS_74_Kobra","AKS_74_PSO","AKS_74_U","AKS_74_UN_Kobra","AKS_GOLD","BAF_AS50_scoped","BAF_AS50_TWS","BAF_L110A1_Aim","BAF_L7A2_GPMG","BAF_L85A2_RIS_ACOG","BAF_L85A2_RIS_CWS","BAF_L85A2_RIS_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_ACOG","BAF_L85A2_UGL_Holo","BAF_L85A2_UGL_SUSAT","BAF_L86A2_ACOG","BAF_LRR_scoped","BAF_LRR_scoped_W","bizon","bizon_silenced","Colt1911","Crossbow","DMR","G36_C_SD_camo","G36_C_SD_eotech","G36a","G36A_camo","G36C","G36C_camo","G36K","G36K_camo","FN_FAL","FN_FAL_ANPVS4","glock17_EP1","Huntingrifle","ksvk","LeeEnfield","M1014","m107_DZ","M14_EP1","M16A2","M16A2GL","m16a4","m16a4_acg","M16A4_ACG_GL","M16A4_GL","M24","M24_des_EP1","M240","m240_scoped_EP1","M249","M249_EP1","M249_m145_EP1","M40A3","M4A1","M4A1_Aim","M4A1_Aim_camo","M4A1_AIM_SD_camo","M4A1_HWS_GL",
"M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A1_RCO_GL","M4A3_CCO_EP1","M4A3_RCO_GL_EP1","M4SPR","M60A4_EP1","M9","M9SD","Makarov","MakarovSD","MeleeHatchet","MeleeCrowbar","MG36","Mk_48_DES_EP1","Mk_48_DZ","MP5A5","MP5SD","MR43","Pecheneg","PK","Remington870_lamp","revolver_EP1","revolver_gold_EP1","RPK_74","Sa61_EP1","Saiga12K","SVD","SVD_CAMO","SVD_des_EP1","SVD_NSPU_EP1","UZI_EP1","UZI_SD_EP1","Winchester1866","Binocular","Binocular_Vector","ItemCompass","ItemEtool","ItemFlashlight","ItemFlashlightRed","ItemGPS","ItemHatchet","ItemKnife","ItemMap","ItemMatchbox","ItemRadio","ItemToolbox","ItemWatch","Laserdesignator","NVGoggles"]; 
	  
	  
   
 _dayz_mag =["PipeBomb","2Rnd_shotgun_74Slug","2Rnd_shotgun_74Pellets","5Rnd_127x108_KSVK","5Rnd_127x99_as50","5Rnd_762x51_M24","5Rnd_86x70_L115A1","5x_22_LR_17_HMR","6Rnd_45ACP","7Rnd_45ACP_1911","8Rnd_9x18_Makarov","8Rnd_9x18_MakarovSD","8Rnd_B_Beneli_74Slug","8Rnd_B_Beneli_Pellets","8Rnd_B_Saiga12_74Slug","8Rnd_B_Saiga12_Pellets","10Rnd_127x99_M107","10Rnd_762x54_SVD","10x_303","15Rnd_9x19_M9","15Rnd_9x19_M9SD","15Rnd_W1866_Slug","15Rnd_W1866_Pellet","17Rnd_9x19_glock17","20Rnd_556x45_Stanag","20Rnd_762x51_DMR","20Rnd_762x51_FNFAL","20Rnd_B_765x17_Ball","30Rnd_545x39_AK","30Rnd_545x39_AKSD","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_762x39_AK47","30Rnd_9x19_MP5","30Rnd_9x19_MP5SD","30Rnd_9x19_UZI","30Rnd_9x19_UZI_SD","50Rnd_127x108_KORD","64Rnd_9x19_Bizon","64Rnd_9x19_SD_Bizon","75Rnd_545x39_RPK","100Rnd_762x51_M240","100Rnd_762x54_PK","100Rnd_556x45_BetaCMag","100Rnd_556x45_M249","200Rnd_556x45_L110A1","200Rnd_556x45_M249","BoltSteel","1Rnd_HE_GP25","1Rnd_HE_M203","1Rnd_Smoke_GP25","1Rnd_SmokeGreen_GP25","1Rnd_SmokeRed_GP25","1Rnd_SmokeYellow_GP25","1Rnd_Smoke_M203","1Rnd_SmokeGreen_M203","1Rnd_SmokeRed_M203","1Rnd_SmokeYellow_M203","6Rnd_HE_M203","BAF_ied_v1","FlareGreen_GP25","FlareRed_GP25","FlareWhite_GP25","FlareYellow_GP25","FlareGreen_M203","FlareRed_M203","FlareWhite_M203","FlareYellow_M203","HandGrenade_East","HandGrenade_West","M136","SmokeShell","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed","SmokeShellYellow","FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodSteakCooked","FoodSteakRaw","HandChemBlue","HandChemGreen","HandChemRed","HandRoadFlare","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemJerrycan","ItemJerrycanEmpty","ItemMorphine","ItemPainkiller","ItemSandbag","ItemSodaCoke","ItemSodaEmpty","ItemSodaMdew","ItemSodaPepsi","ItemTankTrap","ItemTent","ItemWire","ItemWaterbottle","ItemWaterbottleUnfilled","PartEngine","PartFueltank","PartGeneric","PartGlass","PartWheel","PartWoodPile","PartVRotor","TrapBear","TrashTinCan","TrashJackDaniels","Skin_Camo1_DZ","Skin_Soldier1_DZ","Skin_Sniper1_DZ","Skin_Survivor2_DZ"];
      
   
   
clearWeaponCargoGlobal _magicbox;
clearMagazineCargoGlobal _magicbox;
clearBackpackCargoGlobal _magicbox;
 
{_magicbox addWeaponCargoGlobal [_x,10];} forEach _dayz_wep;  
{_magicbox addMagazineCargoGlobal [_x,10];} forEach _dayz_mag; 

"MeleeHatchet" call dayz_meleeMagazineCheck;
"MeleeCrowbar" call dayz_meleeMagazineCheck;