// Name:		heli_fastrope_player.sqf
// Developer:	Tyler
// Date:		10/29/2011
// Usage:		Sets up chopper for player pilot to use fastroping

//set up private variables

private "_heli";
private "_script";

//Get helicopter

_heli = _this select 0;

//Set up variables and exec fastrope script

_script = [_heli, 1] execVM "\norrn_dbo_fastrope\scripts\NORRN_fastRope_init.sqf";