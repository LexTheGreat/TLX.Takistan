// Name:		heli_getout_tn.sqf
// Developer:	Tyler
// Date:		10/26/2011
// Usage:		Makes the Heli hover low for a combat insertion

//private variables
private ["_heli", "_lz", "_helipos"];

//get the heli

_heli = call FDKTZ_Find_Heli;
_lz = getMarkerPos "HeliLZ";


if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the heli_getout_tn.sqf Script";
	};
}
else
{
	//use a loop to check if the helicopter is ready for a land command

	while { ( (alive _heli) && !(unitReady _heli) ) } do
	{
		//put a delay for rechecking the above command
		sleep 1;
		if (FDKTZ_Heli_Stop_Orders) exitWith { };
	};
	if (FDKTZ_Heli_Stop_Orders) exitWith {
			sleep 5;
			FDKTZ_Heli_Stop_Orders = false;
	};
	
	if (isNil "_lz") exitWith {
		if (alive _heli) then {
			player sideChat "Roger, no LZ marked, doing combat insertion at nearest possible point, Over";
			_heli land "GET OUT";
			
			//run the heli stay landed function
			[_heli] spawn FDKTZ_Heli_Stay_Landed_Function;
		};
	};
	_helipos = getPosASL _heli;
	//_lz set [2, 0];
	//issue the order
	if ([_helipos select 0, _helipos select 1] distance _lz > 100) then {
		_heli doMove _lz;
	};
	
	if (alive _heli) then
	{
		//Send a message to the player
		player sideChat "Roger, We will be doing a combat insertion at the requested location, Over";
		while {alive _heli} do
		{
			sleep 1;
			_helipos = getPosASL _heli;
			if (FDKTZ_Heli_Stop_Orders) exitWith { 
				player sideChat "Landing Order Cancelled";
				_heli doMove (ASLtoATL _helipos);
				sleep 5;
				FDKTZ_Heli_Stop_Orders = false;
			};
			//player commandChat format ["%1", [_helipos select 0, _helipos select 1] distance _lz];
			if ([_helipos select 0, _helipos select 1] distance _lz <= 100) exitWith {
				player sideChat "Commencing combat insertion maneuver, Over";
				_heli land "GET OUT";
			};
		};
	};


	//run the heli stay landed function
	[_heli] spawn FDKTZ_Heli_Stay_Landed_Function;
};

