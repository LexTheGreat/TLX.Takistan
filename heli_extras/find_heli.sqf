// Name:		find_heli.sqf
// Developer:	Tyler
// Date:		1/4/2012
// Usage:		Finds the heli selected from the combo box

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

_display = findDisplay FDKTZ_Heli_Extras_Dialog;
_index = lbCurSel FDKTZ_Heli_Extras_Dialog_Select_Heli;

_data = lbData [FDKTZ_Heli_Extras_Dialog_Select_Heli, _index];

//convert data string into a number
_num = parseNumber _data;

//Convert to an Array Index
//_num = _num - 1;

//player sideChat format ["%1", _num];

if (_num == 0) exitWith {
	player sideChat "Choose a Vehicle from the listbox!!!";
	_heli = nil;
	_heli
};

//get the units in the player's squad
_units = units group player;

//check the _num variable to see if it is >= 1

//Get the pilot
_pilot = _units select _num;

//Get the heli
_heli = vehicle _pilot;

//Return the value
_heli
