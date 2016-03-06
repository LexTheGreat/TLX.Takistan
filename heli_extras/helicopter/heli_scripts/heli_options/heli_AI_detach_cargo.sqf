// Name:		heli_AI_detach_cargo.sqf
// Developer:	Tyler
// Date:		1/4/2012
// Usage:		Allows the AI to detach a vehicle under a helicopter

//init private variables
private
[
	"_heli",
	"_cargo"
];

//get the heli
_heli = call FDKTZ_Find_Heli;

if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the heli_AI_detach_cargo.sqf Script";
	};
}
else
{
	//get nearest vehicle
	_cargo = nearestObject [_heli, "LandVehicle"];

	//Detach the vehicle
	detach _cargo;

	//Message
	player sideChat "Vehicle dropped";
	
};