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
	"_heightSlider",
	"_textbox",
	"_value"
];

disableSerialization;

//get the units in the player's squad
_units = units group player;

_display = findDisplay FDKTZ_Heli_Extras_Dialog;
_heliComboBox = _display displayCtrl FDKTZ_Heli_Extras_Dialog_Select_Heli;
_heightSlider = _display displayCtrl FDKTZ_Heli_Extras_Dialog_Height_Slider;
_textbox = _display displayCtrl FDKTZ_Heli_Extras_Dialog_Height_Textbox;
_radiusSlider = _display displayCtrl FDKTZ_Heli_Extras_Dialog_Set_Radius_Slider;
_radiusTextbox = _display displayCtrl FDKTZ_Heli_Extras_Dialog_Set_Radius_Textbox;

_heightSlider sliderSetRange [0,1000];
_radiusSlider sliderSetRange [50,500];

_count = 0; //Counter to keep track of units
{
	//get the vehicle the unit is in
	_vehicle = vehicle _x;
	
	if ((_vehicle isKindOf "Helicopter") and (driver _vehicle == _x)) then
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

_heightSlider sliderSetPosition FDKTZ_Heli_Extras_Height_Cached;
_radiusSlider sliderSetPosition FDKTZ_Heli_Extras_Radius_Cached;


_value = format ["%1",FDKTZ_Heli_Extras_Height_Cached];
_textbox ctrlSetText _value;

_value = format ["%1",FDKTZ_Heli_Extras_Radius_Cached];
_radiusTextbox ctrlSetText _value;
