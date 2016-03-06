/**
 * English and French comments
 * Commentaires anglais et français
 * 
 * This file contains the configuration variables of the logistics system.
 * Fichier contenant les variables de configuration du système de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes dérivant de celles utilisées dans les variables de configuration seront aussi valables.
 */

/*
 * There are two ways to manage new objects with the logistics system. The first is to add these objects in the
 * folowing appropriate lists. The second is to create a new external file in the /addons_config/ directory,
 * according to the same scheme as the existing ones, and to add a #include at the end of this current file.
 * 
 * Deux moyens existent pour gérer de nouveaux objets avec le système logistique. Le premier consiste à ajouter
 * ces objets dans les listes appropriées ci-dessous. Le deuxième est de créer un fichier externe dans le répertoire
 * /addons_config/ selon le même schéma que ceux qui existent déjà, et d'ajouter un #include à la fin de ce présent fichier.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des véhicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs =
[
	// e.g. : "MyTowingVehicleClassName1", "MyTowingVehicleClassName2"
	"MTVR", "MTVR_Reammo", "MTVR_Repair", "MTVR_Reful", "Ural_CDF", "UralOpen_INS", "UralOpen_CDF", "UralReammo_CDF", "UralReammo_INS", "UralRefuel_CDF", "UralRefuel_INS", "UralRepair_CDF", "UralRepair_INS", "Ural_ZU23_CDF", "Ural_ZU23_INS", "Kamaz", "KamazOpen", "KamazRepair", "KamazRefuel", "KamazReammo", "V3S_GUE", "V3S_Civ", "TowingTractor", "tractor", "MTVR_DES_EP1", "MtvrSupply_DES_EP1", "MTVR_Reammo_DES_EP1", "MTVR_Repair_DES_EP1", "MtvrSalvage_DES_EP1", "MTVR_Refuel_DES_EP1", "Ural_TK_CIV_EP1", "Ural_UN_EP1", "UralSupply_TK_EP1", "UralReammo_TK_EP1", "UralRefuel_TK_EP1", "UralRepair_TK_EP1", "UralSalvage_TK_EP1", "Ural_ZU23_TK_EP1", "Ural_ZU23_TK_GUE_EP1", "MAZ_543_SCUD_TK_EP1", "V3S_TK_EP1", "V3S_TK_GUE_EP1", "V3S_Supply_TK_GUE_EP1", "V3S_Open_TK_EP1", "V3S_Open_TK_CIV_EP1", "V3S_Reammo_TK_GUE_EP1", "V3S_Repair_TK_GUE_EP1", "V3S_Salvage_TK_GUE_EP1", "V3S_Refuel_TK_GUE_EP1"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables =
[
	"M119", 
	"D30_base", 
	"ZU23_base",
	"Stinger_Pod_base",
	"Igla_AA_Pod_base",
	"Plane"
	// e.g. : "MyTowableObjectClassName1", "MyTowableObjectClassName2"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des véhicules aériens pouvant héliporter des objets héliportables.
 */
R3F_LOG_CFG_heliporteurs =
[
	// e.g. : "MyLifterVehicleClassName1", "MyLifterVehicleClassName2"
	"Mi17_CDF", "Mi17_INS", "Mi17_Civilian", "MV22", "MH60S", "UH60M_EP1", "CH_47F_EP1", "CH_47F_BAF", "Mi17_TK_EP1", "Mi17_UN_CDF_EP1", "Mi171Sh_CZ_EP1", "BAF_Merlin_HC3_D"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_objets_heliportables =
[
	// e.g. : "MyLiftableObjectClassName1", "MyLiftableObjectClassName2"
	"T90","M1A1","M1A1_TUSK_MG","BMP2_INS","BMP2_Ambul_INS",
"BMP2_HQ_INS","T72_INS","T72_RU","ZSU_INS","BMP2_CDF","BMP2_Ambul_CDF",
"BMP2_HQ_CDF","T72_CDF","ZSU_CDF","BMP2_Gue","T72_Gue","HMMWV_M2",
"HMMWV_TOW","HMMWV_MK19","UAZ_MG_CDF","UAZ_AGS30_CDF","UAZ_AGS30_RU",
"UAZ_MG_INS","UAZ_AGS30_INS","UAZ_SPG9_INS","URAL_ZU23_CDF",
"BRDM2_CDF","BRDM2_ATGM_CDF","GRAD_CDF","GRAD_INS","URAL_ZU23_INS",
"BRDM2_INS","BRDM2_ATGM_INS","BRDM2_Gue","BRDM2_HQ_Gue","URAL_ZU23_GUE",
"Pickup_PL_Gue","Pickup_PK_INS","Offroad_DSHKM_Gue","Offroad_STG9_Gue",
"2S6M_Tunguska","AAV","T90","T34","BMP3","MLRS","BTR90","BTR90_HQ",
"GAZ_Vodnik_HMG","GAZ_Vodnik","HMMWV_Armored","HMMWV_Avenger","LAV25",
"Lav25_HQ","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","URAL_ZU23_TK_EP1",
"URAL_ZU23_TK_GUE_EP1","Pickup_PK_TK_GUE_EP1","Offroad_DSHKM_TK_GUE_EP1",
"Offroad_SPG9_TK_GUE_EP1","HMMWV_MK19_DES_EP1","HMMWV_Avenger_DES_EP1",
"GRAD_TK_EP1","BRDM2_TK_EP1","BRDM2_ATGM_TK_EP1","BRDM2_TK_GUE_EP1",
"BRDM2_HQ_TK_GUE_EP1","BTR40_MG_TK_GUE_EP1","BTR40_TK_GUE_EP1",
"BTR40_MG_INS_EP1","BTR40_TK_INS_EP1","BTR60_TK_EP1",
"HMMWV_M1151_M2_CZ_DES_EP1","HMMWV_M1151_M2_DES_EP1",
"HMMWv_M998_crows_M2_DES_EP1","HMMWv_M998_crows_Mk19_DES_EP1",
"HMMWV_TOW_DES_EP1","LandRover_MG_TK_INS_EP1","LandRover_MG_TK_EP1",
"LandRover_Special_CZ_EP1","LandRover_SPG9_TK_INS_EP1",
"LandRover_SPG9_TK_EP1","M1126_ICV_M2_EP1","M1126_ICV_mk19_EP1",
"M1130_CV_EP1","M1129_MC_EP1","M1135_ATGMV_EP1","M1128_MGS_EP1",
"M1133_MEV_EP1","ArmoredSUV_PMC","HMMWV_M998A2_SOV_DES_EP1_DZ",
"HMMWV_M1151_M2_CZ_DES_EP1_DZ","LandRover_Special_CZ_EP1_DZ",
"LandRover_MG_TK_EP1_DZ","GAZ_Vodnik_DZ","ArmoredSUV_PMC_DZ",
"Pickup_PK_TK_GUE_EP1_DZ","Pickup_PK_GUE_DZ","Pickup_PK_INS_DZ",
"Offroad_DSHKM_Gue_DZ","BTR90_DZ","BTR_90_HQ_DZ","LAV25_DZ","LAV25_HQ_DZ",
"M113_UN_EP1","M113_UN_EP1_DZ","M113_TK_EP1","M240Nest_DZ","BMP2_UN_EP1",
"BMP2_TK_EP1","BMP2_HQ_TK_EP1","T34_TK_EP1","T34_TK_GUE_EP1","M2A2_EP1",
"M2A3_EP1","M6_EP1","T55_TK_EP1","T55_TK_GUE_EP1","M1A1_US_DES_EP1",
"M1A2_US_TUSK_MG_EP1","MLRS_DES_EP1","ZSU_TK_EP1","T72_TK_EP1",
"BAF_Jackal2_L2A1_D","BAF_Jackal2_GMG_D","BAF_Jackal2_L2A1_W",
"BAF_Jackal2_GMG_W","BAF_FV510_D","BAF_FV510_W"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le référentiel arbitraire utilisé est : une caisse de munition de type USVehicleBox "pèse" 12 unités.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorité d'une déclaration de capacité sur une autre correspond à leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient à la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est déclaré avec une capacité de 140 avant "Car". Et que "Car" est déclaré après "Truck" avec une capacité de 40,
 *   Alors toutes les sous-classes appartenant à "Truck" auront une capacité de 140. Et toutes les sous-classes appartenant
 *   à "Car", exceptées celles de "Truck", auront une capacité de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des véhicules (terrestres ou aériens) pouvant transporter des objets transportables.
 * Le deuxième élément des tableaux est la capacité de chargement (en relation avec le coût de capacité des objets).
 */
R3F_LOG_CFG_transporteurs =
[
	// e.g. : ["MyTransporterClassName1", itsCapacity], ["MyTransporterClassName2", itsCapacity]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxième élément des tableaux est le coût de capacité (en relation avec la capacité des véhicules).
 */
R3F_LOG_CFG_objets_transportables =
[

	// e.g. : ["MyTransportableObjectClassName1", itsCost], ["MyTransportableObjectClassName2", itsCost]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */
R3F_LOG_CFG_objets_deplacables =
[
	// e.g. : "MyMovableObjectClassName1", "MyMovableObjectClassName2"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalités logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
#include "addons_config\ACE_OA_objects.sqf"
#include "addons_config\BAF_objects.sqf"
#include "addons_config\arma2_CO_objects.sqf"