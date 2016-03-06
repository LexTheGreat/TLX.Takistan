// Name:		create_LZ_heli.sqf
// Developer:	Tyler
// Date:		10/24/2011
// Usage:		Create a helipad at the marked point


//Make Private Variables

private "_lz";

//Remove create LZ action

//first we need to create a marker and set up a map click option

_lz = createMarkerLocal ["HeliLZ", [0,0,0]];
"HeliLZ" setMarkerShapeLocal "ICON";
"HeliLZ" setMarkerColorLocal "ColorOrange";
"HeliLZ" setMarkerTypeLocal "Pickup";
"HeliLZ" setMarkerTextLocal "LZ";

FDKTZ_LZ_Marked = false;

hint "Map Click Landing Zone";
onMapSingleClick {"HeliLZ" setMarkerPosLocal _pos; FDKTZ_LZ_Marked = true};
waitUntil {FDKTZ_LZ_Marked};
onMapSingleClick {};
FDKTZ_LZ_Marked = false;

//Create a helipad on the marker position

if (FDKTZ_Heli_Extras_Debug == 1) then
{
	//Show a visible helipad
	helipad_heli = "HeliH" createVehicleLocal (getMarkerPos "HeliLZ");
}
else
{
	//Use Invisible Helipad
	helipad_heli = "HeliHEmpty" createVehicleLocal (getMarkerPos "HeliLZ");
};