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
_heli = call FDKTZ_Find_Heli;

[FDKTZ_Heli_Extras_Dialog_AI_Slingload, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Combat_Insertion, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Combat_Pickup, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Start_Engine, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Dust_Off, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Land, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Abort_Landing, "enable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Set_Height_Button, "enable"] call FDKTZ_Button_Control;

if (isNil "_heli") exitWith { 
	execVM 'heli_extras\heli_lock.sqf'
};

if (!isNil "_heli") exitWith { 
	[FDKTZ_Heli_Extras_Dialog_AI_Slingload, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Heli_Extras_Dialog_Combat_Insertion, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Heli_Extras_Dialog_Combat_Pickup, "enable"] call FDKTZ_Button_Control;
	//[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Heli_Extras_Dialog_Start_Engine, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Heli_Extras_Dialog_Dust_Off, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Heli_Extras_Dialog_Land, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Heli_Extras_Dialog_Abort_Landing, "enable"] call FDKTZ_Button_Control;
	[FDKTZ_Heli_Extras_Dialog_Set_Height_Button, "enable"] call FDKTZ_Button_Control;
};

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

if ((_istransport == 1) && (_isgunship == 1)) then
{
	//Check for enabled buttons, if not enabled enable them
	if (!([FDKTZ_Heli_Extras_Dialog_AI_Slingload] call FDKTZ_Button_Check)) then
	{
		[FDKTZ_Heli_Extras_Dialog_AI_Slingload, "enable"] call FDKTZ_Button_Control;
	};
	
	if (!([FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach] call FDKTZ_Button_Check)) then
	{
		[FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach, "enable"] call FDKTZ_Button_Control;
	};
	
	if (!([FDKTZ_Heli_Extras_Dialog_Combat_Insertion] call FDKTZ_Button_Check)) then
	{
		[FDKTZ_Heli_Extras_Dialog_Combat_Insertion, "enable"] call FDKTZ_Button_Control;
	};
	
	if (!([FDKTZ_Heli_Extras_Dialog_Combat_Pickup] call FDKTZ_Button_Check)) then
	{
		[FDKTZ_Heli_Extras_Dialog_Combat_Pickup, "enable"] call FDKTZ_Button_Control;
	};
	
	//Check for the fastrope addon
	/*if (isClass (configFile >> "CfgPatches" >> "norrn_dbo_fastrope")) then
		{
			if (_heli isKindOf "Mi24_D_TK_EP1" or _heli isKindOf "mas_tak_veh_mi24p" or _heli isKindOf "UH60M_EP1" or _heli isKindOf "CH_47F_EP1" or _heli isKindOf "MH6J_EP1" or _heli isKindOf "BAF_Merlin_HC3_D" or _heli isKindOf "CH_47F_BAF" or _heli isKindOf "PRACS_MH6J") then
			{
				//Transport is one of these helis, enable the fastrope option
				[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "enable"] call FDKTZ_Button_Control;
			}
			else
			{
				//Transport does not match any of the above disable the button
				[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "disable"] call FDKTZ_Button_Control;
			};
		}
		else
		{
			//No fastrope addon enabled, disable the button
			[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "disable"] call FDKTZ_Button_Control;
		};*/
	
	//Debug
	if (FDKTZ_Heli_Extras_Debug == 1) then { diag_log format ["Heli %1 is a Transport-gunship",typeOf _heli]};
}
else
{
	if (_istransport == 1) then
	{
	
		//Check for enabled buttons, if not enabled enable them
		if (!([FDKTZ_Heli_Extras_Dialog_AI_Slingload] call FDKTZ_Button_Check)) then
		{
			[FDKTZ_Heli_Extras_Dialog_AI_Slingload, "enable"] call FDKTZ_Button_Control;
		};
	
		if (!([FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach] call FDKTZ_Button_Check)) then
		{
			[FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach, "enable"] call FDKTZ_Button_Control;
		};
	
		if (!([FDKTZ_Heli_Extras_Dialog_Combat_Insertion] call FDKTZ_Button_Check)) then
		{
			[FDKTZ_Heli_Extras_Dialog_Combat_Insertion, "enable"] call FDKTZ_Button_Control;
		};
	
		if (!([FDKTZ_Heli_Extras_Dialog_Combat_Pickup] call FDKTZ_Button_Check)) then
		{
			[FDKTZ_Heli_Extras_Dialog_Combat_Pickup, "enable"] call FDKTZ_Button_Control;
		};
		//Check for the Fastrope addon
		/*if (isClass (configFile >> "CfgPatches" >> "norrn_dbo_fastrope")) then
		{
			if (_heli isKindOf "Mi24_D_TK_EP1" or _heli isKindOf "mas_tak_veh_mi24p" or _heli isKindOf "UH60M_EP1" or _heli isKindOf "CH_47F_EP1" or _heli isKindOf "MH6J_EP1" or _heli isKindOf "BAF_Merlin_HC3_D" or _heli isKindOf "CH_47F_BAF" or _heli isKindOf "PRACS_MH6J") then
			{
				//Transport is one of these helis, enable the fastrope option
				[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "enable"] call FDKTZ_Button_Control;
			}
			else
			{
				//Transport does not match any of the above disable the button
				[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "disable"] call FDKTZ_Button_Control;
			};
		}
		else
		{
			//No fastrope addon enabled, disable the button
			[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "disable"] call FDKTZ_Button_Control;
		};*/
		
		//Debug
		if (FDKTZ_Heli_Extras_Debug == 1) then { diag_log format ["Heli %1 is a Transport",typeOf _heli]};
	};
	
	if (_isgunship == 1) then
	{
		//disable Fastrope Button
		[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "disable"] call FDKTZ_Button_Control;
		//disable Slingload Buttons
		[FDKTZ_Heli_Extras_Dialog_AI_Slingload, "disable"] call FDKTZ_Button_Control;
		[FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach, "disable"] call FDKTZ_Button_Control;
		//Disable Combat insertion and landings
		[FDKTZ_Heli_Extras_Dialog_Combat_Insertion, "disable"] call FDKTZ_Button_Control;
		[FDKTZ_Heli_Extras_Dialog_Combat_Pickup, "disable"] call FDKTZ_Button_Control;
		
		
		//Debug
		if (FDKTZ_Heli_Extras_Debug == 1) then { diag_log format ["Heli %1 is a Gunship",typeOf _heli]};
	};
};