// Name:		heli_move.sqf
// Developer:	Tyler
// Date:		1/5/2012
// Usage:		Moves the heli to the map clicked position

//init private variables
private
[
	"_heli",
	"_marker"
];

_marker createMarkerLocal ["HeliMove" [0,0,0]];
_marker setMarkerShapeLocal "ICON";
_marker setMarkerColorLocal "ColorBlack";
_marker setMarkerTypeLocal "End";

FDKTZ_Move_Marked = false;

hint "Map Click Move Position";
onMapSingleClick {"HeliMove" setMarkerPos _pos; FDKTZ_Move_Marked = true};
waitUntil {FDKTZ_Move_Marked};
FDKTZ_Move_Marked = false;

//Got the position to move to, get the heli

_heli = call FDKTZ_Find_Heli;

if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the heli_move.sqf Script";
	};
}
else
{
	//use doMove to the marker position
	_heli doMove (getMarkerPos "HeliMove");
	
	//send a message
	player sideChat "Roger, We will move to the marked position";
	
	//Loop until the heli is at the marked position
	while { ( (alive _heli) && !(unitReady _heli) ) } do
	{
		//delay
		sleep 1;
	};
	
	//delete marker
	deleteMarkerLocal _marker;
};