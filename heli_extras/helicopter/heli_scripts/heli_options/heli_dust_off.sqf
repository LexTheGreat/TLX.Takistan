// Name:		heli_dust_off.sqf
// Developer:	Tyler
// Date:		12/31/2011
// Usage:		Has the heli take off and fly at a height of 50 meters (default for AI Pilots)

//1/4/2012 - UPDATE - Added the Find Heli function call

//init private variables
private
[
	"_heli"
];

//get the heli
_heli = call FDKTZ_Find_Heli;

if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null Returned to the heli_dust_off.sqf Script";
	};
}
else
{
	//change the variable on the vehicle to false
	_heli setVariable ["FDKTZ_Heli_Land", false, false];

	//have the heli fly up to a height of 50 meters

	_heli doMove [ (getPos _heli select 0), (getPos _heli select 1), 50];

	_heli flyInHeight 50;

	//message
	player sideChat "Roger, We will take off";
};


