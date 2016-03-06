// script written by Eddie Vedder for the Chernarus life Revivved mission


sleep 10;


// Prodavec: convoy fix
//_govconvoygroup = createGroup east;


while {true} do 
{	

// Prodavec: convoy fix
_govconvoygroup = createGroup west;	

//diag_log "STARTING GOVCONVOY";
private["_counter", "_counter2", "_added", "_sidewon"];
_counter = 0;
_counter2 = 0;
_added = false;
_sidewon = "Neither";




//waits for respawn
sleep (convoyrespawntime*55);
"hint ""The Government convoy will leave in a few minutes."";" call broadcast;

sleep (convoyrespawntime*4);
"hint ""The Government convoy will leave soon."";" call broadcast;


sleep (convoyrespawntime*1);



private["_array","_spawn","_pos","_radius", "_markerobj", "_markername"];
//Gets position to spawn
_array  = [[convspawn1, 5], [convspawn2, 5], [convspawn3, 5], [convspawn4, 5], [convspawn5, 5]];
_spawn  = (floor(random(count _array)));						
_pos    = (_array select _spawn) select 0;
_radius = (_array select _spawn) select 1;

// spawn markers truck and soldiers
_markerobj = createMarker ["convoy",[0,0]];																				
_markername = "convoy";																														
_markerobj setMarkerShape "ICON";								
"convoy" setMarkerType "Marker";										
"convoy" setMarkerColor "ColorBlue";																														
"convoy" setMarkerText "Government convoy";

_convoystartpos = ASLtoATL (getPosASL _pos);


//convoy_marker_active = 1;
convoyhascash=true; publicvariable "convoyhascash";

convoytruck = createVehicle ["MTVR_DES_EP1",_convoystartpos, [], 0, "NONE"];

//convoytruck setVehicleInit 'convoytruck = this; this setVehicleVarName "convoytruck"; this setAmmoCargo 0; this setDir getdir _convoystartpos;clearweaponcargo this;clearmagazinecargo this;';

//processInitCommands;	
//processinitcommands;
//publicvariable "convoytruck";
 

deleteVehicle convoysoldier;
convoysoldier = _govconvoygroup createUnit ["CZ_Special_Forces_TL_DES_EP1", _convoystartpos, [], 0, "NONE"];
convoysoldier setVehicleInit 'convoysoldier = this;this setVehicleVarName "convoysoldier";';
//processInitCommands;
removeAllWeapons convoysoldier;
convoysoldier addweapon "revolver_gold_EP1";
convoysoldier addmagazine "6Rnd_45ACP";
convoysoldier addmagazine "6Rnd_45ACP";
convoysoldier addmagazine "6Rnd_45ACP";
convoysoldier addmagazine "6Rnd_45ACP";
convoysoldier addmagazine "6Rnd_45ACP";
convoysoldier addmagazine "6Rnd_45ACP";

deleteVehicle convoyguard1;
convoyguard1 = _govconvoygroup createUnit ["CZ_Special_Forces_TL_DES_EP1", _pos, [], _radius, "FORM"];
convoyguard1 setvehicleinit 'convoyguard1 = this;this setVehicleVarName "convoyguard1";';
removeAllWeapons convoyguard1;
convoyguard1 addweapon "SCAR_L_STD_Mk4CQT";
convoyguard1 addmagazine "30Rnd_556x45_Stanag";
convoyguard1 addmagazine "30Rnd_556x45_Stanag";
convoyguard1 addmagazine "30Rnd_556x45_Stanag";
convoyguard1 addmagazine "30Rnd_556x45_Stanag";
convoyguard1 addmagazine "30Rnd_556x45_Stanag";


deleteVehicle convoyguard2;
convoyguard2 = _govconvoygroup createUnit ["CZ_Soldier_Light_DES_EP1", _pos, [], _radius, "FORM"];
convoyguard2 setvehicleinit 'convoyguard2 = this;this setVehicleVarName "convoyguard2";';
removeAllWeapons convoyguard2;
convoyguard2 addweapon "SCAR_L_CQC_Holo";
convoyguard2 addmagazine "30Rnd_556x45_Stanag";
convoyguard2 addmagazine "30Rnd_556x45_Stanag";
convoyguard2 addmagazine "30Rnd_556x45_Stanag";
convoyguard2 addmagazine "30Rnd_556x45_Stanag";
convoyguard2 addmagazine "30Rnd_556x45_Stanag";


deleteVehicle convoyguard3;
convoyguard3 = _govconvoygroup createUnit ["CZ_Soldier_Light_DES_EP1", _pos, [], _radius, "FORM"];
convoyguard3 setvehicleinit 'convoyguard3 = this;this setVehicleVarName "convoyguard3";';
removeAllWeapons convoyguard3; 
convoyguard3 addweapon "SCAR_L_CQC_Holo";
convoyguard3 addmagazine "30Rnd_556x45_Stanag";
convoyguard3 addmagazine "30Rnd_556x45_Stanag";
convoyguard3 addmagazine "30Rnd_556x45_Stanag";
convoyguard3 addmagazine "30Rnd_556x45_Stanag";
convoyguard3 addmagazine "30Rnd_556x45_Stanag";


deleteVehicle convoyguard4;
convoyguard4 = _govconvoygroup createUnit ["CZ_Special_Forces_MG_DES_EP1", _pos, [], _radius, "FORM"];
convoyguard4 setvehicleinit 'convoyguard4 = this;this setVehicleVarName "convoyguard4";';
removeAllWeapons convoyguard4;
convoyguard4 addweapon "M60A4_EP1";
convoyguard4 addmagazine "100Rnd_762x51_M240";
convoyguard4 addmagazine "100Rnd_762x51_M240";
convoyguard4 addmagazine "100Rnd_762x51_M240";

processInitCommands;
/*publicvariable "convoysoldier";
publicvariable "convoyguard1";
publicvariable "convoyguard2";
publicvariable "convoyguard3";
publicvariable "convoyguard4";*/

_govconvoygroup selectLeader convoysoldier;



convoysoldier moveInDriver convoytruck; 
convoysoldier assignAsDriver convoytruck;

//make guards follow convoysoldier
convoyguard1 dofollow convoysoldier;
convoyguard2 dofollow convoysoldier;
convoyguard3 dofollow convoysoldier;
convoyguard4 dofollow convoysoldier;

_govconvoygroup setbehaviour "AWARE";
_govconvoygroup setCombatMode "GREEN";


//put guards in car with convoysoldier
convoyguard1 moveincargo convoytruck; 
convoyguard1 assignAsCargo convoytruck;
convoyguard2 moveInCargo convoytruck; 
convoyguard2 assignAsCargo convoytruck;
convoyguard3 moveInCargo convoytruck; 
convoyguard3 assignAsCargo convoytruck;
convoyguard4 moveInCargo convoytruck; 
convoyguard4 assignAsCargo convoytruck;
sleep 2;
convoysoldier commandMove getmarkerpos "policebase";



//start mission loop
"server globalchat ""The supply truck has spawned, civs kill the driver to stop it and steal the government funds.  Cops your bonuses are inside make sure it gets to the base!"";" call broadcast;
while {true} do
	{
	// Prodavec: convoy fix debug info
	//_debug_str = format ['_counter2=%1', _counter2];
	//hint _debug_str;
	
	"if(alive player and isciv and player distance convoytruck <= 250)then{titleText [""The Government is operating in this area! Turn back or you will be shot!"", ""plain down""]};" call broadcast;
	"if(alive player and !iscop and player distance convoytruck <= 180)then{player addRating -10000;};" call broadcast;
        "convoy" setmarkerpos getpos convoytruck;
	if (!alive convoyguard1) then
		{
		removeAllWeapons convoyguard1;	
		};
		
	if (!alive convoyguard2) then
		{
		removeAllWeapons convoyguard2;	
		};
		
	if (!alive convoyguard3) then
		{
		removeAllWeapons convoyguard3;	
		};
		
	if (!alive convoyguard4) then
		{
		removeAllWeapons convoyguard4;	
		};

		
		
		
	if (!alive convoysoldier and !_added) then 
		{
		removeAllWeapons convoysoldier;
		_added = true;
		//stealgovmoney = convoytruck addAction ["Steal Government salaries", "stealgovmoney.sqf",[""],1,false,true,"","isciv and (call INV_isArmed)"];
		"if (iscop) then {server sidechat ""The governemnt convoy driver is dead get in his truck and drive it to the base"";};" call broadcast;
		convoytruck setVehicleLock "unlocked";
		unassignVehicle convoyguard1;
		unassignVehicle convoyguard2;
		unassignVehicle convoyguard3;
		unassignVehicle convoyguard4;
		convoyguard1 action ["eject", convoytruck];
		convoyguard2 action ["eject", convoytruck];
		convoyguard3 action ["eject", convoytruck];
		convoyguard4 action ["eject", convoytruck];
		convoyguard1 dofollow convoytruck;
		convoyguard2 dofollow convoytruck;
		convoyguard3 dofollow convoytruck;
		convoyguard4 dofollow convoytruck;		
		};
	
	
	if (_counter >= 15) then
		{
		convoysoldier commandmove getmarkerpos "policebase";
		
		_counter = 0;
		};
	

	if (convoytruck distance getmarkerpos "policebase" < 150) exitwith 
		{   
		"if (iscop) then {[player, govconvoybonus] call transaction_bank; player sidechat format[""you received $%1 for successfully escorting the convoy"", govconvoybonus];};" call broadcast;
		_sidewon = "Cops";
		};
	

	if(!convoyhascash) exitwith 
		{
		
		_sidewon = "Civs";
		};
	
	if (_counter2 >= 900) exitwith
		{
		_sidewon = "Neither";
		};
		
	if (!alive convoytruck) exitwith
		{
		"server globalchat ""The government truck has been destroyed the money has burned"";" call broadcast;
		_sidewon = "Neither";
		};
			
	_counter2 = _counter2 + 1;
	
	_counter = _counter + 1;
	
	sleep 1;
		

	
	};
	
//mission has ended resetting vars and deleting units



(format ['server globalChat "%2 side won the government convoy mission, next truck leaves in %1 minutes!";', convoyrespawntime, _sidewon]) call broadcast;
deletevehicle convoyguard1;
deletevehicle convoyguard2;
deletevehicle convoyguard3;
deletevehicle convoyguard4;
deletevehicle convoysoldier;
deletevehicle convoytruck;
deletemarker "convoy";

// Prodavec: convoy fix
_counter2 = 0;
deleteGroup _govconvoygroup;
//_endmissionounter = 0; // useless

_counter = 0;
_sidewon = "Neither";
//moneyintruck = true;
_added = false;


};






//written by Gman