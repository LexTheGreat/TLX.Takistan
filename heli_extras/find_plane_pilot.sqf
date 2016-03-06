// Name:		find_plane_pilot.sqf
// Developer:	Tyler
// Date:		1/9/2012
// Usage:		Finds and returns the aircraft's pilot

//Include the dialog constants
#include "heli_extras_dialog\heli_extras_dialog_constants.hpp"

//init private variables
private
[
	"_display",
	"_index",
	"_data",
	"_num",
	"_units",
	"_pilot"
];

disableSerialization;

_display = findDisplay FDKTZ_Airplane_Extras_Dialog;
_index = lbCurSel FDKTZ_Airplane_Extras_Dialog_Select_Airplane;

_data = lbData [FDKTZ_Airplane_Extras_Dialog_Select_Airplane, _index];

//convert data string into a number
_num = parseNumber _data;

//get the units in the player's squad
_units = units group player;

//Get the pilot
_pilot = _units select _num;

//Return the pilot
_pilot