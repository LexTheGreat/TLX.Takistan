//Include the Userconfig File -- Used for the Addon Version to change keys
//#include "\userconfig\Heli_Extras\Heli_Extras_Settings.hpp";

private ["_key","_shift","_alt","_ctrl"];

// Set Key here for script version
_key = 219;
_shift = false;
_alt = false;
_ctrl = false;

//Key to open the heli extras dialog

// _key = [configFile >> "heli_extras" >> "Menu_Key", "number", 219] call CBA_fnc_getConfigEntry;
	
// if ([configFile >> "heli_extras" >> "shift", "number", 0] call CBA_fnc_getConfigEntry == 1) then
// {
// 	_shift = true;
// };
	
// if ([configFile >> "heli_extras" >> "alt", "number", 0] call CBA_fnc_getConfigEntry == 1) then
// {
// 	_alt = true;
// };
	
// if ([configFile >> "heli_extras" >> "ctrl", "number", 0] call CBA_fnc_getConfigEntry == 1) then
// {
// 	_ctrl = true;
// };
	
// [219,[false,true,false]]


//Check for ACE and integrate to Self-interaction Menu
if (isClass(configFile>>"CfgPatches">>"ace_main")) then
{
	FDKTZ_Heli_Extras_Key = ace_sys_interaction_key_self;
}
else
{
	FDKTZ_Heli_Extras_Key = [_key,[_shift,_ctrl,_alt]];
};
	

FDKTZ_Heli_Menu_Title = "Heli Extras Menu";


tnnul = execVM "heli_extras\Menu_setup.sqf";