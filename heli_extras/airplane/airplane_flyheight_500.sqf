// Name:		airplane_flyheight_500.sqf
// Developer:	Tyler
// Date:		1/9/2012
// Usage:		Makes the aircraft fly at 500 meters

//init private variables
private
[
	"_plane"
];

//get airplane
_plane = call FDKTZ_Find_Airplane;

if (isNull _plane) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the airplane_flyheight_500.sqf Script";
	};
}
else
{
	//Set height
	_plane flyInHeight 500;
	
	//message
	player sideChat "Roger, we are increasing height to 500 meters";
};