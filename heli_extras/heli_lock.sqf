// Name:		heli_type.sqf
// Developer:	Tyler
// Date:		1/5/2012
// Usage:		Checks which chopper was selected and enables and disables button commands for it

//Include the Dialog IDC Defines
#include "heli_extras_dialog\heli_extras_dialog_constants.hpp"

[FDKTZ_Heli_Extras_Dialog_AI_Slingload, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Combat_Insertion, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Combat_Pickup, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_AI_Fastrope, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Start_Engine, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Dust_Off, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Land, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Abort_Landing, "disable"] call FDKTZ_Button_Control;
[FDKTZ_Heli_Extras_Dialog_Set_Height_Button, "disable"] call FDKTZ_Button_Control;
