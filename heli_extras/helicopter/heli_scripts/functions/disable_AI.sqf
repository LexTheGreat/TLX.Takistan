// Name:		disable_AI.sqf
// Developer:	Tyler
// Date:		4/4/2012
// Usage:		disables the AI Target and Autotarget - (Stops AI Pilots trying to perform stupid manouvers when under fire, and flying forward when trying to be a gunner)

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
		hint "Null returned to the heli_flyheight_8_tn.sqf Script";
	};
}
else
{
	//Disable AI Target and Autotarget, but not Move - we want helicopter to be able to move
	_heli disableAI "TARGET";
	_heli disableAI "AUTOTARGET";
	
	player sideChat "Disabled AI on Currently Selected Helicopter";
};