_emptyshop = [];

shop_list_item = 0;
shop_list_stock = 1;
shop_list_stock_max = 2;

_generalstore = 
	[
		["Fuelline", 80, 160],
		["kanister", 80, 180],
		["kleinesreparaturkit", 40, 140],
		["Bread", 20, 140],
		["boar", -1, -1],
		["medikit", 10, 110],
		["handy", -1, -1],
		["lighter", -1, -1],
		["fishingpole", -1, -1],
		["Stone", -1, -1],
		["ziptie", 80, 100],
		["Binocular", 120, 180],
		["GPS", 140, 180]
	];

//Fishing Shop
//Syphon Refuel kit, Refuel Can, Small Repair Kit, Large Repair Kit
_fs = 
	[
		["Fuelline", 140, 180],
		["kanister", 120, 140],
		["kleinesreparaturkit", 120, 140],
		["reparaturkit", 115, 130]
	];

//Item Shop
//perch, trout, walleye, bass, Bread, Medikit, Mobile phone, Lighter, Fishing Rod
_is = 
	[
		["perch", 20, 40],
		["trout", 20, 40],
		["walleye", 20, 40], 
		["bass", 20, 40],
		["Bread", 10, 20],
		["medikit", 0, 10],
		["handy", -1, -1],
		["lighter", -1, -1],
		["fishingpole", -1, -1]
	];
	
//Pub
//Lager, Bitter, Vodka, Smirnoff ICE, Wiskey, White Wine, Red Wine
_pub = 
	[
		["beer", 10, 100],
		["beer2", 10, 100],
		["vodka", 10, 100],
		["smirnoff", 10, 100],
		["wiskey", 10, 100],
		["wine", 10, 100],
		["wine2", 10, 100]
	];
	
//Gun Shop
//Stone, M9, M9Ammo, Colt1911, Colt1911Ammo, Revolver-Silver, Revolver-SilverAmmo, CZ550, CZ550Ammo, LeeEnfield, LeeEnfieldAmmo, Saiga12K, Saiga12KAmmo, Saiga12KAmmo, M16A2, M16A2Ammo, FAL, FALAmmo
_gs = 
	[
		["Stone", -1, -1],
		["glock17_EP1", 110, 110],
		["Rnd_9x19_glock17", 480, 480],
		["M9", 110, 110],
		["Rnd_9x19_M9", 80, 80],
		["Colt1911", 10, 10],
		["Rnd_45ACP_1911", 80, 80],
		["revolver_EP1", 10, 10],
		["Rnd_45ACP", 80, 80],
		["CZ_550", 10, 10], 
		["x_22_LR_17_HMR", 40, 40],
		["LeeEnfield", 110, 110],
		["x_303", 640, 640],
		["Saiga_ill", 25, 25],
		["Rnd_B_Saiga12_Pellets", 120, 120],
		["M16A2", 5, 150],
		["Rnd_20_Stanag", 20, 520],
		["FN_FAL", 5, 45],
		["Rnd_762x51_FNFAL", 20, 220]
	];
	
//Equiptment Shop
//Binocular, GPS, lockpick, Fuelline, Stone
_es = 
	[
		["handy", 80, 80],
		["Binocular", 80, 80],
		["GPS", 40, 80],
		["lockpick", 30, 30],
		["Fuelline", -1, -1],
		["Stone", -1, -1]
	];
	
//Checkpoint shop
// Checkpoint items, bargates,roadcones, barriers, etc.

_cp = 
	[
		["SearchLight_US_EP1", -1, -1],
		["roadblock", -1, -1],
		["bargate", -1, -1],
		["BigbagfenceCorner", -1, -1],
		["bigbagfence", -1, -1],
		["bigbagfenceRound", -1, -1],
		["bunkersmall", -1, -1],
		["danger", -1, -1],
		["roadcone", -1, -1],
		["barrack", -1, -1],
		["Sign_Checkpoint_US_EP1", -1, -1],
		["Land_CamoNetVar_NATO_EP1", -1, -1],
		["Land_ladderEP1", -1, -1],
		["Land_Campfire_burning", -1, -1]
		
		
	];

	
//Car Upgrades
//Nitro, Speed1, Speed2, Speed3, Speed4, Speed5
_cu = 
	[
		["nitro", 25, 25],
		["supgrade1", 25, 25],
		["supgrade2", 25, 25], 
		["supgrade3", 25, 25], 
		["supgrade4", 25, 25], 
		["supgrade5", 25, 25] 
	];
	
//Car Shop
//Bike, MTBike, Bike, Old Motorbike, Motorbike, Motorbike, Motorbike, ATV, Tractor, Skoda, SkodaBlue, SkodaRed, SkodaGreen
//Vohla Blue, Vohla Grey, Vohla Limo, Lada, Lada Hippie, VWGolf, Hatchback, Sedan, Lada Red, Lada White, S1203 Van, Landrover, Landrover
//Hilux1, Hilux1_2, Hilux1_3oep1, Hilux1_3o, Datsun1o, Datsun2c, Datsun3o
_cs = 
	[
		["Old_bike_TK_CIV_EP1", -1, -1],
		["MMT_Civ", 75, 100],
		["Old_moto_TK_Civ_EP1", 75, 100],
		["TT650_TK_CIV_EP1", 75, 100],
		["TT650_Civ", 75, 100],
		["TT650_Ins", 75, 100],
		["M1030", 75, 100],
		["ATV_CZ_EP1", 75, 100],
		["Skoda", 75, 100],
		["SkodaBlue", 75, 100],
		["SkodaRed", 75, 100],
		["SkodaGreen", 75, 100],
		["Volha_1_TK_CIV_EP1", 25, 100],
		["Volha_2_TK_CIV_EP1", 25, 100],
		["VolhaLimo_TK_CIV_EP1", 25, 100],
		["Lada1_TK_CIV_EP1", 25, 100],
		["Lada2_TK_CIV_EP1", 25, 100],
		["VWGolf", 25, 100],
		["car_hatchback", 25, 100],
		["Car_Sedan", 25, 100],
		["Lada1", 25, 100],
		["Lada2", 25, 100],
		["S1203_TK_CIV_EP1", 25, 100],
		["LandRover_TK_CIV_EP1", 25, 100],
		["LandRover_CZ_EP1", 25, 100],
		["hilux1_civil_1_open", 25, 100],
		["hilux1_civil_2_covered", 25, 100],
		["hilux1_civil_3_open_EP1", 25, 100],
		["hilux1_civil_3_open", 25, 100],
		["datsun1_civil_1_open", 25, 100],
		["datsun1_civil_2_covered", 25, 100],
		["datsun1_civil_3_open", 25, 100]
	];

//Truck Shop
//Ikarus, Ikarus_TK_CIV_EP1, UralCivil, UralCivil2, V3S_Open_TK_CIV_EP1, V3S_Civ
_ts = 
	[
		["Tractor", 5, 50],
		["tractorOld", 5, 50],
		["Ikarus", 5, 20],
		["Ikarus_TK_CIV_EP1", 5, 20],
		["Ural_TK_CIV_EP1", 5, 20],
		["UralCivil", 5, 20],
		["UralCivil2", 5, 20],
		["V3S_Open_TK_CIV_EP1", 5, 20],
		["V3S_Civ", 5, 20]
	];

//Air Shop - North
//ULB - AH6X_EP1, MH6J_EP1, Mi17_Civilian, BAF_Merlin_HC3_D, MV22, An2_1_TK_CIV_EP1, An2_2_TK_CIV_EP1, L39, C130J
_as = 
	[
		["AH6X_EP1", 5, 10],
		["MH6J_EP1", 5, 10],
		["Mi17_Civilian", 5, 10],
		["BAF_Merlin_HC3_D", 5, 10],
		["MV22", 5, 10],
		["An2_1_TK_CIV_EP1", 5, 10],
		["An2_2_TK_CIV_EP1", 5, 10],
		["C130J", 5, 5]
	];

//Air Shop - South
//ULB - AH6X_EP1, MH6J_EP1, Mi17_Civilian, BAF_Merlin_HC3_D, MV22, An2_1_TK_CIV_EP1, An2_2_TK_CIV_EP1, L39, C130J
_as_1 = 
	[
		["AH6X_EP1", 10, 10],
		["MH6J_EP1", 10, 10],
		["Mi17_Civilian",10, 10],
		["BAF_Merlin_HC3_D", 10, 10],
		["MV22", 10, 10],
		["An2_1_TK_CIV_EP1", 10, 10],
		["An2_2_TK_CIV_EP1", 10, 10],
		["C130J", 2, 5]
	];

//Hospital Doctor
//Medikit
_td = 
	[
		["medikit", -1, -1]
	];

//Mining Shop
_ms = 
	[
		["Shovel", 100, 100],
		["Pickaxe", 100, 100],
		["JackHammer", 50, 50]
	];

//Resource Shop
_rs = 
	[
		["Diamond rock", -1 ,-1],
		["Platinum", -1, -1],
		["Gold", -1, -1],
		["Silver", -1, -1],
		["Rubies", -1, -1],
		["iron", -1, -1],
		["copper", -1, -1],
		["steel", -1, -1],
		["sand", -1, -1],
		["glass", -1, -1]
	];

//Diamond Sell
_gds = 
	[
		["Diamondring", -1, -1],
		["EDiamondring", -1, -1],
		["Platinumring", -1, -1],
		["EPlatinumring", -1, -1]
	];

//Oil Trader/Seller
_os = 
	[
		["OilBarrel", -1, -1]
	];

//Gangarea Shops
_gangshop_buy =
	[
		["GPS_ill", -1, -1],
		["Binocular_ill", -1, -1],
		["NVGoggles_ill", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["lockpick", -1, -1],
		["lighter", -1, -1],
		["Fuelline", -1, -1],
		["kanister", -1, -1],
		["medikit", -1, -1],
		["revolver_ill", -1, -1],
		["Rnd_45ACP", -1, -1],
		["Makarov", -1, -1],
		["Rnd_9x18_Makarov", -1, -1],
		["Colt_ill", -1, -1],
		["Rnd_45ACP_1911", -1, -1],
		["UZI_EP1", -1, -1],
		["Rnd_9x19_UZI", -1, -1],
		["LeeEnfield_ILL", -1, -1],
		["x_303", -1, -1],
		["HandGrenade", -1, -1],
		["Stone", -1, -1],
		["AK_47_M", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["AKS74U", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["ziptie", -1, -1]
	];

//Drug Traffiking
_db1 = 
	[
		["marijuana", -1, -1],
		["cocaine", -1, -1],
		["lsd", -1, -1]
	];

_db2 = 
	[
		["cocaine", -1, -1],
		["lsd", -1, -1]
	];

_db3 = 
	[
		["heroin", -1, -1],
		["marijuana", -1, -1]
	];

//Cocaine Sell
_dsc = 
	[
		["cocaine", -1, -1]
	];

//Marijuana Sell
_dsm = 
	[
		["marijuana", -1, -1]
	];

//LSD Sell
_dsl = 
	[
		["lsd", -1, -1]
	];

//Heroin Sell
_dsh = 
	[
		["heroin", -1, -1]
	];

//Blufor Vehicle Shop
_cv = 
	[
		["Old_bike_TK_INS_EP1", -1, -1],
		["MMT_USMC", -1, -1],
		["M1030_US_DES_EP1", -1, -1],
		["ATV_US_EP1", -1, -1],
		["VolhaLimo_TK_CIV_EP1", -1, -1],
		["LadaLM", -1, -1],
		//["LandRover_ACR", -1, -1],
		//["UAZ_Unarmed_ACR", -1, -1],
		["SUV_UN_EP1_retex", -1, -1],
		["HMMWV_Armored",  -1, -1],
		["UAZ_Unarmed_UN_EP1", -1, -1],
		["Ural_UN_EP1", -1, -1],
		//["T810_Des_ACR", -1, -1],
		//["T810_Open_Des_ACR", -1, -1],
		["MTVR_DES_EP1", -1, -1],
		["MtvrReammo_DES_EP1", -1, -1],
		["MtvrRefuel_DES_EP1", -1, -1],
		["MtvrRepair_DES_EP1", -1, -1]
		//["T810A_Des_MG_ACR", -1, -1],
		//["T810Repair_Des_ACR", -1, -1],
		//["T810Refuel_Des_ACR", -1, -1],
		//["T810Reammo_Des_ACR" -1, -1]
	];

//Blufor Air Shop
_ca = 
	[
		["An2_TK_Cop", -1, -1],
		["RQ1Predator", -1, -1],
		["MQ9PredatorB_US_EP1", -1, -1],
		["MV22", -1, -1],
		["C130J_US_EP1_cop", -1, -1],
		["AV8B", -1, -1],
		["AV8B2", -1, -1],
		["AV8B_AS", -1, -1],	
		["A10_US_EP1", -1, -1]
	];

//Blufor SOBR Vehicle Shop
_sv = 
	[
		["HMMWV", -1, -1],
		["HMMWV_DES_EP1", -1, -1],
		["HMMWV_M1035_DES_EP1", -1, -1],
		["HMMWV_Terminal_EP1", -1, -1],
		["HMMWV_Armored",  -1, -1],
		["HMMWV_M998A2_SOV_DES_EP1", -1, -1],
		["HMMWV_MK19_DES_EP1", -1, -1],
		["HMMWV_M998_crows_M2_DES_EP1", -1, -1],
		["HMMWV_M1151_M2_DES_EP1", -1, -1],
		["HMMWV_TOW_DES_EP1", -1, -1],
		["HMMWV_Avenger_DES_EP1", -1, -1],
		["BAF_Jackal2_L2A1_D", -1, -1],
		["BAF_Jackal2_GMG_D", -1, -1],
		["M113Ambul_UN_EP1", -1, -1],
		["M113_UN_EP1", -1, -1],
		["AAV", -1 ,-1],
		//["LAV25", -1, -1],
		["M1133_MEV_EP1",-1,-1],
		["M1130_CV_EP1",-1,-1],
		["M1126_ICV_M2_EP1", -1, -1],
		["M1126_ICV_MK19_EP1", -1, -1],
		["M1129_MC_EP1",-1,-1],
		//["AAV", -1 ,-1],
		["M1135_ATGMV_EP1",-1,-1],
		["M1128_MGS_EP1",-1,-1],
		["M2A2_EP1",-1,-1],
		["M2A3_EP1",-1,-1],
		["M6_EP1",-1,-1],
		["BAF_FV510_D",-1,-1],
		["BAF_FV510_W",-1,-1],
		["M1A1_US_DES_EP1", -1, -1],
		["M1A2_US_TUSK_MG_EP1", -1, -1],	
		["MLRS_DES_EP1", -1, -1],
		["ARTY_30Rnd_105mmHE_M119", -1, -1],
		["ARTY_30Rnd_105mmWP_M119", -1, -1],
		["ARTY_30Rnd_105mmSADARM_M119", -1, -1],
		["Stinger_Pod_US_EP1", -1, -1]
		
	];

//Blufor SOBR Air Shop
_sa = 
	[
		["MH6J_EP1", -1, -1],
		["AH6X_EP1", -1, -1],
		["AH6J_EP1", -1, -1],
		["Mi17_UN_CDF_EP1", -1, -1],
		["UH1H_TK_GUE_EP1", -1, -1],
		["UH60M_MEV_EP1", -1, -1],
		["MH60S", -1, -1],
		["UH60M_EP1", -1, -1],
		["CH_47F_EP1", -1, -1],
		["AW159_Lynx_BAF", -1, -1],
		["AH64D_EP1", -1, -1],
		["AH1Z", -1, -1]
	];

// PMC land vehicles
_pmcveh = 
	[
		["BAF_ATV_D", -1, -1],
		["MMT_USMC", -1, -1],
		["M1030", -1, -1],
		["SUV_PMC_BAF", -1, -1],
		["ArmoredSUV_PMC", -1, -1],
		["HMMWV_M1035_DES_EP1", -1, -1],
		["HMMWV_DES_EP1", -1, -1],
		["HMMWV_M1151_M2_CZ_DES_EP1", -1, -1],
		["MTVR_DES_EP1", -1, -1],
		["MtvrReammo_DES_EP1", -1, -1],
		["MtvrRefuel_DES_EP1", -1, -1],
		["MtvrRepair_DES_EP1", -1, -1],
		["BAF_Jackal2_L2A1_D", -1, -1]
	];
	
// PMC air vehicles
_pmcair = 
	[
		["MH6J_EP1", -1, -1],
		["Ka60_PMC", -1, -1],
		["UH60M_MEV_EP1", -1, -1],
		["UH60M_EP1", -1, -1],
		["BAF_Merlin_PMC", -1, -1]
	];
//PMC Items
_pmcs        =
	[
		["handy", -1, -1],
		["GPS", -1, -1],
		["NVGoggles", -1, -1],
		["Binocular", -1, -1],
		["Binocular_Vector", -1, -1],
		["Laserdesignator", -1, -1],
		["Laserbatteries", -1, -1],
		["ziptie", -1, -1],
		["lockpick", -1, -1],
		["medikit", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["kanister", -1, -1],
		["supgrade1", -1, -1],
		["supgrade2", -1, -1],
		["supgrade3", -1, -1],
		["supgrade4", -1, -1],
		["supgrade5", -1, -1],
		["nitro", -1, -1],
		["vclammo", -1, -1],
		["gasmask", -1, -1],
		["stun_light", -1, -1],
		["M9_PMC", -1, -1],
		["M9SD_PMC", -1, -1],
		["glock17_PMC", -1, -1],
		["Rnd_9x19_M9", -1, -1],
		["Rnd_9x19_glock17", -1, -1],
		["AA12_PMC", -1, -1],
		["Rnd_B_AA12_74Slug", -1, -1],
		["Rnd_B_AA12_Pellets", -1, -1],
		["Rnd_B_AA12_HE_sup", -1, -1],
		["m16a4", -1, -1],
		["M16A4_GL", -1, -1],
		["M4A1", -1, -1],
		["M4A1_Aim", -1, -1],
		["M4A1_AIM_SD_camo", -1, -1],
		["M4A3_CCO_EP1", -1, -1],
		["M4A3_RCO_GL_EP1", -1, -1],
		["Rnd_20_Stanag", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["FN_FAL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["AK_47_M", -1, -1],
		["AK_47_S", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["AKS74U", -1, -1],
		["AKS_74_UN_kobra", -1, -1],
		["RPK_74",  -1, -1],
		["AK74", -1, -1],
		["AK74GL", -1, -1],
		["AKS_74", -1, -1],
		["AKS74kobra", -1, -1],
		["AKS74kobragl", -1, -1],
		["AKS74pso", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["Rnd_545x39_AKSD",	 -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["MP5A5", -1, -1],
		["Rnd_9x19_MP5", -1, -1],
		["G36A_camo", -1, -1],
		["G36C_camo", -1, -1],
		["G36K_camo", -1, -1],
		["G36_C_SD_camo", -1, -1],
		["Rnd_556x45_G36", -1, -1],
		["Rnd_556x45_G36SD", -1, -1],
		["m8_carbine", -1, -1],
		["m8_SAW", -1, -1],
		["m8_sharpshooter", -1, -1],
		["m8_carbine_pmc", -1, -1],
		["m8_carbineGL", -1, -1],
		["M8_compact",  -1, -1],
		["m8_compact_pmc", -1, -1],
		["m8_holo_sd", -1, -1],
		["Rnd_20_Stanag", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["Rnd_556x45_StanagSD", -1, -1],
		["BAF_L85A2_RIS_Holo", -1, -1],
		["BAF_L85A2_UGL_Holo", -1, -1],
		["BAF_L85A2_RIS_ACOG", -1, -1],
		["BAF_L85A2_UGL_ACOG", -1, -1],
		["BAF_L85A2_RIS_SUSAT", -1, -1],
		["BAF_L85A2_UGL_SUSAT", -1, -1],
		["BAF_L86A2_ACOG", -1, -1],
		["Rnd_20_Stanag", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["M249_EP1", -1, -1],
		["M249_m145_EP1", -1, -1],
		["Rnd_100_M249", -1, -1],
		["Rnd_200_M249", -1, -1],
		["BAF_L110A1_Aim", -1, -1],
		["Rnd_556x45_L110A1", -1, -1],
		["Mk_48", -1, -1],
		["Mk_48_DES_EP1", -1, -1],
		["BAF_L7A2_GPMG", -1, -1],
		["Rnd_762x51_M240", -1, -1],
		["M24", -1, -1],
		["M24_des_EP1", -1, -1],
		["Rnd_762x51_M24", -1, -1],
		["M110_NVG_EP1", -1, -1],
		["rnd_762x51_B_SCAR", -1, -1],
		["DMR", -1, -1],
		["M14_EP1", -1, -1],
		["Rnd_762x51_DMR", -1, -1],
		["M136", -1, -1],
		["M136_m", -1, -1],	
		["Mk13", -1, -1],
		["Igla", -1, -1],
		["Igla_mag", -1, -1],
		["Rnd_HE_M203", -1, -1],
		["Rnd_Smoke_M203", -1, -1],
		["Rnd_SmokeRed_M203", -1, -1],
		["Rnd_SmokeGreen_M203", -1, -1],
		["Rnd_SmokeYellow_M203", -1, -1],
		["FlareWhite_M203", -1, -1],
		["FlareGreen_M203", -1, -1],
		["FlareRed_M203", -1, -1],
		["FlareYellow_M203", -1, -1],
		["HandGrenade_BAF", -1, -1],
		["SmokeShell", -1, -1],
		["SmokeShellRed", -1, -1],
		["SmokeShellGreen", -1, -1],
		["SmokeShellYellow", -1, -1],
		["SmokeShellPurple", -1, -1],
		["SmokeShellBlue", -1, -1],
		["SmokeShellOrange", -1, -1],
		["PipeBomb", -1, -1],
		["Mine", -1, -1],
		["Tripod_Bag", -1, -1],
		["BAF_GPMG_Minitripod_D_bag",  -1, -1],
		["BAF_L2A1_ACOG_tripod_bag", -1, -1],
		["BAF_L2A1_ACOG_minitripod_bag", -1, -1],
		["CZ_Backpack_EP1",	 -1, -1],
		["CZ_VestPouch_EP1", -1, -1],
		//["US_UAV_Pack_EP1", -1, -1],
		["BAF_AssaultPack_FAC", -1, -1]
	];
	
//Blufor Shop
_copshop =
	[
		["handy", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["kanister", -1, -1],
		["medikit", -1, -1],
		["weaponbag", -1, -1],
		["Itembag", -1, -1],
		["defuser", -1, -1],
		["vclammo", -1, -1],
		["lockpick", -1, -1],
		["Binocular", -1, -1],
		["Binocular_Vector", -1, -1],
		["NVGoggles", -1, -1],
		["Laserdesignator", -1, -1],
		["Laserbatteries", -1, -1],
		["nitro", -1, -1],
		["supgrade1", -1, -1],
		["supgrade2", -1, -1],
		["supgrade3", -1, -1],
		["supgrade4", -1, -1],
		["supgrade5", -1, -1],
		["gasmask", -1, -1],
		["stun_light", -1, -1],
		["stun_full", -1, -1],
		["CZ_Backpack_EP1",	 -1, -1],
		["CZ_VestPouch_EP1", -1, -1],
		["USBasicBag", -1, -1],
		["US_Assault_Pack_EP1", -1, -1],
		["US_Backpack_EP1", -1, -1],
		["US_Patrol_Pack_EP1", -1, -1],
		["Tripod_Bag", -1, -1],
		["M2HD_mini_TriPod_US_Bag_EP1", -1, -1],
		["M2StaticMG_US_Bag_EP1", -1, -1],	
		["MK19_TriPod_US_Bag_EP1", -1, -1],
		["M252_US_Bag_EP1", -1, -1],
		["TOW_TriPod_US_Bag_EP1", -1, -1]
	];

//Blufor Patrol
_copshop_patrol =
	[
		["M9", -1, -1],
		["Rnd_9x19_M9", -1, -1],
		["Rnd_9x19_M9SD", -1, -1],
		["M1014", -1, -1],
		["Rnd_B_Beneli_74Slug", -1, -1],
		["Rnd_B_Beneli_Pellets", -1, -1],
		["MP5A5", -1, -1],
		["Rnd_9x19_MP5", -1, -1],
		["FN_FAL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["M4A1", -1, -1],
		["M16A2", -1, -1],
		["M16A2GL", -1, -1],
		["m16a4", -1, -1],
		["M16A4_GL", -1, -1],
		["Rnd_20_Stanag", -1, -1],
		["SmokeShell", -1, -1],
		["SmokeShellRed", -1, -1],
		["SmokeShellGreen", -1, -1],
		["SmokeShellYellow", -1, -1],
		["SmokeShellPurple", -1, -1],
		["SmokeShellBlue", -1, -1],
		["SmokeShellOrange", -1, -1],
		["Rnd_Smoke_M203", -1, -1],
		["Rnd_SmokeRed_M203", -1, -1],
		["Rnd_SmokeGreen_M203", -1, -1],
		["Rnd_SmokeYellow_M203", -1, -1],
		["FlareWhite_M203", -1, -1],
		["FlareGreen_M203", -1, -1],
		["FlareRed_M203", -1, -1],
		["FlareYellow_M203", -1, -1]
	];

//Blufor Response
_copshop_response =
	[
		["glock17_EP1", -1, -1],
		["Rnd_9x19_glock17", -1, -1],
		["M4A1_Aim", -1, -1],
		["M4A1_HWS_GL", -1, -1],
		["M4A1_RCO_GL", -1, -1],
		["m16a4_acg", -1, -1],
		["M16A4_ACG_GL", -1, -1],
		["SCAR_L_STD_HOLO", -1, -1],
		["SCAR_L_STD_Mk4CQT", -1, -1],
		["SCAR_L_CQC", -1, -1],
		["SCAR_L_CQC_Holo", -1, -1],
		["SCAR_L_CQC_EGLM_Holo", -1, -1],
		["SCAR_L_STD_EGLM_RCO", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["SCAR_L_CQC_CCO_SD", -1, -1],
		["Rnd_556x45_StanagSD", -1, -1],
		["Sa58V_CCO_EP1", -1, -1],
		["Sa58V_RCO_EP1", -1, -1],
		["Rnd_762x39_SA58", -1, -1],
		["MP5SD", -1, -1],
		["Rnd_9x19_MP5SD", -1, -1],
		["G36a", -1, -1],
		["G36C", -1, -1],
		["G36K", -1, -1],
		["G36_C_SD_eotech", -1, -1],
		["Rnd_556x45_G36", -1, -1],
		["Rnd_556x45_G36SD", -1, -1],
		["M4SPR", -1, -1],
		["Rnd_20_Stanag", -1, -1],
		["Mk13", -1, -1],
		["Rnd_HE_M203", -1, -1],
		["Rnd_Smoke_M203", -1, -1],
		["Rnd_SmokeRed_M203", -1, -1],
		["Rnd_SmokeGreen_M203", -1, -1],
		["Rnd_SmokeYellow_M203", -1, -1],
		["FlareWhite_M203", -1, -1],
		["FlareGreen_M203", -1, -1],
		["FlareRed_M203", -1, -1],
		["FlareYellow_M203", -1, -1],
		["SmokeShell", -1, -1],
		["SmokeShellRed", -1, -1],
		["SmokeShellGreen", -1, -1],
		["SmokeShellYellow", -1, -1],
		["SmokeShellPurple", -1, -1],
		["SmokeShellBlue", -1, -1],
		["SmokeShellOrange", -1, -1],
		["HandGrenade_West", -1, -1]
	];

//Blufor SOBR
_copshop_sobr =
	[
		["M9SD", -1, -1],
		["Rnd_9x19_M9SD", -1, -1],
		["G36A_camo", -1, -1],
		["G36C_camo", -1, -1],
		["G36K_camo", -1, -1],
		["G36_C_SD_camo", -1, -1],
		["Rnd_556x45_G36", -1, -1],
		["Rnd_556x45_G36SD", -1, -1],
		["Rnd_556x45_BetaCMag", -1, -1],
		["BAF_L85A2_RIS_Holo", -1, -1],
		["BAF_L85A2_UGL_Holo", -1, -1],
		["BAF_L85A2_RIS_ACOG", -1, -1],
		["BAF_L85A2_UGL_ACOG", -1, -1],
		["BAF_L85A2_RIS_SUSAT", -1, -1],
		["BAF_L85A2_UGL_SUSAT", -1, -1],
		["BAF_L86A2_ACOG", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["M4A1_Aim_camo", -1, -1],
		["M4A1_HWS_GL_camo", -1, -1],
		["M4A3_RCO_GL_EP1", -1, -1],
		["M4A3_CCO_EP1", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["M4A1_AIM_SD_camo", -1, -1],
		["M4A1_HWS_GL_SD_Camo", -1, -1],
		["Rnd_556x45_StanagSD", -1, -1],
		["SCAR_H_CQC_CCO", -1, -1],
		["SCAR_H_STD_EGLM_Spect", -1, -1],
		["SCAR_H_LNG_Sniper", -1,-1],
		["rnd_762x51_B_SCAR",  -1, -1],
		["SCAR_H_CQC_CCO_SD", -1, -1],
		["Rnd_762x51_SB_SCAR",  -1, -1],
		["M24", -1, -1],
		["M24_des_EP1", -1, -1],
		["Rnd_762x51_M24", -1, -1],
		["M240", -1, -1],
		["m240_scoped_EP1", -1, -1],
		["Rnd_762x51_M240", -1, -1],
		["Mk_48", -1, -1],
		["Mk_48_DES_EP1", -1, -1],
		["M60A4_EP1", -1, -1],
		["M249_200", -1, -1],
		["M249_EP1", -1, -1],
		["Rnd_100_M249", -1, -1],
		["M249_m145_EP1", -1, -1],
		["Rnd_100_M249", -1, -1],
		["DMR", -1, -1],
		["M14_EP1", -1, -1],
		["Rnd_762x51_DMR", -1, -1],
		["BAF_LRR_scoped", -1, -1],
		["Rnd_86x70_L115A1", -1, -1],
		["MAAWS", -1, -1],
		["MAAWS_HEAT", -1, -1],
		["MAAWS_HEDP", -1, -1],
		["SMAW", -1, -1],
		["SMAW_HEAA", -1, -1],
		["SMAW_HEDP", -1, -1],
		["M47Launcher_EP1", -1, -1],
		["Dragon_mag", -1, -1],	
		["Stinger", -1, -1],
		["Stinger_mag", -1, -1],
		["M32", -1, -1],
		["Rnd_HE", -1, -1],
		["Rnd_Smoke", -1, -1],
		["Rnd_SmokeRed", -1, -1],
		["Rnd_SmokeGreen", -1, -1],
		["Rnd_SmokeYellow", -1, -1],
		["Rnd_FlareWhite", -1, -1],
		["Rnd_FlareGreen", -1, -1],
		["Rnd_FlareRed", -1, -1],
		["Rnd_FlareYellow", -1, -1],
		["Rnd_HE_M203", -1, -1],
		["Rnd_Smoke_M203", -1, -1],
		["Rnd_SmokeRed_M203", -1, -1],
		["Rnd_SmokeGreen_M203", -1, -1],
		["Rnd_SmokeYellow_M203", -1, -1],
		["FlareWhite_M203", -1, -1],
		["FlareGreen_M203", -1, -1],
		["FlareRed_M203", -1, -1],
		["FlareYellow_M203", -1, -1],
		["SmokeShell", -1, -1],
		["SmokeShellRed", -1, -1],
		["SmokeShellGreen", -1, -1],
		["SmokeShellYellow", -1, -1],
		["SmokeShellPurple", -1, -1],
		["SmokeShellBlue", -1, -1],
		["SmokeShellOrange", -1, -1],
		["HandGrenade_West", -1, -1],
		["PipeBomb", -1, -1],
		["Mine", -1, -1]
	];



//Terror Shop
_terrorshop_buy = 
	[
		["handy", -1, -1],
		["GPS_ill", -1, -1],
		["Binocular_ill", -1, -1],
		["Binocular_Vector_ill", -1, -1],
		["NVGoggles_ill", -1, -1],
		["lockpick", -1, -1],
		["medikit", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["kanister", -1, -1],
		["supgrade1", -1, -1],
		["supgrade2", -1, -1],
		["supgrade3", -1, -1],
		["supgrade4", -1, -1],
		["supgrade5", -1, -1],
		["nitro", -1, -1],
		["vclammo", -1, -1],
		["Mammo_HE", -1, -1],
		["Mammo_WP", -1, -1],
		["Mammo_IL", -1, -1],
		["gasmask", -1, -1],
		["stun_light_ter", -1, -1],
		["selbstmordbombe", -1, -1],
		["fernzuenderbombe", -1, -1],
		["zeitzuenderbombe", -1, -1],
		["aktivierungsbombe", -1, -1],
		["geschwindigkeitsbombe", -1, -1],
		["fernzuender", -1, -1],
		["Colt_ill", -1, -1],
		["Rnd_45ACP_1911", -1, -1],
		["revolver_ill", -1, -1],
		["revolver_gold_EP1", -1, -1],
		["Rnd_45ACP", -1, -1],
		["Makarov", -1, -1],
		["MakarovSD", -1, -1],
		["Rnd_9x18_Makarov", -1, -1],
		["Rnd_9x18_MakarovSD", -1, -1],
		["UZI_EP1", -1, -1],
		["UZI_SD_EP1", -1, -1],
		["Rnd_9x19_UZI", -1, -1],
		["Rnd_9x19_UZI_SD", -1, -1],
		["Sa61_EP1", -1, -1],
		["Rnd10_765x17_Ball", -1, -1],
		["Rnd20_765x17_Ball", -1, -1],
		["Saiga_ill", -1, -1],
		["Rnd_B_Saiga12_74Slug", -1, -1],
		["Rnd_B_Saiga12_Pellets", -1, -1],
		["LeeEnfield_ILL", -1, -1],
		["x_303", -1, -1],
		["FN_FAL_ILL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["AK_47_M", -1, -1],
		["AK_47_S", -1, -1],
		["AKS_GOLD", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["Sa58P_EP1", -1, -1],
		["Sa58V_EP1", -1, -1],
		["Sa58V_CCO_EP1", -1, -1],
		["Sa58V_RCO_EP1", -1, -1],
		["Rnd_762x39_SA58", -1, -1],
		["AKS74U", -1, -1],
		["AKS_74_UN_kobra", -1, -1],
		["RPK_74",  -1, -1],
		["AK74", -1, -1],
		["AK74GL", -1, -1],
		["AKS_74", -1, -1],
		["AKS74kobra", -1, -1],
		["AKS74kobragl", -1, -1],
		["AKS74pso", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["Rnd_545x39_AKSD",	 -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["PK", -1, -1],
		//["UK59_ACR", -1, -1],
		["Rnd_762x54_PK", -1, -1],
		["SVD", -1, -1],
		["Rnd_762x54_SVD", -1, -1],
		["CZ_550_ill", -1, -1],
		["x_22_LR_17_HMR", -1, -1],
		["RPG7V", -1, -1],
		["PG7V",  -1, -1],
		["PG7VR", -1, -1],
		["PG7VL", -1, -1],
		["OG7", -1, -1],
		["HandGrenade_East", -1, -1],
		["Stone", -1, -1],
		["SmokeShell_ill", -1, -1],
		["M79", -1, -1],
		["Rnd_HE_M203", -1, -1],
		["Rnd_HE_GP25", -1, -1],
		["FlareWhite_GP25", -1, -1],
		["FlareGreen_GP25", -1, -1],
		["FlareRed_GP25", -1, -1],
		["FlareYellow_GP25", -1, -1],
		["Rnd_SMOKE_GP25", -1, -1],
		["Rnd_SmokeRed_GP25", -1, -1],
		["Rnd_SmokeGreen_GP25", -1, -1],
		["Rnd_SmokeYellow_GP25", -1, -1],
		["MineE", -1, -1],
		["Garbage IED Small", -1, -1],
		["Garbage IED Large", -1, -1],
		["Ground IED Small", -1, -1],
		["Ground IED Large", -1, -1],
		["TK_ALICE_Pack_EP1", -1, -1],
		["TK_Assault_Pack_EP1", -1, -1],
		["TK_RPG_Backpack_EP1", -1, -1],
		["Tripod_Bag", -1, -1],
		["DSHkM_Mini_TriPod_TK_GUE_Bag_EP1", -1, -1],
		["DSHKM_TK_GUE_Bag_EP1", -1, -1],
		["2b14_82mm_TK_INS_Bag_EP1", -1, -1],
		["ziptie", -1, -1]
	];

//Smuggler Weapons
_smgrw =
	[
		["handy", -1, -1],
		["GPS_ill", -1, -1],
		["Binocular_ill", -1, -1],
		["NVGoggles_ill", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["lockpick", -1, -1],
		["lighter", -1, -1],
		["Fuelline", -1, -1],
		["kanister", -1, -1],
		["medikit", -1, -1],
		["stun_light_ill", -1, -1],
		["M9_ill", -1, -1],
		["Rnd_9x19_M9", -1, -1],
		["Colt_ill", -1, -1],
		["Rnd_45ACP_1911", -1, -1],
		["revolver_ill", -1, -1],
		["revolver_gold_EP1", -1, -1],
		["Rnd_45ACP", -1, -1],
		["Makarov", -1, -1],
		["MakarovSD", -1, -1],
		["Rnd_9x18_Makarov", -1, -1],
		["Rnd_9x18_MakarovSD", -1, -1],
		["UZI_EP1", -1, -1],
		["UZI_SD_EP1", -1, -1],
		["Rnd_9x19_UZI", -1, -1],
		["Rnd_9x19_UZI_SD", -1, -1],
		["Sa61_EP1", -1, -1],
		["Rnd10_765x17_Ball", -1, -1],
		["Rnd20_765x17_Ball", -1, -1],
		["Rnd_9x19_M9", -1, -1],
		["Saiga_ill", -1, -1],
		["Rnd_B_Saiga12_74Slug", -1, -1],
		["Rnd_B_Saiga12_Pellets", -1, -1],
		["M16A2_ill", -1, -1],
		["M4A1_ill", -1, -1],
		["G36C_ill", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["Rnd_556x45_G36", -1, -1],
		["AK_47_M", -1, -1],
		["AK_47_S", -1, -1],
		["AKS_GOLD", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["AKS74U", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["LeeEnfield_ILL", -1, -1],
		["x_303", -1, -1],
		["FN_FAL_ILL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["ziptie", -1, -1]
	];

//Smuggler Vehicles
_smgrveh =
	[
		["Lada1_ill", 5, 10],
		["Lada2_ill", 5, 10],
		["VolhaLimo_TK_CIV_ill", 5, 10],
		["Car_Sedan_ill", 5, 10],
		["VWGolf_ill", 5, 10],
		["LandRover_TK_CIV_ill", 5, 10],
		["hilux1_civil_3_open_ill", 5, 10],
		["Ural_TK_CIV_ill", 5, 10],
		["V3S_Open_TK_CIV_ill", 5, 10],
		["Offroad_DSHKM_INS", 5, 10],
		["Pickup_PK_INS", 5, 10]
	];

_fm = 
	[
		["perch", -1, -1],
		["trout",  -1, -1],
		["walleye",  -1, -1],
		["bass", -1, -1]
	];

_bm = 
	[
		["rabbit", -1, -1],
		["chicken", -1, -1],
		["cow", -1, -1],
		["sheep", -1, -1]
	];

_bm1 = 
	[
		["boar", -1, -1],
		["goat", -1, -1],
		["dog", -1, -1]
	];
// Drug Shop
_hash = 
	[
		["marijuana", -1, -1],
		["cocaine", -1, -1],
		["lsd", -1, -1]
	];
// Insurgent Weapons
_igs = 
	[
		["GPS_ill", -1, -1],
		["Binocular_ill", -1, -1],
		["Binocular_Vector_ill", -1, -1],
		["NVGoggles_ill", -1, -1],
		["Colt_ill", -1, -1],
		["Rnd_45ACP_1911", -1, -1],
		["revolver_ill", -1, -1],
		["revolver_gold_EP1", -1, -1],
		["Rnd_45ACP", -1, -1],
		["Makarov", -1, -1],
		["MakarovSD", -1, -1],
		["Rnd_9x18_Makarov", -1, -1],
		["Rnd_9x18_MakarovSD", -1, -1],
		["UZI_EP1", -1, -1],
		["UZI_SD_EP1", -1, -1],
		["Rnd_9x19_UZI", -1, -1],
		["Rnd_9x19_UZI_SD", -1, -1],
		["Sa61_EP1", -1, -1],
		["Rnd10_765x17_Ball", -1, -1],
		["Rnd20_765x17_Ball", -1, -1],
		["Saiga_ill", -1, -1],
		["Rnd_B_Saiga12_74Slug", -1, -1],
		["Rnd_B_Saiga12_Pellets", -1, -1],
		["LeeEnfield_ILL", -1, -1],
		["x_303", -1, -1],
		["FN_FAL_ILL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["Sa58P_EP1", -1, -1],
		["Sa58V_EP1", -1, -1],
		["Rnd_762x39_SA58", -1, -1],
		["AK_47_M", -1, -1],
		["AK_47_S", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["AKS74U", -1, -1],
		["AKS_74_UN_kobra", -1, -1],
		["RPK_74",  -1, -1],
		["AK74", -1, -1],
		["AK74GL", -1, -1],
		["AKS_74", -1, -1],
		["AKS74kobra", -1, -1],
		["AKS74kobragl", -1, -1],
		["AKS74pso", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["Rnd_545x39_AKSD",	 -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["PK", -1, -1],
		//["UK59_ACR", -1, -1],
		["Rnd_762x54_PK", -1, -1],
		["SVD", -1, -1],
		["Rnd_762x54_SVD", -1, -1],
		["CZ_550_ill", -1, -1],
		["x_22_LR_17_HMR", -1, -1],
		["RPG7V", -1, -1],
		["PG7V",  -1, -1],
		["PG7VR", -1, -1],
		["PG7VL", -1, -1],
		["OG7", -1, -1],
		["RPG18", -1, -1],
		["RPG18_mag", -1, -1],
		["HandGrenade_East", -1, -1],
		["Stone", -1, -1],
		["SmokeShell_ill", -1, -1],
		["M79", -1, -1],
		["Rnd_HE_M203", -1, -1],
		["Rnd_HE_GP25", -1, -1],
		["FlareWhite_GP25", -1, -1],
		["FlareGreen_GP25", -1, -1],
		["FlareRed_GP25", -1, -1],
		["FlareYellow_GP25", -1, -1],
		["Rnd_SMOKE_GP25", -1, -1],
		["Rnd_SmokeRed_GP25", -1, -1],
		["Rnd_SmokeGreen_GP25", -1, -1],
		["Rnd_SmokeYellow_GP25", -1, -1],
		["MineE", -1, -1],
		["GarbageIEDSmall_PMC", -1, -1],
		["GroundIEDSmall_PMC", -1, -1],
		["GarbageIEDLarge_PMC", -1, -1],
		["GroundIEDLarge_PMC", -1, -1],
		["TimeBomb", -1, -1],
		["PipeBomb", -1, -1],
		["TK_ALICE_Pack_EP1", -1, -1],
		["TK_Assault_Pack_EP1", -1, -1],
		["TK_RPG_Backpack_EP1", -1, -1],
		["Tripod_Bag", -1, -1],
		["DSHkM_Mini_TriPod_TK_GUE_Bag_EP1", -1, -1],
		["DSHKM_TK_GUE_Bag_EP1", -1, -1],
		["KORD_high_TK_Bag_EP1", -1, -1],
		["KORD_TK_Bag_EP1", -1, -1],	
		["AGS_TK_Bag_EP1", -1, -1],
		["SPG9_TK_GUE_Bag_EP1", -1, -1],
		["2b14_82mm_TK_Bag_EP1", -1, -1]
	];
// Insurgetn Heli
_ihs = 
	[
		["UH1H_TK_EP1", -1, -1],
		["Ka137_PMC",-1,-1],
		["Ka137_MG_PMC", -1, -1],
		["Mi17_TK_EP1",-1 ,-1],
		["Mi24_D_TK_EP1",-1 ,-1]
	];
// Insurgetn Supply
_isup = 
	[
		["handy", -1, -1],
		["lockpick", -1, -1],
		["medikit", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["kanister", -1, -1],
		["supgrade1", -1, -1],
		["supgrade2", -1, -1],
		["supgrade3", -1, -1],
		["nitro", -1, -1],
		["vclammo", -1, -1],
		["Mammo_HE", -1, -1],
		["Mammo_WP", -1, -1],
		["Mammo_IL", -1, -1],
		["selbstmordbombe", -1, -1],
		["fernzuenderbombe", -1, -1],
		["zeitzuenderbombe", -1, -1],
		["aktivierungsbombe", -1, -1],
		["geschwindigkeitsbombe", -1, -1],
		["fernzuender", -1, -1],
		["gasmask", -1, -1],
		["stun_light_ter", -1, -1],
		["ziptie", -1, -1]
	];
// Insurgent Light Vehicles
_bt = 
	[
		["Old_bike_TK_INS_EP1", -1, -1],
		["TT650_TK_EP1", -1, -1],
		["UAZ_Unarmed_TK_CIV_EP1", -1, -1],
		["BAF_Offroad_D", -1, -1],
		["Pickup_PK_TK_GUE_EP1", -1, -1],
		["Offroad_DSHKM_TK_GUE_EP1", -1, -1],
		["LandRover_MG_TK_INS_EP1",-1,-1],
		//["LandRover_SPG9_TK_INS_EP1",-1,-1],
		["UAZ_AGS30_TK_EP1", -1, -1],
		["Offroad_SPG9_TK_GUE_EP1", -1, -1],
		["V3S_Open_TK_EP1", -1, -1],
		["V3S_Refuel_TK_GUE_EP1", -1, -1],
		["V3S_Repair_TK_GUE_EP1", -1, -1],
		["V3S_Reammo_TK_GUE_EP1", -1, -1],
		["V3S_Supply_TK_GUE_EP1", -1, -1],
		["V3S_Salvage_TK_GUE_EP1", -1, -1],
		["V3S_TK_GUE_EP1", -1, -1]
	];

_ihvy = 
	[
		//["LandRover_MG_TK_EP1", -1, -1],
		["LandRover_Special_CZ_EP1", -1, -1],
		["BTR40_TK_GUE_EP1", -1, -1],
		["BTR40_MG_TK_GUE_EP1", -1, -1],
		["BRDM2_HQ_Gue", -1, -1],
		["BRDM2_ATGM_TK_EP1", -1, -1],
		["M113Ambul_TK_EP1", -1, -1],
		["M113_TK_EP1", -1, -1],
		["Ural_ZU23_TK_EP1", -1, -1],
		["GRAD_TK_EP1", -1, -1],
		["T34_TK_EP1", -1, -1],
		["T55_TK_EP1", -1, -1],
		["MAZ_543_SCUD_TK_EP1", -1, -1],
		["ZU23_TK_EP1", -1, -1],
		["Igla_AA_pod_TK_EP1", -1, -1]
	];

_iair = 
	[
		["An2_TK_EP1", -1, -1]
	];

// Opfor Weapons
_rgs = 
	[
		["GPS_ill", -1, -1],
		["Binocular_ill", -1, -1],
		["Binocular_Vector_ill", -1, -1],
		["NVGoggles_ill", -1, -1],
		["Laserdesignator", -1, -1],
		["Laserbatteries", -1, -1],
		["Colt_ill", -1, -1],
		["Rnd_45ACP_1911", -1, -1],
		["revolver_ill", -1, -1],
		["revolver_gold_EP1", -1, -1],
		["Rnd_45ACP", -1, -1],
		["M9",-1,-1],
		["Rnd_9x19_M9SD",-1,-1],
		["Makarov", -1, -1],	
		["Rnd_9x18_Makarov", -1, -1],
		["UZI_EP1", -1, -1],
		["Rnd_9x19_UZI", -1, -1],
		["Sa61_EP1", -1, -1],
		["Rnd10_765x17_Ball", -1, -1],
		["Rnd20_765x17_Ball", -1, -1],
		["Bizon", -1, -1],
		["Rnd_9x19_Bizon", -1, -1],
		["Saiga12K", -1, -1],
		["Rnd_B_Saiga12_74Slug", -1, -1],
		["Rnd_B_Saiga12_Pellets", -1, -1],
		["LeeEnfield_ILL", -1, -1],
		["x_303", -1, -1],
		["FN_FAL_ILL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["AK_47_M", -1, -1],
		["AK_47_S", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["Sa58P_EP1", -1, -1],
		["Sa58V_EP1", -1, -1],
		["Rnd_762x39_SA58", -1, -1],
		["AKS74U", -1, -1],
		["AKS_74_UN_kobra", -1, -1],
		["RPK_74",  -1, -1],
		["AK74", -1, -1],
		["AK74GL", -1, -1],
		["AKS_74", -1, -1],
		["AKS74kobra", -1, -1],
		["AKS74kobragl", -1, -1],
		["AKS74pso", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["Rnd_545x39_AKSD",	 -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["AK107pso", -1, -1],
		["AK107GLpso", -1, -1],
		["AK_107_kobra", -1, -1],
		["AK_107_GL_kobra", -1, -1],
		["Sa58V_CCO_EP1", -1, -1],
		["Sa58V_RCO_EP1", -1, -1],
		["Rnd_762x39_SA58", -1, -1],
		["PK", -1, -1],
		//["Pecheneg", -1, -1],
		["Rnd_762x54_PK", -1, -1],
		["SVD", -1, -1],
		["SVD_CAMO", -1, -1],
		["SVD_des_EP1", -1, -1],
		["Rnd_762x54_SVD", -1, -1],
		["M24_des_EP1", -1, -1],
		["Rnd_762x51_M24", -1, -1],
		["CZ_550_ill", -1, -1],
		["x_22_LR_17_HMR", -1, -1],
		["RPG7V", -1, -1],
		["PG7V",  -1, -1],
		["PG7VR", -1, -1],
		["PG7VL", -1, -1],
		["OG7", -1, -1],
		["RPG18", -1, -1],
		["RPG18_mag",  -1, -1],
		["M79", -1, -1],
		["Rnd_HE_M203", -1, -1],
		["Rnd_HE_GP25", -1, -1],
		["FlareWhite_GP25", -1, -1],
		["FlareGreen_GP25", -1, -1],
		["FlareRed_GP25", -1, -1],
		["FlareYellow_GP25", -1, -1],
		["Rnd_SMOKE_GP25", -1, -1],
		["Rnd_SmokeRed_GP25", -1, -1],
		["Rnd_SmokeGreen_GP25", -1, -1],
		["Rnd_SmokeYellow_GP25", -1, -1],
		["HandGrenade_East", -1, -1],
		["Stone", -1, -1],
		["SmokeShell_ill", -1, -1],
		["MineE", -1, -1],
		["PipeBomb", -1, -1],
		["TK_ALICE_Pack_EP1", -1, -1],
		["TK_Assault_Pack_EP1", -1, -1],
		["TK_RPG_Backpack_EP1", -1, -1],
		["Tripod_Bag", -1, -1],
		["DSHkM_Mini_TriPod_TK_GUE_Bag_EP1", -1, -1],
		["DSHKM_TK_GUE_Bag_EP1", -1, -1],
		["KORD_high_TK_Bag_EP1", -1, -1],
		["KORD_TK_Bag_EP1", -1, -1],
		["2b14_82mm_TK_Bag_EP1", -1, -1]
	];
// Opfor Supply
_rsup = 
	[
		["handy", -1, -1],
		["lockpick", -1, -1],
		["medikit", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["kanister", -1, -1],
		["supgrade1", -1, -1],
		["supgrade2", -1, -1],
		["supgrade3", -1, -1],
		["supgrade4", -1, -1],
		["supgrade5", -1, -1],
		["nitro", -1, -1],
		["vclammo", -1, -1],
		["Mammo_HE", -1, -1],
		["Mammo_WP", -1, -1],
		["Mammo_IL", -1, -1],
		["gasmask", -1, -1],
		["stun_light", -1, -1],
		["stun_full", -1, -1],
		["ziptie", -1, -1]
	];
// Opfor Helicopters
_rhs = 
	[
		["UH1H_TK_GUE_EP1", -1, -1],
		["CH_47F_BAF", -1, -1],
		["Mi17_medevac_Ins", -1, -1],
		["Mi17_INS", -1, -1],
		["Mi17_rockets_RU", -1, -1],
		["Mi24_D", -1, -1],
		["Mi24_P", -1, -1],
		["Mi24_V", -1, -1],
		//["Ka52Black", -1, -1],
		["Ka52", -1, -1]
	];
// Opfor Light Transport
_rlt = 
	[
		["Old_bike_TK_INS_EP1", -1, -1],
		["TT650_TK_EP1", -1, -1],
		["UAZ_INS", -1, -1],
		["BAF_Offroad_W", -1, -1],
		["UAZ_AGS30_INS", -1, -1],
		["UAZ_MG_INS", -1, -1],
		["Kamaz", -1, -1],
		["KamazOpen", -1, -1],
		["KamazReammo", -1, -1],
		["KamazRefuel", -1, -1],
		["KamazRepair", -1, -1]
	];
// Opfor Heavy Vehicles
_rhvy = 
	[
		["UAZ_SPG9_INS", -1, -1],
		["GAZ_Vodnik", -1, -1],
		["GAZ_Vodnik_MedEvac", -1, -1],
		["GAZ_Vodnik_HMG", -1, -1],
		["BTR40_MG_TK_INS_EP1", -1, -1],
		["BTR40_TK_INS_EP1", -1, -1],
		["BRDM2_INS", -1, -1],
		["BRDM2_ATGM_INS", -1, -1],
		["BMP2_INS", -1, -1],
		["BMP2_Ambul_INS", -1, -1],
		["BMP2_HQ_INS", -1, -1],
		["T34_TK_GUE_EP1",-1,-1],
		["T55_TK_GUE_EP1", -1, -1],
		["T72_INS",-1,-1],
		["T90", -1, -1],
		["Ural_ZU23_INS", -1, -1],
		["ZSU_INS", -1, -1],
		["2S6M_Tunguska", -1, -1],
		["GRAD_INS", -1, -1],
		["ARTY_30Rnd_122mmHE_D30", -1, -1],
		["ARTY_30Rnd_122mmWP_D30", -1, -1],
		["ARTY_30Rnd_122mmSADARM_D30", -1, -1],
		["ZU23_Ins", -1, -1],
		["Igla_AA_pod_TK_EP1", -1, -1]
	];

_rair = 
	[
		["Pchela1T", -1, -1],
		["L39_TK_EP1", -1, -1],
		["Su25_Ins", -1, -1],
		["Su27", -1, -1],
		["Su34", -1, -1]
	];

_carparts = 
	[
		["medikit", -1, -1],
		["kanister",  -1, -1],
		["kleinesreparaturkit",  -1, -1],
		["reparaturkit",  -1, -1],
		["nitro",  -1, -1],
		["supgrade1",  -1, -1],
		["supgrade2",  -1, -1],
		["supgrade3",  -1, -1],
		["supgrade4",  -1, -1],
		["supgrade5", -1, -1]
	];

_as_2 = 
	[
		["Igla_AA_pod_TK_EP1", 5, 5],
		["V3S_Refuel_TK_GUE_EP1", 5, 5],
		["V3S_Repair_TK_GUE_EP1", 5, 5],
		["V3S_Reammo_TK_GUE_EP1", 5, 5],
		["V3S_Supply_TK_GUE_EP1", 5, 5],
		["V3S_Salvage_TK_GUE_EP1", 5, 5],
		["Pickup_PK_GUE", 5, 5],
		["Offroad_DSHKM_Gue", 5, 5],
		["GAZ_Vodnik", 5, 5],
		["An2_TK_EP1", 5, 5],
		["Ka137_PMC", 5, 5],
		["Ka137_MG_PMC", 5, 5],
		["UH1H_TK_EP1", 5, 5],
		["Mi17_TK_EP1", 5, 5]
	];

// Cop
_fs1 =
	[
		["SearchLight_UN", -1, -1],
		["Wire", -1, -1],
		["Hedgehog", -1, -1],
		["BagFenceC", -1, -1],
		["BagFenceE", -1, -1],
		["BagFenceL", -1, -1],
		["BagFenceR", -1, -1],
		["BagFenceS", -1, -1],
		["NBagFenceC", -1, -1],
		["NBagFenceL", -1, -1],
		["NBagFenceR", -1, -1],
		["HBarrC", -1, -1],
		["BunkerS", -1, -1],
		["ZavoraAnim", -1, -1],
		["roadcone", -1, -1],
		["Land_coneLight", -1, -1],
		["Land_arrows_yellow_L", -1, -1],
		["Land_arrows_yellow_R", -1, -1],
		["Land_arrows_desk_R", -1, -1],
		["Land_arrows_desk_L", -1, -1],
		["Land_CncBlock_Stripes", -1, -1],
		["RoadBarrier_light", -1, -1],
		["RoadBarrier_long", -1, -1],
		["Sign_Danger", -1, -1],
		["Sign_Checkpoint_US_EP1", -1, -1],
		["Land_CamoNetVar_NATO", -1, -1],
		["Land_CamoNetB_NATO", -1, -1],
		["Land_CamoNet_NATO", -1, -1]
	];

// PMC
_fs2 =
	[
		["SearchLight_US", -1, -1],
		["Wire", -1, -1],
		["Hedgehog", -1, -1],
		["BagFenceC", -1, -1],
		["BagFenceE", -1, -1],
		["BagFenceL", -1, -1],
		["BagFenceR", -1, -1],
		["BagFenceS", -1, -1],
		["NBagFenceC", -1, -1],
		["NBagFenceL", -1, -1],
		["NBagFenceR", -1, -1],
		["BunkerS", -1, -1],
		["ZavoraAnim", -1, -1],
		["roadcone", -1, -1],
		["Land_CncBlock_Stripes", -1, -1],
		["RoadBarrier_light", -1, -1],
		["Sign_Danger", -1, -1],
		["Sign_Checkpoint_US_EP1", -1, -1],
		["Land_Campfire_burning",-1,-1]
	];

// Factory shop
_fs3 =
	[
		["GuerillaCacheBox_EP1", -1, -1],
		["Fort_Crate_wood", -1, -1],
		["BagFenceC", -1, -1],
		["BagFenceE", -1, -1],
		["BagFenceL", -1, -1],
		["BagFenceR", -1, -1],
		["BagFenceS", -1, -1],
		["NBagFenceC", -1, -1],
		["NBagFenceL", -1, -1],
		["NBagFenceR", -1, -1],
		["ZavoraAnim", -1, -1],
		["Land_CncBlock_Stripes", -1, -1],
		["Sign_Danger", -1, -1]
	];

// Terror
_fs4 =
	[
		["GuerillaCacheBox_EP1", -1, -1],
		["Wire", -1, -1],
		["Hedgehog", -1, -1],
		["Fort_Crate_wood", -1, -1],
		["BagFenceC", -1, -1],
		["BagFenceE", -1, -1],
		["BagFenceL", -1, -1],
		["BagFenceR", -1, -1],
		["BagFenceS", -1, -1],
		["NBagFenceC", -1, -1],
		["NBagFenceL", -1, -1],
		["NBagFenceR", -1, -1],
		["BunkerS", -1, -1],
		["ZavoraAnim", -1, -1],
		["Land_CncBlock_Stripes", -1, -1],
		["RoadBarrier_light", -1, -1],
		["Sign_Danger", -1, -1],
		["Fort_Barricade_EP1", -1, -1],
		["Fort_Barricade", -1, -1],
		["Land_CamoNetVar_EAST", -1, -1],
		["Land_CamoNetB_EAST", -1, -1],
		["Land_CamoNet_EAST", -1, -1]
	];

// Opfor
_fs5 =
	[
		["SearchLight_UN", -1, -1],
		["GuerillaCacheBox_EP1", -1, -1],
		["Wire", -1, -1],
		["Hedgehog", -1, -1],
		["BagFenceC", -1, -1],
		["BagFenceE", -1, -1],
		["BagFenceL", -1, -1],
		["BagFenceR", -1, -1],
		["BagFenceS", -1, -1],
		["NBagFenceC", -1, -1],
		["NBagFenceL", -1, -1],
		["NBagFenceR", -1, -1],
		["HBarrC", -1, -1],
		["BunkerS", -1, -1],
		["ZavoraAnim", -1, -1],
		["roadcone", -1, -1],
		["Land_coneLight", -1, -1],
		["Land_CncBlock_Stripes", -1, -1],
		["RoadBarrier_light", -1, -1],
		["RoadBarrier_long", -1, -1],
		["Sign_Danger", -1, -1],
		["Sign_Checkpoint_TK_EP1", -1, -1],
		["Land_CamoNetVar_EAST", -1, -1],
		["Land_CamoNetB_EAST", -1, -1],
		["Land_CamoNet_EAST", -1, -1]
	];

// Insurgents
_fs6 =
	[
		["GuerillaCacheBox_EP1", -1, -1],
		["Wire", -1, -1],
		["Hedgehog", -1, -1],
		["Fort_Crate_wood", -1, -1],
		["BagFenceC", -1, -1],
		["BagFenceE", -1, -1],
		["BagFenceL", -1, -1],
		["BagFenceR", -1, -1],
		["BagFenceS", -1, -1],
		["NBagFenceC", -1, -1],
		["NBagFenceL", -1, -1],
		["NBagFenceR", -1, -1],
		["HBarrC", -1, -1],
		["BunkerS", -1, -1],
		["ZavoraAnim", -1, -1],
		["roadcone", -1, -1],
		["Land_CncBlock_Stripes", -1, -1],
		["RoadBarrier_light", -1, -1],
		["Sign_Danger", -1, -1],
		["Fort_Barricade_EP1", -1, -1],
		["Fort_Barricade", -1, -1],
		["Land_CamoNetVar_EAST", -1, -1],
		["Land_CamoNetB_EAST", -1, -1],
		["Land_CamoNet_EAST", -1, -1]
	];
	
	// VIP FORT SHOP
_fsvip =
	[
		["GuerillaCacheBox_EP1_vip", -1, -1]
	
	];

//Hospital
_hp =
	[
		["S1203_ambulance_EP1", -1, -1],
		["HMMWV_Ambulance_CZ_DES_EP1", -1, -1]
	];

//Russian Arms Dealer
_russ =
	[
		["GPS_ill", -1, -1],
		["Binocular_ill", -1, -1],
		["NVGoggles_ill", -1, -1],
		["lockpick", -1, -1],
		["lighter", -1, -1],
		["handy", -1, -1],
		["medikit", -1, -1],
		["stun_light_ill", -1, -1],
		["M9_ill", -1, -1],
		["Rnd_9x19_M9", -1, -1],
		["Colt_ill", -1, -1],
		["Rnd_45ACP_1911", -1, -1],
		["revolver_ill", -1, -1],
		["revolver_gold_EP1", -1, -1],
		["Rnd_45ACP", -1, -1],
		["Makarov", -1, -1],
		["MakarovSD", -1, -1],
		["Rnd_9x18_Makarov", -1, -1],
		["Rnd_9x18_MakarovSD", -1, -1],
		["UZI_EP1", -1, -1],
		["UZI_SD_EP1", -1, -1],
		["Rnd_9x19_UZI", -1, -1],
		["Rnd_9x19_UZI_SD", -1, -1],
		["Sa61_EP1", -1, -1],
		["Rnd10_765x17_Ball", -1, -1],
		["Rnd20_765x17_Ball", -1, -1],
		["Saiga_ill", -1, -1],
		["Rnd_B_Saiga12_74Slug", -1, -1],
		["Rnd_B_Saiga12_Pellets", -1, -1],
		["M16A2_ill", -1, -1],
		["M4A1_ill", -1, -1],
		["G36C_ill", -1, -1],
		["Rnd_20_Stanag", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["Rnd_556x45_G36", -1, -1],
		["AK_47_M", -1, -1],
		["AK_47_S", -1, -1],
		["AKS_GOLD", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["AKS74U", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["LeeEnfield_ILL", -1, -1],
		["x_303", -1, -1],
		["FN_FAL_ILL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["RPK_74_ill",  -1, -1],
		["AK74_ill", -1, -1],
		["AK74GL_ill", -1, -1],
		["AKS_74", -1, -1],
		["AKS74kobragl_ill", -1, -1],
		["AKS74pso_ill", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["Rnd_545x39_AKSD",	 -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["PK_ill", -1, -1],
		["Rnd_762x54_PK", -1, -1],
		["SVD_ill", -1, -1],
		["Rnd_762x54_SVD", -1, -1]
	];
	
_bank = [
		["bankversicherung", -1, -1]
	];
//CIVILIAN supporter Vehicle Shop
_cdvs = 
	[
		["SUV_TK_EP1_sup", -1, -1],
		["SUV_TK_CIV_sup", -1, -1],
		["Ural_TK_CIV_EP1_sup", -1, -1],
		["UralReammo_TK_EP1_sup", -1, -1],
		["UralRefuel_TK_EP1_sup", -1, -1],
		["UralRepair_TK_EP1_sup", -1, -1],
		//["MAZ_543_SCUD_TK_EP1_sup", -1, -1],
		["MTVR_DES_EP1_sup", -1, -1],
		["LandRover_CZ_EP1_sup", -1, -1],
		["hilux1_civil_1_open_sup", -1, -1]
		//["Pickup_PK_TK_GUE_EP1_sup", -1, -1]
		//["UAZ_AGS30_INS_sup", -1, -1],
		//["UAZ_MG_INS_sup", -1, -1]
	];
	
//CIVILIAN supporter Weapons Shop
_cdws =
	[	
		["GPS_sup", -1, -1],
		["NVGoggles_sup", -1, -1],
		["Binocular_sup", -1, -1],
		["nitro_sup", -1 ,-1],
		["supgrade1_sup", -1 ,-1],
		["supgrade2_sup", -1 ,-1],
		["supgrade5_sup", -1 ,-1],
		["defuser_sup", -1 ,-1],
		["lockpick_sup", -1 ,-1],
		["medikit_sup", -1 ,-1],
		["kanister_sup", -1 , -1],
		["ziptie_sup", -1, -1],
		["reparaturkit_sup",-1 , -1],
		["vclammo", -1, -1],
		["UZI_SD_EP1_sup",-1,-1],
		["Rnd_9x19_UZI_SD_sup",-1,-1],
		["M9SD_sup",-1,-1],
		["Rnd_9x19_M9SD_sup",-1,-1],
		["Colt1911_sup",-1,-1],
		["Rnd_45ACP_1911_sup",-1,-1],
		["glock17_sup",-1,-1],
		["Rnd_9x19_glock17_sup",-1,-1],
		["m8_compact_pmc_sup",-1 , -1],
		["m8_carbine_sup",-1 , -1],
		["m8_holo_sd_sup",-1 , -1], 			
		["Rnd_556x45_G36_sup",-1 , -1],
		["Rnd_556x45_G36SD_sup",-1 , -1],
		["M16A2_sup", -1, -1],
		["M4A1_sup", -1, -1],
		["M4A1_Aim_sup", -1, -1],
		["M4A1_AIM_SD_camo_sup", -1, -1],
		["Rnd_556x45_Stanag_sup", -1, -1],
		["Rnd_556x45_StanagSD_sup", -1, -1],
		["MP5A5_sup", -1, -1],
		["MP5SD_sup", -1, -1],
		["Rnd_9x19_MP5", -1, -1],
		["Rnd_9x19_MP5SD", -1, -1],
		["revolver_gold_EP1_sup", -1, -1],
		["Rnd_45ACP_sup", -1, -1],
		["CZ_550_sup", -1, -1],
		["x_22_LR_17_HMR_sup", -1, -1],
		["AKS74kobra_sup", -1, -1],
		["AKS74U_sup", -1, -1],
		["Rnd_545x39_AK_sup", -1, -1],
		["AKS_GOLD_sup", -1, -1],
		["AK_47_M_sup", -1, -1],
		["AK_47_S_sup", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["SmokeShellYellow", -1, -1],
		["SmokeShellPurple", -1, -1],
		["SmokeShellBlue", -1, -1]
		//["PipeBomb_sup", -1, -1]
		
		
	];
	
//CIVILIAN supporter Air Shop
_cdas =
	[
		//["AH6J_EP1_m134_sup", -1, -1],
		["Mi17_Civilian_sup", -1, -1],
		["MV22_sup", -1, -1],
		["BAF_Merlin_HC3_sup", -1 ,-1]
	];

//BLUFOR supporter Vehicle Shop
_cpdvs = 
	[
		["SUV_TK_EP1_sup", -1, -1],
		["HMMWV_DES_EP1_sup",-1,-1],
		["Ural_TK_CIV_EP1_sup", -1, -1],
		["UralReammo_TK_EP1_sup", -1, -1],
		["UralRefuel_TK_EP1_sup", -1, -1],
		["UralRepair_TK_EP1_sup", -1, -1],
		["MTVR_DES_EP1_sup", -1, -1],
		["SUV_UN_EP1_retex_sup", -1, -1],
		["LandRover_CZ_EP1_sup", -1, -1],
		["hilux1_civil_1_open_sup", -1, -1],
		["HMMWV_Avenger_DES_EP1_sup", -1, -1],
		["BMP2_UN_EP1_sup", -1, -1],
		["LAV25_sup", -1, -1],
		["LAV25_HQ_sup", -1, -1],
		["M1133_MEV_EP1_sup", -1, -1],
		["M1135_ATGMV_EP1_sup", -1, -1],
		["HMMWV_M998A2_SOV_DES_EP1_sup", -1, -1]
	];
	
//BLUFOR supporter Weapons Shop
_cpdws =
	[
		["GPS_sup", -1, -1],
		["NVGoggles_sup", -1, -1],
		["Binocular_sup", -1, -1],
		["nitro_sup", -1 ,-1],
		["supgrade1_sup", -1 ,-1],
		["supgrade2_sup", -1 ,-1],
		["supgrade5_sup", -1 ,-1],
		["defuser_sup", -1 ,-1],
		["lockpick_sup", -1 ,-1],
		["medikit_sup", -1 ,-1],
		["kanister_sup", -1 , -1],
		["ziptie_sup", -1, -1],
		["reparaturkit_sup",-1 , -1],
		["vclammo", -1, -1],
		["UZI_SD_EP1_sup",-1,-1],
		["Rnd_9x19_UZI_SD_sup",-1,-1],
		["M9SD_sup",-1,-1],
		["Rnd_9x19_M9SD_sup",-1,-1],
		["Colt1911_sup",-1,-1],
		["Rnd_45ACP_1911_sup",-1,-1],
		["glock17_sup",-1,-1],
		["Rnd_9x19_glock17_sup",-1,-1],
		["Stinger_sup", -1, -1],
		["Stinger_mag_sup", -1, -1],
		["Javelin_vip", -1, -1],
		["Javelin", -1, -1],
		["M47Launcher_EP1_sup", -1, -1],
		["Dragon_mag_sup", -1, -1],
		["M4A1_HWS_GL_SD_Camo_sup", -1, -1],
		["M4A1_AIM_SD_camo_sup", -1, -1],
		["Rnd_556x45_StanagSD_sup", -1, -1],
		["AA12_PMC_sup", -1, -1],
		["Rnd_B_AA12_HE_sup", -1, -1],
		["Rnd_B_AA12_74Slug_sup", -1, -1],
		["Rnd_B_AA12_Pellets_sup", -1, -1],
		["SCAR_H_LNG_Sniper_SD_sup", -1, -1],
		["Rnd_762x51_SB_SCAR_sup", -1, -1],
		["m8_sharpshooter_sup", -1, -1],
		["m8_SAW_sup", -1, -1],
		["m8_compact_pmc_sup",-1 , -1],
		["m8_carbine_sup",-1 , -1],
		["m8_holo_sd_sup",-1 , -1], 			
		["Rnd_556x45_G36_sup",-1 , -1],
		["Rnd_556x45_G36SD_sup",-1 , -1],
		["Rnd_556x45_G36_sup", -1, -1],
		["MG36", -1, -1],
		["MG36_camo", -1, -1],
		["Rnd_556x45_BetaCMag_sup", -1, -1],
		["M24_sup", -1, -1],
		["M24_des_EP1_sup", -1, -1],
		["M40A3_sup", -1, -1],
		["Rnd_762x51_M24_sup", -1, -1],
		["M4SPR_sup", -1, -1],
		["Rnd_556x45_Stanag_sup", -1, -1],
		["M110_NVG_EP1_sup", -1, -1],
		["rnd_762x51_B_SCAR_sup", -1, -1],
		["BAF_AS50_scoped_sup", -1, -1],
		["5Rnd_127x99_as50_sup", -1, -1],
		["DMR_sup", -1, -1],
		["Rnd_762x51_DMR_sup", -1, -1],
		["BAF_L110A1_Aim", -1, -1],
		["Rnd_556x45_L110A1", -1, -1],
		["BAF_L7A2_GPMG", -1, -1],
		["Rnd_762x51_M240", -1, -1],
		["Rnd_HE_M203", -1, -1],
		["Rnd_Smoke_M203", -1, -1],
		["Rnd_SmokeRed_M203", -1, -1],
		["Rnd_SmokeGreen_M203", -1, -1],
		["Rnd_SmokeYellow_M203", -1, -1],
		["FlareWhite_M203", -1, -1],
		["SmokeShellYellow", -1, -1],
		["SmokeShellPurple", -1, -1],
		["SmokeShellBlue", -1, -1],
		["PipeBomb_sup", -1, -1]
	];
	
//BLUFOR supporter Air Shop
_cpdas =
	[
		["AH6J_EP1_sup", -1, -1],
		["UH1Y_sup", -1, -1],
		["AW159_Lynx_BAF_sup", -1, -1],
		["AH64D_EP1_sup", -1, -1],
		["BAF_Merlin_HC3_sup", -1 ,-1],
		["F35B_sup",-1,-1],
		["F35B_sup2",-1,-1]
	];

//INDEPENDENT supporter Vehicle Shop
_idvs = 
	[
		["SUV_TK_EP1_sup", -1, -1],
		["Ural_TK_CIV_EP1_sup", -1, -1],
		["UralReammo_TK_EP1_sup", -1, -1],
		["UralRefuel_TK_EP1_sup", -1, -1],
		["UralRepair_TK_EP1_sup", -1, -1],
		["GAZ_Vodnik_HMG_sup", -1, -1],
		//["MAZ_543_SCUD_TK_EP1_sup", -1, -1],
		["MTVR_DES_EP1_sup", -1, -1],
		["LandRover_CZ_EP1_sup", -1, -1],
		["hilux1_civil_1_open_sup", -1, -1],
		["BTR60_TK_EP1_sup", -1, -1],
		["BMP2_TK_EP1_sup", -1, -1],
		["Offroad_DSHKM_TK_GUE_EP1_sup", -1, -1],
		["Offroad_SPG9_TK_GUE_EP1_sup", -1, -1],
		["Pickup_PK_TK_GUE_EP1_sup", -1, -1],
		["UAZ_AGS30_INS_sup", -1, -1],
		["UAZ_MG_INS_sup", -1, -1],
		["Ural_ZU23_INS_sup", -1, -1],
		["UAZ_SPG9_INS_sup", -1, -1]
	];
	
//INDEPENDENT supporter Weapons Shop
_idws =
	[
		["GPS_sup", -1, -1],
		["NVGoggles_sup", -1, -1],
		["Binocular_sup", -1, -1],
		["Laserdesignator", -1, -1],
		["Laserbatteries", -1, -1],
		["nitro_sup", -1 ,-1],
		["supgrade1_sup", -1 ,-1],
		["supgrade2_sup", -1 ,-1],
		["supgrade5_sup", -1 ,-1],
		["defuser_sup", -1 ,-1],
		["lockpick_sup", -1 ,-1],
		["medikit_sup", -1 ,-1],
		["kanister_sup", -1 , -1],
		["ziptie_sup", -1, -1],
		["reparaturkit_sup",-1 , -1],
		["vclammo", -1, -1],
		["UZI_SD_EP1_sup",-1,-1],
		["Rnd_9x19_UZI_SD_sup",-1,-1],
		["M9SD_sup",-1,-1],
		["Rnd_9x19_M9SD_sup",-1,-1],
		["Colt1911_sup",-1,-1],
		["Rnd_45ACP_1911_sup",-1,-1],
		["glock17_sup",-1,-1],
		["Rnd_9x19_glock17_sup",-1,-1],
		["SVD_sup", -1, -1],
		["SVD_CAMO_sup", -1, -1],
		["Rnd_762x54_SVD", -1, -1],
		["VSS_Vintorez_sup", -1, -1],
		["Rnd_9x39_10_VSS", -1, -1],
		["Rnd_9x39_20_VSS", -1, -1],
		["RPK_74_sup", -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["revolver_gold_EP1_sup", -1, -1],
		["Rnd_45ACP_sup", -1, -1],
		["AKS74kobra_sup", -1, -1],
		["AKS74pso_sup", -1, -1],
		["AK_107_GL_kobra_sup", -1, -1],
		["AK_107_kobra_sup", -1, -1],
		["Rnd_545x39_AK_sup", -1, -1],
		["M47Launcher_EP1_sup", -1, -1],
		["Dragon_mag_sup", -1, -1],
		["Igla", -1, -1],
		["Igla_mag", -1, -1],
		["M4A1_HWS_GL_SD_Camo_sup", -1, -1],
		["M4A1_AIM_SD_camo_sup", -1, -1],
		["Rnd_556x45_StanagSD_sup", -1, -1],
		["AA12_PMC_sup", -1, -1],
		["Rnd_B_AA12_HE_sup", -1, -1],
		["Rnd_B_AA12_74Slug_sup", -1, -1],
		["Rnd_B_AA12_Pellets_sup", -1, -1],
		["SCAR_H_LNG_Sniper_SD_sup", -1, -1],
		["Rnd_762x51_SB_SCAR_sup", -1, -1],
		["m8_sharpshooter_sup", -1, -1],
		["m8_SAW_sup", -1, -1],
		["m8_compact_pmc_sup",-1 , -1],
		["m8_carbine_sup",-1 , -1],
		["m8_holo_sd_sup",-1 , -1], 			
		["Rnd_556x45_G36_sup",-1 , -1],
		["Rnd_556x45_G36SD_sup",-1 , -1],
		["Rnd_556x45_G36_sup", -1, -1],
		["MG36", -1, -1],
		["MG36_camo", -1, -1],
		["Rnd_556x45_BetaCMag_sup", -1, -1],
		["M24_sup", -1, -1],
		["M24_des_EP1_sup", -1, -1],
		["M40A3_sup", -1, -1],
		["Rnd_762x51_M24_sup", -1, -1],
		["M4SPR_sup", -1, -1],
		["Rnd_556x45_Stanag_sup", -1, -1],
		["M110_NVG_EP1_sup", -1, -1],
		["rnd_762x51_B_SCAR_sup", -1, -1],
		["BAF_AS50_scoped_sup", -1, -1],
		["5Rnd_127x99_as50_sup", -1, -1],
		["BAF_LRR_scoped", -1, -1],
		["Rnd_86x70_L115A1", -1, -1],
		["DMR_sup", -1, -1],
		["Rnd_762x51_DMR_sup", -1, -1],
		["BAF_L110A1_Aim", -1, -1],
		["Rnd_556x45_L110A1", -1, -1],
		["BAF_L7A2_GPMG", -1, -1],
		["Rnd_762x51_M240", -1, -1],
		["SmokeShellYellow", -1, -1],
		["SmokeShellPurple", -1, -1],
		["SmokeShellBlue", -1, -1],
		["PipeBomb_sup", -1, -1]
	];
	
//INDEPENDENT supporter Air Shop
_idas =
	[	
		//["AH6J_EP1_sup", -1, -1],
		["AH6X_EP1_sup", -1, -1],
		["Mi17_medevac_Ins_sup", -1, -1],
		["Mi24_V_sup", -1, -1]
	];

//OPFOR supporter Vehicle Shop
_odvs = 
	[
		["SUV_TK_EP1_sup", -1, -1],
		["Ural_TK_CIV_EP1_sup", -1, -1],
		["UralReammo_TK_EP1_sup", -1, -1],
		["UralRefuel_TK_EP1_sup", -1, -1],
		["UralRepair_TK_EP1_sup", -1, -1],
		["GAZ_Vodnik_HMG_sup", -1, -1],
		//["MAZ_543_SCUD_TK_EP1_sup", -1, -1],
		["MTVR_DES_EP1_sup", -1, -1],
		["LandRover_CZ_EP1_sup", -1, -1],
		["hilux1_civil_1_open_sup", -1, -1],
		["BTR90_sup", -1, -1],
		["BTR90_HQ_sup", -1, -1],
		["BMP2_TK_EP1_sup", -1, -1],
		["BMP3", -1, -1],
		["HMMWV_Avenger_sup", -1, -1],
		["UAZ_MG_CDF_sup", -1, -1],
		["UAZ_AGS30_CDF_sup", -1, -1]
	];
	
//OPFOR supporter Weapons Shop
_odws =
	[	
		["GPS_sup", -1, -1],
		["NVGoggles_sup", -1, -1],
		["Binocular_sup", -1, -1],
		["nitro_sup", -1 ,-1],
		["supgrade1_sup", -1 ,-1],
		["supgrade2_sup", -1 ,-1],
		["supgrade5_sup", -1 ,-1],
		["defuser_sup", -1 ,-1],
		["lockpick_sup", -1 ,-1],
		["medikit_sup", -1 ,-1],
		["kanister_sup", -1 , -1],
		["ziptie_sup", -1, -1],
		["reparaturkit_sup",-1 , -1],
		["vclammo", -1, -1],
		["UZI_SD_EP1_sup",-1,-1],
		["Rnd_9x19_UZI_SD_sup",-1,-1],
		["M9SD_sup",-1,-1],
		["Rnd_9x19_M9SD_sup",-1,-1],
		["Colt1911_sup",-1,-1],
		["Rnd_45ACP_1911_sup",-1,-1],
		["revolver_gold_EP1_sup", -1, -1],
		["Rnd_45ACP_sup", -1, -1],
		["glock17_sup",-1,-1],
		["Rnd_9x19_glock17_sup",-1,-1],
		["SVD_NSPU_EP1_sup", -1, -1],
		["SVD_des_EP1_sup", -1, -1],
		["SVD_CAMO_sup", -1, -1],
		["SVD_sup", -1, -1],
		["Rnd_762x54_SVD", -1, -1],
		["AKS_74_NSPU_sup", -1, -1],
		["Sa58V_CCO_EP1_sup", -1, -1],
		["Sa58V_RCO_EP1_sup", -1, -1],
		["Sa58P_EP1_sup", -1, -1],
		["Sa58V_EP1_sup", -1, -1],
		["Rnd_762x39_SA58", -1, -1],
		["KSVK_sup", -1, -1],
		["5Rnd_127x108_KSVK_sup", -1, -1],
		["AK107pso_sup", -1, -1],
		["AK_107_kobra_sup", -1, -1],
		["AKS74U_sup", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["bizon_silenced_sup", -1, -1],
		["Rnd_9x19_SD_Bizon", -1, -1],
		["Pecheneg_sup", -1, -1],
		["Rnd_762x54_PK", -1, -1],
		["RPK_74_sup", -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["Igla", -1, -1],
		["Igla_mag", -1, -1],
		["SmokeShellYellow", -1, -1],
		["SmokeShellPurple", -1, -1],
		["SmokeShellBlue", -1, -1],
		["PipeBomb_sup", -1, -1]
	];
	
//OPFOR supporter Air Shop
_odas =
	[
		["Mi17_CDF_sup", -1, -1],
		["Ka52Black_sup", -1, -1],
		["Ka60_PMC_sup", -1, -1],
		["Su25_Ins_sup",-1,-1]
	];
	
_vipshop =
[
	["GPS_vip", -1, -1],
	["NVGoggles_vip", -1, -1],
	["Binocular_vip", -1, -1],
	["Binocular_Vector_vip", -1, -1],
	["lockpick_vip", -1, -1],
	["medikit_vip", -1, -1],
	["kleinesreparaturkit_vip", -1, -1],
	["reparaturkit_vip", -1, -1],
	["vclammo", -1, -1],
	["kanister_vip", -1, -1],
	["supgrade5_vip", -1, -1],
	["nitro_vip", -1, -1],
	["UZI_SD_EP1_vip",-1,-1],
	["Rnd_9x19_UZI_SD_vip",-1,-1],
	["M9SD_vip",-1,-1],
	["Rnd_9x19_M9SD_vip",-1,-1],
	["Colt1911_vip",-1,-1],
	["Rnd_45ACP_1911_vip",-1,-1],
	["glock17_vip",-1,-1],
	["Rnd_9x19_glock17_vip",-1,-1],
	["revolver_gold_EP1_vip", -1, -1],
	["Rnd_45ACP_vip", -1, -1],
	["MakarovSD_vip", -1, -1],
	["Rnd_9x18_MakarovSD_vip", -1, -1],
	["KSVK_vip",-1,-1],
	["5Rnd_127x108_KSVK_vip",-1,-1],
	["AKS_74_NSPU_vip", -1, -1],
	["AKS74GOSHAWK_vip", -1,-1],
	["Rnd_545x39_AK_vip",-1,-1],
	["M4A1_HWS_GL_SD_Camo_vip", -1, -1],
	["M4A1_AIM_SD_camo_vip", -1, -1],
	["BAF_L85A2_RIS_CWS_vip", -1, -1],
	["Rnd_556x45_Stanag_vip",-1 ,-1],
	["Rnd_556x45_StanagSD_vip", -1, -1],
	["M110_NVG_EP1_vip", -1, -1],
	["M110_TWS_EP1_vip", -1, -1],
	["rnd_762x51_B_SCAR_vip", -1, -1],
	["SCAR_H_STD_TWS_SD_vip", -1, -1],
	["Rnd_762x51_SB_SCAR_vip", -1, -1],
	["DMR_vip", -1, -1],
	["Rnd_762x51_DMR_vip", -1, -1],
	//["Rnd_762x51_M24_vip", -1, -1],
	["bizon_silenced_vip", -1, -1],
	["Rnd_9x19_SD_Bizon", -1, -1],
	["M107_vip", -1, -1],
	["m107_TWS_EP1_vip", -1, -1],
	["10Rnd_127x99_m107_vip", -1, -1],
	["BAF_AS50_scoped_vip", -1, -1],
	["PMC_AS50_scoped_vip", -1, -1],
	["BAF_AS50_TWS_vip", -1, -1],
	["PMC_AS50_TWS_vip", -1, -1],
	["5Rnd_127x99_as50_sup", -1, -1],
	["10Rnd_127x99_m107_vip", -1, -1],
	["m8_tws_vip", -1, -1],
	["SCAR_L_STD_EGLM_TWS_vip", -1, -1],
	["Rnd_556x45_BetaCMag_sup", -1, -1],
	["m8_tws_sd_vip", -1, -1],	
	["Rnd_556x45_StanagSD_vip", -1, -1],
	["FN_FAL_ANPVS4_vip", -1, -1],
	["Rnd_762x51_FNFAL", -1, -1],
	["M249_TWS_vip", -1, -1],
	["Rnd_200_M249_vip", -1, -1],
	["MetisLauncher_vip", -1, -1],
	["AT13_mag", -1, -1],
	["Javelin_vip", -1, -1],
	["Javelin", -1, -1],
	["Stinger_sup", -1, -1],
	["Stinger_mag_sup", -1, -1],
	["Strela_vip", -1, -1],
	["Strela_mag", -1, -1],
	["Rnd_HE_M203_vip", -1, -1]
];

_vipcarshop =
[
		["SUV_TK_EP1_vip", -1, -1],
		["Ural_TK_CIV_EP1_vip", -1, -1],
		["UralRefuel_TK_EP1_vip", -1, -1],
		["MTVR_DES_EP1_vip", -1, -1],
		["hilux1_civil_1_open_vip", -1, -1],
		["AH6X_EP1_vip", -1, -1],
		["HMMWV_M1035_DES_EP1_vip", -1, -1]
];

_newsstationcar =
[
		["SUV_TK_EP1_news", -1, -1]
		
		
		
];

_newsstationair =
[
		["MH6J_EP1_news", -1, -1]
				
];

//TNP Vehicle Shop
_tnpvshop = 
	[
		["Old_bike_TK_INS_EP1", -1, -1],
		["TT650_TK_EP1", -1, -1],
		["ATV_US_EP1", -1, -1],
		["hilux1_civil_3_open_EP1", -1, -1],
		["LandRover_TK_CIV_EP1",  -1, -1],
		["UAZ_Unarmed_TK_EP1", -1, -1],
		["LadaLM", -1, -1],
		["SUV_UN_EP1_retex", -1, -1],
		["V3S_TK_GUE_EP1", -1, -1],
		["V3S_Open_TK_EP1", -1, -1],
		["S1203_ambulance_EP1", -1, -1],
		["GAZ_Vodnik_MedEvac", -1, -1],
		["M113Ambul_TK_EP1", -1, -1],
		["LandRover_MG_TK_EP1",  -1, -1],
		["UAZ_MG_TK_EP1", -1, -1],
		["LandRover_SPG9_TK_EP1",  -1, -1],
		["GAZ_Vodnik", -1, -1],
		["M113_TK_EP1", -1, -1],
		["M113_UN_EP1", -1, -1]
	];
		
	
//TNP Air Shop
_tnpashop = 
	[
		["MH6J_EP1", -1, -1],
		["AH6X_EP1", -1, -1],
		["Mi17_TK_EP1", -1, -1],
		["UH1H_TK_GUE_EP1", -1, -1]
	];

//TNP Equipment Shop
_tnpeshop =
	[
		["handy", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["kanister", -1, -1],
		["medikit", -1, -1],
		["weaponbag", -1, -1],
		["Itembag", -1, -1],
		["defuser", -1, -1],
		["vclammo", -1, -1],
		["lockpick", -1, -1],
		["Binocular", -1, -1],
		["Binocular_Vector", -1, -1],
		["NVGoggles", -1, -1],
		["Laserdesignator", -1, -1],
		["Laserbatteries", -1, -1],
		["nitro", -1, -1],
		["supgrade1", -1, -1],
		["supgrade2", -1, -1],
		["supgrade3", -1, -1],
		["supgrade4", -1, -1],
		["supgrade5", -1, -1],
		["gasmask", -1, -1],
		["stun_light", -1, -1],
		["stun_full", -1, -1],
		["CZ_Backpack_EP1",	 -1, -1],
		["CZ_VestPouch_EP1", -1, -1],
		["USBasicBag", -1, -1],
		["US_Assault_Pack_EP1", -1, -1],
		["US_Backpack_EP1", -1, -1],
		["US_Patrol_Pack_EP1", -1, -1],
		["M9", -1, -1],
		["Rnd_9x19_M9", -1, -1],
		["Rnd_9x19_M9SD", -1, -1],
		["M1014", -1, -1],
		["Rnd_B_Beneli_74Slug", -1, -1],
		["Rnd_B_Beneli_Pellets", -1, -1],
		["Saiga12K", -1, -1],
		["Rnd_B_Saiga12_74Slug", -1, -1],
		["Rnd_B_Saiga12_Pellets", -1, -1],
		["AK_47_M", -1, -1],
		["AK_47_S", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["AKS74U", -1, -1],
		["AKS_74_UN_kobra", -1, -1],
		["AK74", -1, -1],
		["AK74GL", -1, -1],
		["AKS_74", -1, -1],
		["AKS74kobra", -1, -1],
		["AKS74kobragl", -1, -1],
		["AKS74pso", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["Rnd_545x39_AKSD",	 -1, -1],
		["Sa58P_EP1", -1, -1],
		["Sa58V_EP1", -1, -1],
		["Sa58V_CCO_EP1", -1, -1],
		["Sa58V_RCO_EP1", -1, -1],
		["Rnd_762x39_SA58", -1, -1],
		["FN_FAL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["RPK_74",  -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["PK_ill", -1, -1],
		["Rnd_762x54_PK", -1, -1],
		["CZ_550_ill", -1, -1],
		["x_22_LR_17_HMR", -1, -1],
		["SVD", -1, -1],
		["SVD_CAMO", -1, -1],
		["SVD_des_EP1", -1, -1],
		["Rnd_762x54_SVD", -1, -1],
		["M24", -1, -1],
		["M24_des_EP1", -1, -1],
		["Rnd_762x51_M24", -1, -1],
		["M4SPR", -1, -1],
		["Rnd_20_Stanag", -1, -1],
		["Rnd_556x45_Stanag", -1, -1],
		["SCAR_H_LNG_Sniper", -1,-1],
		["rnd_762x51_B_SCAR",  -1, -1]
	];
	
	//Terrorist Car Shop
//Bike, MTBike, Bike, Old Motorbike, Motorbike, Motorbike, Motorbike, ATV, Tractor, Skoda, SkodaBlue, SkodaRed, SkodaGreen
//Vohla Blue, Vohla Grey, Vohla Limo, Lada, Lada Hippie, VWGolf, Hatchback, Sedan, Lada Red, Lada White, S1203 Van, Landrover, Landrover
//Hilux1, Hilux1_2, Hilux1_3oep1, Hilux1_3o, Datsun1o, Datsun2c, Datsun3o
_terrorcs = 
	[
		["Old_bike_TK_CIV_EP1", -1, -1],
		["MMT_Civ", 75, 100],
		["Old_moto_TK_Civ_EP1", 75, 100],
		["TT650_TK_CIV_EP1", 75, 100],
		["TT650_Civ", 75, 100],
		["TT650_Ins", 75, 100],
		["M1030", 75, 100],
		["ATV_CZ_EP1", 75, 100],
		["Skoda", 75, 100],
		["SkodaBlue", 75, 100],
		["SkodaRed", 75, 100],
		["SkodaGreen", 75, 100],
		["Volha_1_TK_CIV_EP1", 25, 100],
		["Volha_2_TK_CIV_EP1", 25, 100],
		["VolhaLimo_TK_CIV_EP1", 25, 100],
		["Lada1_TK_CIV_EP1", 25, 100],
		["Lada2_TK_CIV_EP1", 25, 100],
		["VWGolf", 25, 100],
		["car_hatchback", 25, 100],
		["Car_Sedan", 25, 100],
		["Lada1", 25, 100],
		["Lada2", 25, 100],
		["S1203_TK_CIV_EP1", 25, 100],
		["UAZ_Unarmed_TK_CIV_EP1", 25, 100],
		["BAF_Offroad_D", 25, 100],
		["LandRover_TK_CIV_EP1", 25, 100],
		["LandRover_CZ_EP1", 25, 100],
		["hilux1_civil_1_open", 25, 100],
		["hilux1_civil_2_covered", 25, 100],
		["hilux1_civil_3_open_EP1", 25, 100],
		["hilux1_civil_3_open", 25, 100],
		["datsun1_civil_1_open", 25, 100],
		["datsun1_civil_2_covered", 25, 100],
		["datsun1_civil_3_open", 25, 100],
		["Pickup_PK_TK_GUE_EP1", 25, 100],
		["LandRover_MG_TK_INS_EP1", 25,100],
		["LandRover_Special_CZ_EP1", 25, 100],
		["UAZ_AGS30_TK_EP1", 25, 100],
		["Offroad_DSHKM_TK_GUE_EP1", 25, 100],
		["Offroad_SPG9_TK_GUE_EP1", 25, 100]
	];
	
//Truck Shop
//Ikarus, Ikarus_TK_CIV_EP1, UralCivil, UralCivil2, V3S_Open_TK_CIV_EP1, V3S_Civ
_terrorts = 
	[
		["Tractor", 5, 50],
		["tractorOld", 5, 50],
		["Ikarus", 5, 20],
		["Ikarus_TK_CIV_EP1", 5, 20],
		["Ural_TK_CIV_EP1", 5, 20],
		["UralCivil", 5, 20],
		["UralCivil2", 5, 20],
		["V3S_Open_TK_CIV_EP1", 5, 20],
		["V3S_Civ", 5, 20],
		["V3S_Open_TK_EP1", 5, 20],
		["V3S_TK_GUE_EP1", 5, 20],
		["BTR40_TK_GUE_EP1", 5, 20],
		["BTR40_MG_TK_GUE_EP1", 5, 20],
		["M113Ambul_TK_EP1", 5, 20],
		["M113_TK_EP1", 5, 20],
		["ZU23_TK_EP1", 5, 20]
	];

// Terrorist Weapons
_terrorgs = 
	[
		["handy", -1, -1],
		["lockpick", -1, -1],
		["medikit", -1, -1],
		["kleinesreparaturkit", -1, -1],
		["reparaturkit", -1, -1],
		["kanister", -1, -1],
		["supgrade1", -1, -1],
		["supgrade2", -1, -1],
		["supgrade3", -1, -1],
		["nitro", -1, -1],
		["vclammo", -1, -1],
		["gasmask", -1, -1],
		["stun_light_ter", -1, -1],
		["ziptie", -1, -1],
		["GPS_ill", -1, -1],
		["Binocular_ill", -1, -1],
		["Binocular_Vector_ill", -1, -1],
		["NVGoggles_ill", -1, -1],
		["Colt_ill", -1, -1],
		["Rnd_45ACP_1911", -1, -1],
		["revolver_ill", -1, -1],
		["revolver_gold_EP1", -1, -1],
		["Rnd_45ACP", -1, -1],
		["Makarov", -1, -1],
		["MakarovSD", -1, -1],
		["Rnd_9x18_Makarov", -1, -1],
		["Rnd_9x18_MakarovSD", -1, -1],
		["UZI_EP1", -1, -1],
		["UZI_SD_EP1", -1, -1],
		["Rnd_9x19_UZI", -1, -1],
		["Rnd_9x19_UZI_SD", -1, -1],
		["Sa61_EP1", -1, -1],
		["Rnd10_765x17_Ball", -1, -1],
		["Rnd20_765x17_Ball", -1, -1],
		["Saiga_ill", -1, -1],
		["Rnd_B_Saiga12_74Slug", -1, -1],
		["Rnd_B_Saiga12_Pellets", -1, -1],
		["LeeEnfield_ILL", -1, -1],
		["x_303", -1, -1],
		["FN_FAL_ILL", -1, -1],
		["Rnd_762x51_FNFAL", -1, -1],
		["Sa58P_EP1", -1, -1],
		["Sa58V_EP1", -1, -1],
		["Rnd_762x39_SA58", -1, -1],
		["AK_47_M", -1, -1],
		["AK_47_S", -1, -1],
		["Rnd_762x39_AK47", -1, -1],
		["AKS74U", -1, -1],
		["AKS_74_UN_kobra", -1, -1],
		["RPK_74",  -1, -1],
		["AK74", -1, -1],
		["AK74GL", -1, -1],
		["AKS_74", -1, -1],
		["AKS74kobra", -1, -1],
		["AKS74kobragl", -1, -1],
		["AKS74pso", -1, -1],
		["Rnd_545x39_AK", -1, -1],
		["Rnd_545x39_AKSD",	 -1, -1],
		["Rnd_545x39_RPK", -1, -1],
		["PK", -1, -1],
		["Rnd_762x54_PK", -1, -1],
		["SVD", -1, -1],
		["Rnd_762x54_SVD", -1, -1],
		["CZ_550_ill", -1, -1],
		["x_22_LR_17_HMR", -1, -1],
		["RPG7V", -1, -1],
		["PG7V",  -1, -1],
		["PG7VR", -1, -1],
		["PG7VL", -1, -1],
		["OG7", -1, -1],
		["Strela", -1, -1],
		["Strela_mag", -1, -1],
		["HandGrenade_East", -1, -1],
		["Stone", -1, -1],
		["SmokeShell_ill", -1, -1],
		["M79", -1, -1],
		["Rnd_HE_M203", -1, -1],
		["Rnd_HE_GP25", -1, -1],
		["FlareWhite_GP25", -1, -1],
		["FlareGreen_GP25", -1, -1],
		["FlareRed_GP25", -1, -1],
		["FlareYellow_GP25", -1, -1],
		["Rnd_SMOKE_GP25", -1, -1],
		["Rnd_SmokeRed_GP25", -1, -1],
		["Rnd_SmokeGreen_GP25", -1, -1],
		["Rnd_SmokeYellow_GP25", -1, -1],
		["MineE", -1, -1],
		["GarbageIEDSmall_PMC", -1, -1],
		["GroundIEDSmall_PMC", -1, -1],
		["GarbageIEDLarge_PMC", -1, -1],
		["GroundIEDLarge_PMC", -1, -1],
		["TimeBomb", -1, -1],
		["PipeBomb", -1, -1],
		["selbstmordbombe", -1, -1],
		["fernzuender", -1, -1],
		["fernzuenderbombe", -1, -1],
		["zeitzuenderbombe", -1, -1],
		["aktivierungsbombe", -1, -1],
		["geschwindigkeitsbombe", -1, -1],
		["TK_ALICE_Pack_EP1", -1, -1],
		["TK_Assault_Pack_EP1", -1, -1],
		["TK_RPG_Backpack_EP1", -1, -1],
		["Tripod_Bag", -1, -1],
		["DSHkM_Mini_TriPod_TK_GUE_Bag_EP1", -1, -1],
		["DSHKM_TK_GUE_Bag_EP1", -1, -1],
		["KORD_high_TK_Bag_EP1", -1, -1],
		["KORD_TK_Bag_EP1", -1, -1],	
		["AGS_TK_Bag_EP1", -1, -1],
		["SPG9_TK_GUE_Bag_EP1", -1, -1],
		["2b14_82mm_TK_Bag_EP1", -1, -1],
		["Mammo_HE", -1, -1],
		["Mammo_WP", -1, -1],
		["Mammo_IL", -1, -1]
	];

		
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

INV_ItemShops_Object = 0;
INV_ItemShops_Name = 1;
INV_ItemShops_Crate = 2;
INV_ItemShops_Logic = 3;
INV_ItemShops_BuyList = 4;
INV_ItemShops_SellList = 5;
INV_ItemShops_License = 6;

//note that the object (first element) must be unique to each shop, as this is used for caching shop data
INV_ItemShops = [
		[vipshop,"VIP Shop",vipshopbox,dummyobj,_vipshop,_vipshop,true],
		[vipcarshop,"VIP Vehicle Shop",dummyobj, vipshopcarspawn,_vipcarshop,_vipcarshop,true],
		[vipshop_1,"VIP Shop",vipshopbox_1,dummyobj,_vipshop,_vipshop,true],
		[vipcarshop_1,"VIP Vehicle Shop",dummyobj, vipshopcarspawn_1,_vipcarshop,_vipcarshop,true],
		
		[newscarshop,"News Reporter Car Shop",dummyobj, newscarspawn,_newsstationcar,_newsstationcar,true],
		[newsairshop,"News Reporter Air Shop",dummyobj, newsairspawn,_newsstationair,_newsstationair,true],
		
		[fuelshop1,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
		[fuelshop2,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
		[fuelshop3,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
		[fuelshop4,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
		[fuelshop5,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
		[fuelshop6,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
		[fuelshop7,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
		[fuelshop8,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
		[fuelshop9,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],

		[shop1,"Item Shop",dummyobj,dummyobj,_is,_is,true],
		[shop2,"Item Shop",dummyobj,dummyobj,_is,_is,true],
		[shop3,"Item Shop",dummyobj,dummyobj,_is,_is,true],
		[shop4,"Item Shop",dummyobj,dummyobj,_is,_is,true],

		[pub1,"Bar",dummyobj,dummyobj,_pub,_pub,true],
		[pub2,"Bar",dummyobj,dummyobj,_pub,_pub,true],
		[pub3,"Bar",dummyobj,dummyobj,_pub,_pub,true],

		[gunshop1,"Gun Shop",gunbox1,dummyobj,_gs,_gs,true],

		[checkpoint,"Checkpoint Shop",dummyobj,dummyobj,_cp,_cp,true],
		[equipshop,"Equipment Shop",equipbox,dummyobj,_es,_es,true],
		[equipshop4,"Equipment Shop",equipbox4,dummyobj,_es,_es,true],
		[equipshop6,"Equipment Shop",equipbox6,dummyobj,_es,_es,true],
		[equipshop7,"Equipment Shop",equipbox7,dummyobj,_es,_es,true],

		[tuning1,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
		[tuning2,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
		[tuning3,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
		//[tuning4,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
		[tuning5,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
		
		[carshop1,"Car Shop",dummyobj,carspawn1,_cs,_cs,true],
		[carshop2,"Car Shop",dummyobj,carspawn2,_cs,_cs,true],
		[carshop3,"Car Shop",dummyobj,carspawn3,_cs,_cs,true],
		[carshop4,"Car Shop",dummyobj,carspawn4,_cs,_cs,true],
		[carshop5,"Car Shop",dummyobj,carspawn5,_cs,_cs,true],
		[carshop6,"Car Shop",dummyobj,carspawn6,_cs,_cs,true],
		[carshop7,"Car Shop",dummyobj,carspawn7,_cs,_cs,true],
		
		[truckshop,"Truck Shop",dummyobj,truckspawn,_ts,_ts,true],
		[truckshop2,"Truck Shop",dummyobj,truckspawn2,_ts,_ts,true],

		[airshop,"Air Shop",dummyobj,asairspawn,_as,_as,true],
		[airshop2,"Loy Manara Air Shop",dummyobj,asairspawn2,_as_1,_as_1,true],

		[tdoc,"Doctor",dummyobj,dummyobj,_td,_td,false],

		[Oil_1,"Mining equipment",dummyobj,dummyobj,_ms,_ms,true],
		[Oil_2,"Mining equipment",dummyobj,dummyobj,_ms,_ms,true],

		[resourcesell,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true],
		[resourcesell2,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true],

		// General Shop
		//_generalstore
		[southshop1,"General Shop",southshopbox1,dummyobj,_generalstore,_generalstore,true],
		
		
		[RingShop,"Ring Sell", dummyobj,dummyobj,_gds,_gds,true],

		[OilSell1,"Oil Dealer", dummyobj,dummyobj, _emptyshop,_os,true],

		[gangarea1,"Gang Shop",gangbox1,dummyobj,_gangshop_buy,_gangshop_buy,false],
		[gangarea2,"Gang Shop",gangbox2,dummyobj,_gangshop_buy,_gangshop_buy,false],
		[gangarea3,"Gang Shop",gangbox3,dummyobj,_gangshop_buy,_gangshop_buy,false],
		

		[cdrugsell,"Sell Cocaine",dummyobj,dummyobj,_emptyshop,_dsc,true],
		[mdrugsell,"Sell Marijuana",dummyobj,dummyobj,_emptyshop,_dsm,true],
		[ldrugsell,"Sell LSD",dummyobj,dummyobj,_emptyshop,_dsl,true],
		[hdrugsell,"Sell Heroin",dummyobj,dummyobj,_emptyshop,_dsh,true],

		[copcar,"Police Vehicle Shop",dummyobj, ccarspawn,_cv,_cv,true],
		[copair,"Police Air Vehicle Shop",dummyobj, cairspawn,_ca,_ca,true],
		[swatcar,"SOBR Vehicle Shop",dummyobj, scarspawn,_sv,_sv,true],
		[swatair,"SOBR Air Vehicle Shop",dummyobj, saairspawn,_sa,_sa,true],

		[pmccar,"PMC Land Vehicle Shop",dummyobj, pmccarspawn,_pmcveh,_pmcveh,true],
		[pmcair,"PMC Air Vehicle Shop",dummyobj, pmcairspawn,_pmcair,_pmcair,true],

		[copbasic,"Police Shop",copbasic,dummyobj, _copshop,_copshop,true],
		[coppatrol,"Patrol-Officer",coppatrol,dummyobj,_copshop_patrol,_copshop_patrol,true],
		[copcriminal,"Criminal Response-Officer",copcriminal,dummyobj,_copshop_response,_copshop_response,true],
		[copswat,"SOBR",copswat,dummyobj,_copshop_sobr,_copshop_sobr,true],

		[pmcbox,"PMC Equipment",pmcbox,dummyobj,_pmcs,_pmcs,true],

		[terrorshop,"Terrorist Shop",tgunbox,dummyobj,_terrorshop_buy,_terrorshop_buy,true],

		[vipbox,"Illegal Weapon Shop",vipbox,dummyobj,_smgrw,_smgrw,true],
		[vipcar,"Stolen Vehicles",dummyobj,vipcarspawn,_smgrveh,_smgrveh,true],

		[fishmonger,"Sell to Fishmonger",dummyobj,dummyobj,_fm,_fm,true],

		[butcher,"Sell to Butcher",dummyobj,dummyobj,_bm,_bm,true],
		[butcher_1,"Sell to Crazy Butcher",dummyobj,dummyobj,_bm1,_bm1,true],

		[hashbar,"Get High",dummyobj,dummyobj,_hash,_emptyshop,true],

		[redgunshop,"Weapons",redgunbox,dummyobj,_rgs,_rgs,true],
		[redsupplyshop,"Supplies",dummyobj,dummyobj,_rsup,_rsup,true],
		[redhelishop,"Helicopters",dummyobj,redhelispawn,_rhs,_rhs,true],
		[redltveh,"Light Vehicles",dummyobj,redvehspawn,_rlt,_rlt,true],
		[redhvyveh,"Heavy Vehicles",dummyobj,redhvyspawn,_rhvy,_rhvy,true],
		[redairveh,"Aircraft",dummyobj,redairspawn,_rair,_rair,true],

		[cparts,"Car Parts",dummyobj,dummyobj,_carparts,_carparts,true],

		[airshop3,"Armed Vehicles",dummyobj,asairspawn3,_as_2,_as_2,true],

		[fortshop1,"Blufor Fortifications Shop",dummyobj,fortshop1s,_fs1,_fs1,true],
		[fortshop2,"PMC Fortifications Shop",dummyobj,fortshop2s,_fs2,_fs2,true],
		[fortshop3,"Factory Fortifications Shop",dummyobj,fortshop3s,_fs3,_fs3,true],
		[fortshop4,"Terror Fortifications Shop",dummyobj,fortshop4s,_fs4,_fs4,true],
		[fortshop5,"Opfor Fortifications Shop",dummyobj,fortshop5s,_fs5,_fs5,true],
		[vipfortshop,"VIP Fort Shop",dummyobj,vipfortshops,_fsvip,_fsvip,true],

		[hpcar,"Hospital Vehicle Shop",dummyobj,hospitalspawn,_hp,_hp,true],
		[hpcar_1,"Hospital Vehicle Shop",dummyobj,hospitalspawn_1,_hp,_hp,true],

		[russmuggler,"Russian Arms Dealer",rusgunbox,dummyobj,_russ,_russ,true],
		
		[mainbankShop,"Bank Insurance",dummyobj,dummyobj,_bank,_bank,true],
		
		[tnpnvehshop,"TNP Vehicle Shop",dummyobj,tnpnvehspawn,_tnpvshop,_tnpvshop,true],
		[tnpsvehshop,"TNP Vehicle Shop",dummyobj,tnpsvehspawn,_tnpvshop,_tnpvshop,true],
		[tnpnshop,"TNP Equipment Shop",tnpnbox,dummyobj,_tnpeshop,_tnpeshop,true],
		[tnpsshop,"TNP Equipment Shop",tnpsbox,dummyobj,_tnpeshop,_tnpeshop,true],
		
		[supportercarshopciv,"Civ supporter Vehicle Shop",dummyobj,civdcarspawn,_cdvs,_cdvs,true],
		[supporterboxshopciv,"Civ supporter Weapons Shop",supporterboxshopciv,dummyobj,_cdws,_cdws,true],
		[supporterairshopciv,"Civ supporter Air Shop",dummyobj,civdairspawn,_cdas,_cdas,true],
	   
		[supportercarshopcop,"Blufor supporter Vehicle Shop",dummyobj,copdcarspawn,_cpdvs,_cpdvs,true],
		[supporterboxshopcop,"Blufor supporter Weapons Shop",supporterboxshopcop,dummyobj,_cpdws,_cpdws,true],
		[supporterairshopcop,"Blufor supporter Air Shop",dummyobj,copdairspawn,_cpdas,_cpdas,true],
		
		[supportercarshopopf,"Opfor supporter Vehicle Shop",dummyobj,opfdcarspawn,_odvs,_odvs,true],
		[supporterboxshopopf,"Opfor supporter Weapons Shop",supporterboxshopopf,dummyobj,_odws,_odws,true],
		[supporterairshopopf,"Opfor supporter Air Shop",dummyobj,opfdairspawn,_odas,_odas,true]
	];


//buidld the INV_ItemMaxStocks array
if (isServer) then {
        INV_ItemMaxStocks = [];
        private["_i"];
        _i = 0;
        while { _i < (count INV_ItemShops) } do {
                private["_newArray", "_buyList", "_sellList", "_newStock", "_newMax", "_newBuy", "_newSell"];
                
                _newArray = INV_ItemShops select _i;
                _buyList = _newArray select INV_ItemShops_BuyList;

                _newMax        = [];

                {
                        private["_array", "_class", "_stock", "_max"];
                        _array = _x;
                        _max = _array select shop_list_stock_max;
						_newMax set [count _newMax, _max];
                } count _buyList;
                INV_ItemMaxStocks set [_i, _newMax];
                _i = _i + 1;
        };
        publicVariable "INV_ItemMaxStocks";
};

//build the INV_ItemStocks array
if (isServer) then {
        INV_ItemStocks = [];
        private["_i"];
        _i = 0;
        while { _i < (count INV_ItemShops) } do {
                private["_newArray", "_buyList", "_newStock"];
                
                _newArray = INV_ItemShops select _i;
                _buyList = _newArray select INV_ItemShops_BuyList;
                _newStock        = [];

                {
                        private["_array", "_max"];
                        _array = _x;
                        _max = _array select shop_list_stock;
                        _newStock set [count _newStock, _max];
                } count _buyList;

                INV_ItemStocks set [_i, _newStock];
                _i = _i + 1;
        };
        publicVariable "INV_ItemStocks";
};

	
//SHOULD REPLACE WITH FOR LOOP THEN TRY FOREACH
//buidld the INV_ItemShops array
{
        private["_newArray", "_buyList", "_sellList", "_newBuy", "_newSell"];
        
        _newArray = _x;
        _buyList = _newArray select INV_ItemShops_BuyList;
        _sellList = _newArray select INV_ItemShops_SellList;
        
        _newBuy        = [];
        _newSell = [];
        
        {
                private["_array", "_item"];
                _array = _x;
                _item = _array select shop_list_item;
                _newSell set[count _newSell, _item];
        } count _sellList;
        
        {
                private["_array", "_item"];
                _array = _x;
                _item = _array select shop_list_item;
                _newBuy set[count _newBuy, _item];
        } count _buyList;
        
        _newArray set[INV_ItemShops_BuyList, _newBuy];
        _newArray set[INV_ItemShops_SellList, _newSell];
        
        INV_ItemShops set[_forEachIndex, _newArray];
} forEach INV_ItemShops;
	
/*if (isClient) then {
        waitUntil { not(isNil "INV_ItemStocks") };
        waitUntil { not(isNil "INV_ItemMaxStocks") };
};*/