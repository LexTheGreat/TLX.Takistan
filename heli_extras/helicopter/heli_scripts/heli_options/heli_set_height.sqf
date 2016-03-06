// Name:		heli_set_height.sqf
// Developer:	Tyler
// Date:		1/4/2012
// Usage:		Sets the Height of the helicopter to whatever is in the dialog textbox

//set up private variables

private
[
	"_heli",
	"_height"
];

//get Helicopter

_heli = call FDKTZ_Find_Heli;
_height = call FDKTZ_Get_Textbox;

if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the heli_set_height.sqf Script";
	};
}
else
{
	//set the flying height

	_heli doMove [ (getPos _heli select 0), (getPos _heli select 1), _height];

	_heli flyInHeight _height;
	
	FDKTZ_Heli_Extras_Height_Cached = _height;

	//send message back to player

	player sideChat format ["Roger, We are changing altitude to %1 meters.",_height];
};

