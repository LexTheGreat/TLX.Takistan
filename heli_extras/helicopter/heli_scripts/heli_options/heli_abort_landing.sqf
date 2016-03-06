// Name:		heli_abort_landing.sqf
// Developer:	Tyler
// Date:		10/26/2011
// Usage:		Makes the Heli abort its landing - Useful for Hot Landing Zones

//private variables

private "_heli";

//get the heli

_heli = call FDKTZ_Find_Heli;

if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the heli_abort_landing_tn.sqf Script";
	};
}
else
{
	//issue the order

	if (alive _heli) then
	{
		_heli land "NONE";
	};

	//Send a message to the player

	player sideChat "Roger, We will abort the landing, Over";
};

