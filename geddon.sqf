private ["_itemsToClear","_obj","_rad","_delay"];
_obj = getMarkerPos "cleanermark"; // get spawn - might as well
_rad = 8000;  //  radius outwards from center point to clear items.
_delay = 800; // amount of time in-between clean-ups
 
while {true} do
{
	sleep _delay;
	format ["hint ""OBJECTGEDDON HAPPENING IN 20 MINUTES"";"] call broadcast;
	format ["player commandChat ""OBJECTGEDDON DELETES ALL ITEMS ON THE GROUND, AND ALL UNOCUPPIED VEHICLES"";"] call broadcast;
	sleep 600;
	format ["hint ""OBJECTGEDDON HAPPENING IN 10 MINUTES"";"] call broadcast;
	sleep 300;
	format ["hint ""OBJECTGEDDON HAPPENING IN 5 MINUTES"";"] call broadcast;
	format ["player commandChat ""OBJECTGEDDON DELETES ALL ITEMS ON THE GROUND, AND ALL UNOCUPPIED VEHICLES"";"] call broadcast;
	sleep 240;
	format ["hint ""OBJECTGEDDON HAPPENING IN 1 MINUTE"";"] call broadcast;
	format ["player commandChat ""STAY IN YOUR VEHICLES, OBJECTGEDDON IS ABOUT TO DELETE ALL UNOCCUPIED VEHICLES INCLUDING AIRCRAFT/MORTAR"";"] call broadcast;
	sleep 30;
	format ["hint ""OBJECTGEDDON HAPPENING IN 30 SECONDS, STAY IN YOUR VEHICLES"";"] call broadcast;
	format ["player commandChat ""STAY IN YOUR VEHICLES"";"] call broadcast;
	sleep 20;
	format ["hint ""OBJECTGEDDON IN 10"";"] call broadcast;
	format ["player commandChat ""STAY IN YOUR VEHICLES"";"] call broadcast;
	sleep 1;
	for [{_i=9}, {_i > 0}, {_i=_i-1}] do {
		format ["hint ""OBJECTGEDDON IN %1"";", _i] call broadcast;
		sleep 1;
	};
	_t1 = diag_tickTime;
	format ["server globalChat ""OBJECTGEDDON STARTED!!! WAIT FOR IT TO COMPLETE"";"] call broadcast;
	_itemsToClear = _obj nearEntities [droppableitems + ["LandVehicle", "Air"],_rad];
	{
		if (count crew _x == 0) then {
			deleteVehicle _x;
		};
	} count _itemsToClear;
	{
		{
			deleteVehicle _x;
		} count (_obj nearObjects [_x, _rad]); 
	} forEach ["WeaponHolder", "Wreck_Base","CraterLong"];
	format ["server globalChat ""OBJECTGEDDON COMPLETE YOU MAY NOW LEAVE YOUR VEHICLES"";"] call broadcast;
	[diag_tickTime - _t1, "OBJECTGEDDON"] call fnc_fps_log;
};