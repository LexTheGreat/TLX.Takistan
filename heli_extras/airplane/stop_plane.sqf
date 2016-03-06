// Name:		stop_plane.sqf
// Developer:	Tyler
// Date:		1/9/2012
// Usage:		Makes the AI Airplane stop at the airfield

//init private variables
private 
[
	"_plane",
	"_pilot"
];

//get the plane
_plane = _this select 0;

//get the pilot
_pilot = driver _plane;

//turn off the engine
_plane engineOn false;

//set fuel to 0 to stop the AI from continuing on taxing to take-off again
_plane setFuel 0;

//have pilot get out of the plane
_pilot action ["getOut",_plane];

//sleep 20
Sleep 20;

//fill fuel back to full

_plane setFuel 1;

//remove eventhandler from plane

_plane removeEventHandler ["LandedStopped", 0];

//debug hint

if (FDKTZ_Heli_Extras_Debug == 1) then
{
	hint "Plane Landed and Stopped";
};
