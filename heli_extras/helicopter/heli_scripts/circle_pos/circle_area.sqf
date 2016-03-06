// Name:		circle_area.sqf
// Developer:	Tyler
// Date:		4/17/2012
// Usage:		Starts the helicopter to circle the given position either left or right

private
[
	"_heli",
	"_centerPos",
	"_dir",
	"_radius",
	"_heliPos",
	"_heading",
	"_angle",
	"_RotDir"
];

_heli = _this select 0;
_radius = _this select 1;
_height = _this select 2;
_RotDir = _this select 3;

_centerPos = getMarkerPos "FDKTZ_Heli_Circle_Area";

_dir = _centerPos;

//Add height
_dir set [2, _height];

//Move heli to spot
_heli doMove _dir;

while { ( (alive _heli) && !(unitReady _heli) ) } do
{
	//put a delay for rechecking the above command
	sleep 1;
};

//Disable AI on heli pilot
_heli disableAI "TARGET";
_heli disableAI "AUTOTARGET";
_heli disableAI "MOVE";

//Circle in progress
FDKTZ_End_Cir = 0;
_angle = 0;
if (_RotDir == "left") then
{
	_heading = 0;
}
else
{
	_heading = 180;
};

//Get a position on outside of circle
_heliPos = [_centerPos,_radius,_angle] call FDKTZ_Find_Point_Circle;

//append heli height
_heliPos set [2,_height];

_heli setDir _heading;
_heli setPosATL _heliPos;


while {(alive _heli)} do
{
	sleep 0.005;
	
	if (_RotDir == "left") then
	{
		_angle = [_angle + 0.1] call FDKTZ_Check_Angle;
	
		_heading = [_heading - 0.1] call FDKTZ_Check_Angle;
	}
	else
	{
		_angle = [_angle - 0.1] call FDKTZ_Check_Angle;
	
		_heading = [_heading + 0.1] call FDKTZ_Check_Angle;
	};
	
	//Get a position on outside of circle
	_heliPos = [_centerPos,_radius,_angle] call FDKTZ_Find_Point_Circle;
	
	//append heli height
	_heliPos set [2,_height];
		
	_heli setDir _heading;
	_heli setPosATL _heliPos;
	
	if (FDKTZ_End_Cir == 1) exitWith{};
};

//Reenable AI Move
_heli enableAI "MOVE";

//Delete Marker
deleteMarkerLocal "FDKTZ_Heli_Circle_Area";