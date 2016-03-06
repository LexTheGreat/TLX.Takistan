// Name:		Enable_AI.sqf
// Developer:	Tyler
// Date:		4/18/2012
// Usage:		ReEnables AI Target and Autotarget - So chopper can engage targets by itself

private
[
	"_heli"
];

//get heli selected
_heli = call FDKTZ_Find_Heli;

if (isNil "_heli") exitWith { };
if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the Enable_AI.sqf Script";
	};
}
else
{
	//Disable AI Target and Autotarget, but not Move - we want helicopter to be able to move
	_heli enableAI "TARGET";
	_heli enableAI "AUTOTARGET";
	
	player sideChat "Enabled AI on Currently Selected Helicopter";
};