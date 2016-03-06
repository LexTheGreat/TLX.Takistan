// Name:		airplane_paradrop.sqf
// Developer:	Tyler
// Date:		1/10/2012
// Usage:		Paradrops troops in the cargo area of plane

//init private variables
private
[
	"_plane",
	"_units"
];

//get the plane
_plane = call FDKTZ_Find_Airplane;

//get the units in cargo
_units = assignedCargo _plane;

//eject all that are in cargo
{
	unassignVehicle (_x);
	_x action ["EJECT", _plane];
	sleep 0.4;

} foreach _units;
