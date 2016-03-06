// Name:		Arty_get_slider.sqf
// Developer:	Tyler
// Date:		1/24/2012
// Usage:		Gets the slider value

//include constants
#include "heli_extras_dialog\heli_extras_dialog_constants.hpp"

private
[
	"_value",
	"_dialog",
	"_slider"
];

disableSerialization;

//get dialog
_dialog = findDisplay FDKTZ_Heli_Extras_Dialog;

_slider = _dialog displayCtrl FDKTZ_Heli_Extras_Dialog_Height_Slider;

//get slider position

_value = sliderPosition _slider;

//floor the value
_value = floor _value;

//return the position
_value