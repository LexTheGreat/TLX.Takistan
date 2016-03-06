// Name:		find_airstrip.sqf
// Developer:	Tyler
// Date:		1/9/2012
// Usage:		Finds the airstrip selected in the combo box

//Include the dialog constants
#include "heli_extras_dialog\heli_extras_dialog_constants.hpp"

//init private variables
private
[
	"_airstrip",
	"_display",
	"_index",
	"_data"
];

disableSerialization;

_display = findDisplay FDKTZ_Airplane_Extras_Dialog;
_index = lbCurSel FDKTZ_Airplane_Extras_Dialog_Select_Airstrip;

_data = lbData [FDKTZ_Airplane_Extras_Dialog_Select_Airstrip, _index];

//Convert the data into a number
_airstrip = parseNumber _data;

//Return the airstrip
_airstrip