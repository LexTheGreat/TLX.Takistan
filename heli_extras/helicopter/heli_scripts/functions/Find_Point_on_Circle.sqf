// Name:		Find_Point_on_Circle.sqf
// Developer:	Tyler
// Date:		1/26/2012
// Usage:		Finds a point along a circle edge

//[_circleCenter,_radius,_angle] call Find_Random_Point - _circleCenter = Pos, _radius = radius number

private
[
	"_circleCenter",
	"_radius",
	"_angle",
	"_x",
	"_y",
	"_randPoint",
	"_tgtX",
	"_tgtY",
	"_targetPosition"
];

//get the center of the circle
_circleCenter = _this select 0;

//get the radius
_radius = _this select 1;

//get the angle, is a random number, use floor to bring it down to the next lowest integer
_angle = _this select 2;

//find the outside point on the circle

_x = ((_circleCenter select 0) + (_radius * (cos _angle)));
_y = ((_circleCenter select 1) + (_radius * (sin _angle)));

// "Point_on_circle" setMarkerPos [_x,_y];

_targetPosition = [_x,_y];

//return _x and _y

_targetPosition