// Name:		heli_start_engine.sqf
// Developer:	Tyler
// Date:		12/31/2011
// Usage:		Starts the engine of the Heli if not running

//1/4/2012 - UPDATE - Added the Find Heli Function call

//init private variables
private
[
	"_heli"
];

//Get the heli
_heli = call FDKTZ_Find_Heli;


if (isNull _heli) then
{
	//No heli was selected, so do nothing
	//debug Message
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the heli_start_engine.sqf Script";
	};
}
else
{
	//set the variable to stay landed to true
	_heli setVariable ["FDKTZ_Heli_Land", true, false];

	//engine is off, start the engine
	_heli engineOn true;
	
	//message
	player sideChat "Roger, We are starting the Engine";

	//Call the FDKTZ_Heli_Stay_Landed_Function
	[_heli] spawn FDKTZ_Heli_Stay_Landed_Function;
	
};



