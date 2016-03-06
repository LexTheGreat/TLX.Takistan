// Name:		heli_ai_fastrope_wp_tn.sqf
// Developer:	Tyler
// Date:		10/25/2011
// Usage:		Creates a waypoint for the AI-piloted chopper to move to after fastroping troops

//add Private variables

private "_heli";
private "_group";
private "_waypoint";

//Get heli and group

_heli = _this select 0;
_group = group _heli;

//Wait for chopper

sleep 5;

//Create Waypoint

_waypoint = _group addWaypoint [position player, 5];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointSpeed "NORMAL";

//hint

hint format["Good Luck \n We are moving out"];