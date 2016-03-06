// Name:		Rotate_right.sqf
// Developer:	Tyler
// Date:		4/18/2012
// Usage:		Rotates the helicopter right a little bit, useful for player gunners and AI pilots

private
[
	"_heli",
	"_curDir"
];

_heli = call FDKTZ_Find_Heli;

if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the Rotate_right.sqf Script";
	};
}
else
{
	_curDir = getDir _heli;

	_newDir = [_curDir + 5] call FDKTZ_Check_Angle;

	for [{_x = _curDir}, {_x <= _newDir}, {_x = _x + 0.1}] do
	{
		sleep 0.005;
	
		_x = [_x] call FDKTZ_Check_Angle;
	
		_heli setDir _x;
	};
};