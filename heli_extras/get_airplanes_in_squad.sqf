// Name:		get_helis_in_squad.sqf
// Developer:	Tyler
// Date:		1/4/2012
// Usage:		Populates the combo box with the helis in the player's squad

//Include the dialog constants
#include "heli_extras_dialog\heli_extras_dialog_constants.hpp"

//Check for local player
if(not local player) exitWith{};

private
[
	"_units",
	"_display",
	"_heliComboBox",
	"_vehicle",
	"_count",
	"_heliname",
	"_sqdstr",
	"_sqdmemnum",
	"_num",
	"_num2",
	"_index",
	"_strCount",
	"_island",
	"_airstripComboBox"
];

disableSerialization;

//get the units in the player's squad
_units = units group player;

_display = findDisplay FDKTZ_Airplane_Extras_Dialog;
_heliComboBox = _display displayCtrl FDKTZ_Airplane_Extras_Dialog_Select_Airplane;
_airstripComboBox = _display displayCtrl FDKTZ_Airplane_Extras_Dialog_Select_Airstrip;

_count = 0; //Counter to keep track of units
{
	//get the vehicle the unit is in
	_vehicle = vehicle _x;
	
	if ((_vehicle isKindOf "Plane") and (driver _vehicle == _x)) then
	{
		//First get the display name of the heli
		_heliname = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		//String the squad members number
		_sqdstr = format["%1", _x];
		//Get squad members number
		_sqdmemnum = [_sqdstr, ""] call CBA_fnc_split;
		_num = _sqdmemnum select 8;
		if (_count >= 9) then
		{
			_num2 = _sqdmemnum select 9;
			_num = _num + _num2;
		};
		//add helis to the combo box
		_index = _heliComboBox lbAdd format["%2 - %1",_heliname,_num];
		//String the _count variable
		_strCount = format ["%1",_count];
		
		//add extra data string to the index also
		_heliComboBox lbSetData [_index,_strCount];
		
	};
	
//Increment the count variable
_count = _count + 1;

} forEach _units;

//Find the current island being played on to get config information from it for airport 

_island = toLower(worldName);

//Debug
// hint format ["%1", _island]; 

switch (_island) do
{
	case "takistan":
	{
		//Island is Takistan, fill airstrip combo box with airstrips from takistan
		//Rasman Airbase
		_index = _airstripComboBox lbAdd "Rasman Airbase";
		_airstripComboBox lbSetData [_index,"0"];
		//Loy Manera Airbase
		_index = _airstripComboBox lbAdd "Loy Manera Airbase";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "zargabad":
	{
		_index = _airstripComboBox lbAdd "Zargabad Airport";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "utes":
	{
		_index = _airstripComboBox lbAdd "Utes Airfield";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "elephantisland":
	{
		_index = _airstripComboBox lbAdd "Elephant Island Airfield";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "queshkibrul":
	{
		_index = _airstripComboBox lbAdd "Quesh Kibrul Airfield";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "everon2010":
	{
		_index = _airstripComboBox lbAdd "Everon Airport";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "malden2010":
	{
		_index = _airstripComboBox lbAdd "Malden Airport";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "sbrodj":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Brk Airbase";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Suppr Airbase";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "fallujah":
	{
		_index = _airstripComboBox lbAdd "Fallujah Airport";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "cmr_cicada":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Drozhino Airbase";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Chalnik Airfield";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "chernarus":
	{
		_index = _airstripComboBox lbAdd "Vybor Airfield";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Kranostav Airstrip";
		_airstripComboBox lbSetData [_index,"1"];
		
		_index = _airstripComboBox lbAdd "Balota Airstrip";
		_airstripComboBox lbSetData [_index,"2"];
	};
	
	case "nicosia":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Nicosia Airport";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Kosic Airport";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "panthera2":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Arnoldstein Airport";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Boriana Airbase";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "shapur_baf":
	{
		_index = _airstripComboBox lbAdd "Shapur Airfield";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "tigeria":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Tigeria Airport";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Isla de Despestar Airstrip";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "tup_qom":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Manzariyeh Airfield";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBOx lbAdd "Airstrip";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "isladuala":
	{
		//4 Airstrips
		_index = _airstripComboBox lbAdd "Kinsella Intl. Airport";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Molatia Intl. Airport";
		_airstripComboBox lbSetData [_index,"1"];
		
		_index = _airstripComboBox lbAdd "Swonto Pinley Airport";
		_airstripComboBox lbSetData [_index,"2"];
		
		_index = _airstripComboBox lbAdd "Tasmera Airport";
		_airstripComboBox lbSetData [_index,"3"];
	};
	
	case "lingor":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Maruko Intl. Airport";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Sargentas Airport";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "fayshkhabur":
	{
		//3 Airstrips - 2 are on the same airfield
		_index = _airstripComboBox lbAdd "Mushorah Airbase West";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Mushorah Airbase East";
		_airstripComboBox lbSetData [_index,"1"];
		
		_index = _airstripComboBox lbAdd "Abu Wajnam Airstrip";
		_airstripComboBox lbSetData [_index,"2"];
	};
	
	case "emita":
	{
		//1 airstrip
		_index = _airstripComboBox lbAdd "Schlyter Airfield";
		_airstripComboBox lbSetData [_index,"0"];
	};
	
	case "mbg_celle2":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "ETHS";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "ETHC";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "sara":
	{
		//4 Airstrips
		_index = _airstripComboBox lbAdd "Paraiso Airport";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Rahmadi Airfield";
		_airstripComboBox lbSetData [_index,"1"];
		
		_index = _airstripComboBox lbAdd "Pita Airfield";
		_airstripComboBox lbSetData [_index,"2"];
		
		_index = _airstripComboBox lbAdd "Antigua Airport";
		_airstripComboBox lbSetData [_index,"3"];
	};
	
	case "dingor":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Maruko Intl. Airport";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Sargentas Airport";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "jadegroove":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Rockley Airport";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Port Justice Airport";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	case "reshmaan":
	{
		//2 Airstrips
		_index = _airstripComboBox lbAdd "Airport South";
		_airstripComboBox lbSetData [_index,"0"];
		
		_index = _airstripComboBox lbAdd "Airport North";
		_airstripComboBox lbSetData [_index,"1"];
	};
	
	default
	{
		hint "No Island Config Setup for this island - Check RPT for the Island Name";
		diag_log format ["####################### - Heli Extras: Airplane Control Dialog - Island name: %1",toLower(worldName)];
	};
};