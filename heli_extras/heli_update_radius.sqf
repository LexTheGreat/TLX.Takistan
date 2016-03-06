// Name:		heli_update_txtbox.sqf
// Developer:	Tyler
// Date:		4/17/2012
// Usage:		Update the textbox with the selected height

#include "heli_extras_dialog\heli_extras_dialog_constants.hpp"

private
[
	"_height",
	"_display",
	"_txtbox",
	"_heightStr"
];

disableSerialization;

//Get textbox
_display = findDisplay FDKTZ_Heli_Extras_Dialog;
_txtbox = _display displayCtrl FDKTZ_Heli_Extras_Dialog_Set_Radius_Textbox;

//get the radius off of the slider
_height = call FDKTZ_Get_Radius;

//Convert to string
_heightStr = format ["%1",_height];

//debug
// hint format ["Height: %1",_height];

//update textbox
_txtbox ctrlSetText _heightStr;