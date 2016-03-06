// Name:		airplane_flyheight_150.sqf
// Developer:	Tyler
// Date:		1/9/2012
// Usage:		Makes the aircraft return to normal height (150 meters)

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
		hint "Null returned to the airplane_flyheight_150.sqf Script";
	};
}
else
{
	//Set height
	_plane flyInHeight 150;
	
	//message
	player sideChat "Roger, we will return to the normal flying height of 150 meters";
};