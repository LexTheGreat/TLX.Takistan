// Name:		heli_type.sqf
// Developer:	Tyler
// Date:		1/5/2012
// Usage:		Checks which chopper was selected and enables and disables button commands for it

//Include the Dialog IDC Defines
#include "heli_extras_dialog\heli_extras_dialog_constants.hpp"

//init private variables
private
[
	"_heli",
	"_istransport",
	"_isgunship",
	"_isuav",
	"_debug"
];

//get the heli selected
_heli = call FDKTZ_Find_Airplane;

//get the type of heli using the config file
#define __cfgheli configFile >> "CfgVehicles" >> typeOf _heli

_istransport = false;
_isgunship = false;
_isuav = false;

if ([__cfgheli >> "transportSoldier", "number", 0] call CBA_fnc_getConfigEntry > 1) then {_istransport = true;};
if (([__cfgheli >> "threat", "array", [0,0,0]] call CBA_fnc_getConfigEntry) select 1 > 0.25) then {_isgunship = true;};
if ([__cfgheli >> "isuav", "number", 0] call CBA_fnc_getConfigEntry > 0) then {_isuav = true};

//check for type of heli

if (_isuav == 1) exitWith
{
	if (FDKTZ_Heli_Extras_Debug == 1) then { diag_log format ["Heli %1 is a UAV", typeOf _heli] };
};
if (_istransport == 1) then
{
	//enable paradrop and halo buttons
	[FDKTZ_Airplane_Extras_Dialog_Paradrop, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Airplane_Extras_Dialog_HALO, "enable"] call FDKTZ_Button_Control;
	//Debug
	if (FDKTZ_Heli_Extras_Debug == 1) then { diag_log format ["Heli %1 is a Transport",typeOf _heli]};
};
	
if (_isgunship == 1) then
{
	//disable paradrop and halo buttons
	[FDKTZ_Airplane_Extras_Dialog_Paradrop, "disable"] call FDKTZ_Button_Control;
	[FDKTZ_Airplane_Extras_Dialog_HALO, "disable"] call FDKTZ_Button_Control;
	//Debug
	if (FDKTZ_Heli_Extras_Debug == 1) then { diag_log format ["Heli %1 is a Gunship",typeOf _heli]};
};
