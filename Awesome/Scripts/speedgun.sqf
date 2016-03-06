SpeedGun_init = {
	SG_ON = if (isNil "SG_ON") then { true } else {not(SG_ON)};
	private["_state"];
	_state = if (SG_ON) then { "ON" } else { "OFF" };
	server globalChat format["Speed Gun: %1", _state];
};

SpeedGun_loop = {
	private["_vehicle", "_bool", "_target", "_string", "_speed", "_speedS"];

	if (!(iscop or isopf)) exitWith {};
	waitUntil {!isNil "SG_ON"};
	while {true} do {
		if (SG_ON && (iscop or isopf) && INV_shortcuts) then {
			/*(_vehicle = vehicle player;*/
			_bool	= call holster_pistol_in_hands;
				
			if (_bool) then {	
				_target = cursorTarget;
				_string = "";
				if (_target isKindOf "LandVehicle") then {
					_speed = speed _target;
					_speedS = format["%1 kmph", _speed];
					_string = format["SPEED- %1		VEHICLE- %2", _speedS, _target];
				} 
				else {
					_string = "TARGET A LAND VEHICLE";
				};	
				titleText[_string, "plain down", 0.2];				
			}
			else {	
				player globalChat "You must be holding a pistol to use the speedgun";
				SG_ON = false;		
			};		
		};	
		sleep 0.2;
	};
};
[] spawn SpeedGun_loop;