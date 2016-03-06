// Name:		heli_extras_init.sqf
// Developer:	Tyler
// Date:		10/26/2011
// Usage:		Inits the Helicopter Extras Script system and makes checks on what type of helicopter it is

//PreCompile functions
FDKTZ_Heli_Stay_Landed_Function = Compile preprocessFileLineNumbers "heli_extras\helicopter\heli_scripts\functions\heli_land.sqf";
FDKTZ_Find_Heli = Compile preprocessFileLineNumbers "heli_extras\find_heli.sqf";
FDKTZ_Button_Control = Compile preprocessFileLineNumbers "heli_extras\helicopter\heli_scripts\functions\button_control.sqf";
FDKTZ_Button_Check = Compile preprocessFileLineNumbers "heli_extras\helicopter\heli_scripts\functions\button_check.sqf";
FDKTZ_Get_Heli_Type = Compile preprocessFileLineNumbers "heli_extras\heli_type.sqf";
//FDKTZ_Get_Helis = Compile preprocessFileLineNumbers "heli_extras\get_helis_in_squad.sqf";

//Aircraft functions
FDKTZ_Find_Airplane = Compile preprocessFileLineNumbers "heli_extras\find_airplane.sqf";
FDKTZ_Find_Airstrip = Compile preprocessFileLineNumbers "heli_extras\find_airstrip.sqf";
FDKTZ_Find_Plane_Pilot = Compile preprocessFileLineNumbers "heli_extras\find_plane_pilot.sqf";

//Common Functions
FDKTZ_Get_Slider = Compile preprocessFileLineNumbers "heli_extras\heli_get_slider.sqf";
FDKTZ_Get_Textbox = Compile preprocessFileLineNumbers "heli_extras\heli_get_textbox.sqf";
FDKTZ_Disable_AI = Compile preprocessFileLineNumbers "heli_extras\helicopter\heli_scripts\functions\disable_AI.sqf";
FDKTZ_Enable_AI = Compile preprocessFileLineNumbers "heli_extras\helicopter\heli_scripts\functions\Enable_AI.sqf";

//Height Functions
FDKTZ_Update_textbox = Compile preprocessFileLineNumbers "heli_extras\heli_update_txtbox.sqf";
FDKTZ_Set_Height = Compile preprocessFileLineNumbers "heli_extras\helicopter\heli_scripts\heli_options\heli_set_height.sqf";

//Simple Functions
FDKTZ_Check_Angle = 
{
	private["_angle"];
	
	_angle = _this select 0;
	if (_angle > 360) then 
	{
		_angle = _angle - 360;
	};
	
	if (_angle < 0) then 
	{
		_angle = 360 + _angle;
	};
	
	_angle; 
};

//create function module for the halo function
execVM "heli_extras\init\functions_init.sqf";

//Variable to hold the height between dialog uses
FDKTZ_Heli_Extras_Height_Cached = 0;
FDKTZ_Heli_Extras_Radius_Cached = 50;

//Settings
//Debug Mode 0 = Off 1 = On
FDKTZ_Heli_Extras_Debug = 0;

FDKTZ_Heli_Stop_Orders = false;


if (FDKTZ_Heli_Extras_Debug == 1) then
{
	diag_log format ["Heli Extras Initalized"];
	player globalChat "Heli Extras Initalized";
};