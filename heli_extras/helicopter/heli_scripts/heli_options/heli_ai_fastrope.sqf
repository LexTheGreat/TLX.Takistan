// Name:		heli_ai_fastrope.sqf
// Developer:	Tyler
// Date:		10/25/2011
// Usage:		Runs the AI fastrope script

//set up private variables

private "_heli";
private "_script";

//Get helicopter

_heli = call FDKTZ_Find_Heli;

if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the heli_ai_fastrope.sqf Script";
	};
}
else
{
	//Set up variables and exec fastrope script
	_script = [_heli, 1, 25, "", 10] execVM "\norrn_dbo_fastrope\scripts\NORRN_fastRope_init.sqf";
};
