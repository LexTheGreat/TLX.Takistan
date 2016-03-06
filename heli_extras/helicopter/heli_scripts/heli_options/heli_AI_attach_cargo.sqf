// Name:		heli_AI_attach_cargo.sqf
// Developer:	Tyler
// Date:		1/4/2012
// Usage:		Allows the AI to attach a vehicle under a helicopter to sling load it

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
		hint "Null returned to the heli_AI_attach_cargo.sqf Script";
	};
}
else
{
	//get the nearest vehicle
	_cargo = nearestObject [_heli, "LandVehicle"];

	//attach the vehicle to the heli
	_cargo attachTo [_heli, [0,0,-6.7]];

	//Message
	player sideChat "Vehicle lifted";
};



