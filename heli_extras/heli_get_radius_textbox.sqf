// Name:		heli_get_textbox.sqf
// Developer:	Tyler
// Date:		4/17/2012
// Usage:		Gets the number in the textbox

//Include the dialog constants
#include "heli_extras_dialog\heli_extras_dialog_constants.hpp"

private
[
	"_dialog",
	"_txtbox",
	"_txtstring",
	"_number"
];

disableSerialization;

_dialog = findDisplay FDKTZ_Heli_Extras_Dialog;
_txtbox = _dialog displayCtrl FDKTZ_Heli_Extras_Dialog_Set_Radius_Textbox;

//get the text out of the textbox
_txtstring = ctrlText _txtbox;

//change string into number
_number = parseNumber _txtstring;

//return number
_number