enableSaving [false, false];


isClient = !isServer || (isServer && !isDedicated);

waitUntil {time > 0};
/*
call compile preprocessfile "Life\Init\triggers.sqf";

    if(!debug)then{["camera"] execVM "introcam.sqf";["text"] execVM "introcam.sqf";};
*/
//PREPROCESS HERE
combatLogSaver = compile preprocessfile "RG\dSave.sqf";
onActionSaver = compile preprocessfile "RG\iSave.sqf";
//stBegin = compile preprocessfile  "adminconsolfill.sqf";
private ["_h"];
/////////////////////////////////////////


debug = false;
shouldSnow = false;


//////////////////////////
server globalChat "Initializing Xtreme Takistan Life.......";

_h = [] execVM "supporters.sqf";
waitUntil{scriptDone _h};

_h = [] execVM "Awesome\Functions\encodingfunctions.sqf";
waitUntil{scriptDone _h};

if (isServer) then {
	enableEnvironment false;
	[] execVM "iniDB\server_cmd.sqf";
	//waitUntil{scriptDone _h};
	_h = [] execVM "Awesome\Server\Server_Fnc.sqf";
	waitUntil{scriptDone _h};
	_h = [] execVM "Awesome\MyStats\persist.sqf";
	waitUntil{scriptDone _h};
};

_h = [] execVM "Awesome\MyStats\functions.sqf";
waitUntil{scriptDone _h};

WEST setFriend [EAST, 0];
WEST setFriend [RESISTANCE, 0];
EAST setFriend [WEST, 0];
EAST setFriend [RESISTANCE, 0];
RESISTANCE setFriend [EAST, 0];
RESISTANCE setFriend [WEST, 0];
CIVILIAN setFriend [WEST, 0];
CIVILIAN setFriend [EAST, 0];
CIVILIAN setFriend [RESISTANCE, 0];


//[] execVM "clean.sqf";


//server globalChat "debug is true";
if(!debug)then{
if (isClient) then {
	["camera"] execVM "introcam.sqf";["text"] execVM "introcam.sqf";
	};};

_h = [] execVM "Awesome\Scripts\optimize_1.sqf";
waitUntil{scriptDone _h};

_h = ["init"] execVM "bombs.sqf";
waitUntil{scriptDone _h};



if (isServer) then {
	/*CBA_display_ingame_warnings = false; 
	publicVariable "CBA_display_ingame_warnings";*/
	
	call compile preprocessFile "\iniDB\init.sqf";
	sleep 0.1;
	[] execVM "\iniDB\saver.sqf";
	//execVM "ServerSide\Oracle-Core.sqf";
	//execVM "ServerSide\whitelist_blacklist.sqf";
	["server"] execVM "bombs.sqf";
};

_h = [] execVM "Awesome\Functions\interaction.sqf";
waitUntil{scriptDone _h};

call compile preprocessfile "triggers.sqf";

if (isClient) then {
	[] execVM "briefing.sqf";
	if (shouldSnow) then {
		[] execVM "Scripts\snow.sqf";
	};
};

// initializes Fixes
//ExecSQFspawn("Fixes\init.sqf");

if(isServer) then {
	execVM "targets.sqf";
};

_h = [] execVM "broadcast.sqf";
waitUntil{scriptDone _h};

//server globalChat "broadcast done";

_h = [] execVM "Awesome\Functions\time_functions.sqf";
waitUntil{scriptDone  _h};

_h = []	execVM "customfunctions.sqf";
waitUntil{scriptDone _h};
//server globalChat "customfcs done";
_h = []	execVM "strfuncs.sqf";
waitUntil{scriptDone _h};

_h = []	execVM "1007210.sqf";
waitUntil{scriptDone _h};

_h = [] execVM "4422894.sqf";
waitUntil{scriptDone _h};

//server globalChat "miscfuncs started";
_h = []	execVM "miscfunctions.sqf";
waitUntil{scriptDone _h};
//server globalChat "miscfuncs done";
//server globalChat "quicksort loading";
_h = [] execVM "Awesome\Functions\quicksort.sqf";
waitUntil{scriptDone _h};
//server globalChat "invvars loading";
server globalChat "Shop information being loaded, may take a few moments, please wait...";
_h = [] execVM "INVvars.sqf";
waitUntil{scriptDone _h};
//server globalChat "shopfncs loading";
_h = [] execVM "Awesome\Shops\functions.sqf";
waitUntil{scriptDone _h};
//server globalChat "bankfcs loading";
_h = [] execVM "Awesome\Functions\bankfunctions.sqf";
waitUntil{scriptDone _h};
//server globalChat "bankfcs done";
_h = [] execVM "bankexec.sqf";
waitUntil{scriptDone _h};

_h = [] execVM "execlotto.sqf";
waitUntil{scriptDone _h};

_h = [] execVM "initWPmissions.sqf";
waitUntil{scriptDone _h};

_h = [] execVM "gfx.sqf";
waitUntil{scriptDone _h};

_h = [] execVM "animList.sqf";
waitUntil{scriptDone _h};

_h = [] execVM "variables.sqf";
waitUntil{scriptDone _h};

_h = [] execVM "Scripts\whitelist_blacklist.sqf";
waitUntil{scriptDone _h};

//_h = [] execVM "AC\AntihackInit.sqf";
//waitUntil{scriptDone _h};


_h = [] execVM "Awesome\Functions\money_functions.sqf";
waitUntil{scriptDone _h};
//server globalChat "moneyfcs done";
_h = [] execVM "Awesome\Functions\gangfunctions.sqf";
waitUntil{scriptDone _h};

// Starts up Awesome scripts
_h = [] execVM "Awesome\init.sqf";
waitUntil{scriptDone _h};
//server globalChat "2ndary init done";
_h = [] execVM "setPitchBank.sqf";
waitUntil {scriptDone _h};

//[50] execVM "fnc_traffic\WCRffsx_fnc_Traffic.sqf";
//fnc = [] execVM "fnc_T72\WCRffsx_fnc_T72.sqf";

publicvariable "station1robbed";
publicvariable "station2robbed";
publicvariable "station3robbed";
publicvariable "station4robbed";
publicvariable "station5robbed";
publicvariable "station6robbed";
publicvariable "station7robbed";
publicvariable "station8robbed";
publicvariable "station9robbed";
//server globalChat "loadad station vars";

if(isClient) then {
	A_fnc_EH_hDamage		= compile (preprocessFileLineNumbers "Awesome\EH\Eh_handledamage.sqf");
	A_fnc_EH_fired			= compile (preprocessfileLineNumbers "Awesome\EH\EH_fired.sqf");
	A_fnc_EH_wa				= compile (preprocessfileLineNumbers "Awesome\EH\EH_weaponassembled.sqf");
	[] execVM "RG\cLoad.sqf";
	server globalChat "Loading - Please Wait";
	[] execVM "Client\watermark.sqf";
	[] execVM "Awesome\Functions\holster.sqf";
	[] execVM "respawn.sqf";
	[] execVM "petrolactions.sqf";
	[] execVM "nametags.sqf";
	[] execVM "Awesome\Functions\markers.sqf";
	[] execVM "Awesome\Functions\salary.sqf";
	[] execVM "motd.sqf";
	[] ExecVM "Awesome\MountedSlots\functions.sqf";
	["client"] execVM "bombs.sqf";
	[] execVM "Awesome\Functions\factory_functions.sqf";
	[] execVM "clientloop.sqf";
	[0,0,0,["clientloop"]] execVM "gangs.sqf";
	[0,0,0,["clientloop"]] execVM "squads.sqf";
	player removeAllEventHandlers "fired";
	player removeAllEventHandlers "handleDamage";
	player removeAllEventHandlers "WeaponAssembled";
	player addEventHandler ["fired", {_this spawn A_fnc_EH_fired}];
	player addEventHandler ["handleDamage", {_this call A_fnc_EH_hDamage}];
	player addEventHandler ["WeaponAssembled", {_this spawn A_fnc_EH_wa}];
	[] execVM "onKeyPress.sqf";
	[] execVM "ui.sqf";
	[] execVM "AC\antidupe.sqf";
	[] execVM "addons\fpsFix\vehicleManager.sqf";
	[] execVM "lockgear.sqf";
	server globalChat "Loading Fully Complete";
};
/*
//WAS DISABLEEEDDDDDD
_h = [] execVM "Scripts\gcrs\gcrsrepelscript.sqf";
waitUntil{scriptDone _h};
//WAS DISABLEEEDDDDDD
_h = [] execVM "Scripts\gcrs\gcrsdeployrope.sqf";
waitUntil{scriptDone _h};
//WAS DISABLEEEDDDDDD
_h = [] execVM "Scripts\gcrs\gcrsdroprope.sqf";
waitUntil{scriptDone _h};
*/


//WAS DISABLEEEDDDDDD
/*_h = [] execVM "Awesome\Rappel\init.sqf";
waitUntil {scriptDone _h};*/



if (isServer) then {
	[120,1800,true] execVM "cly_removedead.sqf";
	[30, 0, 0, "serverloop"] execVM "mayorserverloop.sqf";
	[0, 0, 0, ["serverloop"]] execVM "chiefserverloop.sqf";
	[] execVM "gangsserverloop.sqf";
	[] execVM "druguse.sqf";
	[] execVM "drugreplenish.sqf";
	[] execVM "robpool.sqf";
	//WAS DISABLEEEDDDDDD
	//[] execVM "Awesome\Scripts\hunting.sqf";
	//[] execVM "setObjectPitches.sqf";
	//[] execVM "governmentconvoy.sqf";
	[] execVM "geddon.sqf";
	[] execVM "iniDB\war_loop.sqf";

//=======================rob gas station init and variables================
	station1money = 50000;
	publicvariable "station1money";
	station2money = 50000;
	publicvariable "station2money";
	station3money = 50000;
	publicvariable "station3money";
	station4money = 50000;
	publicvariable "station4money";
	station5money = 50000;
	publicvariable "station5money";
	station6money = 50000;
	publicvariable "station6money";
	station7money = 50000;
	publicvariable "station7money";
	station8money = 50000;
	publicvariable "station8money";
	station9money = 50000;
	publicvariable "station9money";
	[] execVM "stationrobloop.sqf";
};

[] execVM "zone\zone.sqf";

/*
// Define Variables

gcrsrope1 = "none";
gcrsrope2 = "none";
gcrsrope3 = "none";
gcrsrope4 = "none";
gcrsrope5 = "none";
gcrsrope6 = "none";
gcrsrope7 = "none";
gcrsrope8 = "none";
gcrsrope9 = "none";
gcrsrope10 = "none";
gcrsrope11 = "none";
gcrsrope12 = "none";
gcrsrope13 = "none";
gcrsrope14 = "none";
gcrsrope15 = "none";
gcrsrepelvehicle = "none";
gcrsropedeployed = "false";
gcrsdeployropeactionid = 0;
gcrsdropropeactionid = 0;
gcrsplayerrepelactionid = 0;
gcrsplayerveh = "none";
gcrspilotvehicle = "none";
gcrsrapelvehiclearray = ["MH6J_EP1", "UH1H_TK_GUE_EP1", "UH60M_EP1", "BAF_Merlin_HC3_D", "CH_47F_EP1", "Mi17_UN_CDF_EP1", "Ka60_PMC"];
gcrsrapelheloarray = [];
gcrsplayerveharray = [];
*/
// End GeneralCarver's Rapel Script Init Scripting

//// Start the Drop Cargo Script
execVM "BTK\Cargo Drop\Start.sqf";
/*
// ====================================================================================
// DEFINES
	#ifndef execNow
	#define execNow call compile preprocessfilelinenumbers
	#endif
	#define PP preprocessfilelinenumbers
	#define VAR_DEFAULT(var,val) if (isNil #var) then {var=(val);}
// ====================================================================================
// init persistentDB
		execNow "core\init.sqf";
// ====================================================================================
*/
