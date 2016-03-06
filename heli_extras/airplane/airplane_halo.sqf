// Name:		airplane_halo.sqf
// Developer:	Tyler
// Date:		1/10/2012
// Usage:		Ejects units out of plane and starts the halo function

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

//eject all that are in cargo and start the halo drop function on them
{
	unassignVehicle (_x);
	_x action ["EJECT", _plane];
	_x spawn bis_fnc_halo;
	_x setvelocity [0,120*0.8,0];
	_x setdir 0;
	sleep 0.4;

} foreach _units;

//altimeter
while {((getposATL player)select 2) > 1} do
{
	hintsilent format ["Altimeter: %1", round (getPosATL player select 2)];
};
if (((getposATL player)select 2) < 1) then
{
	hintsilent "";
};