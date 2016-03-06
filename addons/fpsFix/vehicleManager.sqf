if (isServer) exitWith {};

private ["_vehicleManager", "_lastPos"];

_vehicleManager =
{
	private ["_eventCode", "_vehicle", "_camPos"];

	_eventCode =
	{
		(_this select 0) enableSimulation true;
		(_this select 0) setVariable [fpsFix_simulationCooloff, time + 15];
	};

	{
		_camPos = positionCameraToWorld [0,0,0];

		if ((!local _x) && (_x distance _camPos >= 2200) && (count crew _x == 0) && ((velocity _x select 0) < 0.1) && (!(_x isKindOf "Man"))&& (!(_x isKindOf "Air"))) then
		{
			if (simulationEnabled _x) then
			{
				_x enableSimulation false;
			};
		}
		else
		{
			if (!simulationEnabled _x) then
			{
				_x enableSimulation true;
			};
		};
		/*
		if !(_x getVariable [fpsFix_eventHandlers, false]) then
		{
			_x addEventHandler [GetIn, _eventCode];
			_x addEventHandler [Dammaged, _eventCode];
			_x addEventHandler [EpeContactStart, _eventCode];
			_x addEventHandler [Killed, _eventCode];

			_x setVariable [fpsFix_eventHandlers, true];
		};*/

		sleep 1;
	} count vehicles;
};

_lastPos = [0,0,0];

while {true} do
{
	_camPos = positionCameraToWorld [0,0,0];

	if (_lastPos distance _camPos > 100) then
	{
		_lastPos = _camPos;
		call _vehicleManager;
	};

	sleep 5;
};