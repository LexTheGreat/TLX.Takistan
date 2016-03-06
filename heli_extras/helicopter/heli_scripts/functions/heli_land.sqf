// Name:		heli_land.sqf
// Developer:	Tyler
// Date:		12/31/2011
// Usage:		Keeps the heli on the ground until the action to dust-off is used

//init private variables
private
[
	"_FDKTZ_heli"
];

//get the heli
_FDKTZ_heli = _this select 0;

//loop until the dust-off action is fired
while {(_FDKTZ_heli getVariable "FDKTZ_Heli_Land")} do
{
	_FDKTZ_heli setVelocity [0,0,-0.11];
	if (getPos _FDKTZ_heli select 2 > 1) then {_FDKTZ_heli land "LAND"};
	Sleep 0.1;
	if !(isEngineOn _FDKTZ_heli) then {_FDKTZ_heli engineOn true};
};
_FDKTZ_heli engineOn true;
if (true) exitWith {};