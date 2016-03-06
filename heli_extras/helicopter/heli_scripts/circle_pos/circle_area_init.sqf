// Name:		circle_area_init.sqf
// Developer:	Tyler
// Date:		4/19/2012
// Usage:		Inits the Circle Area System

private
[
	"_heli",
	"_RotDir",
	"_radius",
	"_height",
	"_marker"
];

_RotDir = _this select 0;

_radius = call FDKTZ_Get_Radius_Textbox;

_height = call FDKTZ_Get_Textbox;

_heli = call FDKTZ_Find_Heli;

if (isNull _heli) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the circle_area_init.sqf Script";
	};
}
else
{
	FDKTZ_Heli_Extras_Height_Cached = _height;
	FDKTZ_Heli_Extras_Radius_Cached = _radius;

	_marker = createMarkerLocal ["FDKTZ_Heli_Circle_Area", [0,0,0]];
	"FDKTZ_Heli_Circle_Area" setMarkerShapeLocal "ELLIPSE";
	"FDKTZ_Heli_Circle_Area" setMarkerBrushLocal "Border";
	"FDKTZ_Heli_Circle_Area" setMarkerSizeLocal [_radius,_radius];
	"FDKTZ_Heli_Circle_Area" setMarkerColorLocal "ColorBlue";
	
	
	FDKTZ_Circle_Area_Marked = false;
	
	hint "Map Click Area to Circle";
	onMapSingleClick {"FDKTZ_Heli_Circle_Area" setMarkerPosLocal _pos; FDKTZ_Circle_Area_Marked = true};
	waitUntil {FDKTZ_Circle_Area_Marked};
	onMapSingleClick {};
	FDKTZ_Circle_Area_Marked = false;
	
	//delay
	sleep 5;
	
	//Marker is set start the circle script
	[_heli,_radius,_height,_RotDir] spawn FDKTZ_Circle_Area;
};