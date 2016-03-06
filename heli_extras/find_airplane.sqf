// Name:		find_airplane.sqf
// Developer:	Tyler
// Date:		1/9/2012
// Usage:		Finds the airplane selected from the combo box

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
	"_pilot",
	"_heli"
];

disableSerialization;

_display = findDisplay FDKTZ_Airplane_Extras_Dialog;
_index = lbCurSel FDKTZ_Airplane_Extras_Dialog_Select_Airplane;

_data = lbData [FDKTZ_Airplane_Extras_Dialog_Select_Airplane, _index];

//convert data string into a number
_num = parseNumber _data;

//Convert to an Array Index
//_num = _num - 1;

//get the units in the player's squad
_units = units group player;

//check the _num variable to see if it is >= 1

//Get the pilot
_pilot = _units select _num;

//Get the heli
_heli = vehicle _pilot;

//Return the value
_heli
