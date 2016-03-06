// Name:		delete_LZ.sqf
// Developer:	Tyler
// Date:		10/24/2011
// Usage:		deletes the helipad created with the create_LZ script

//set up private variables


//Remove remove LZ action

//Delete the Helipad

deleteVehicle helipad_heli;

//Delete the Marker

deleteMarkerLocal "HeliLZ";

//Add action to create LZ
