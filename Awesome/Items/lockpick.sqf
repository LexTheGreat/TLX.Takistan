_art = _this select 0;
_lock = _this select 1;
if (_art == "use") then {
	private["_incarpark","_item"];
	_item   = _this select 0;	
	_incarpark = false;
	_vehicle  = [10] call INV_LocateClosestVehicle;
			
	if (isNil "_vehicle") exitWith {
		player groupChat "No vehicle close enough";
	};
	
	if (([player, _vehicle] call vehicle_owner)) exitWith {	
		player groupChat "You already own this vehicle.";
	};
	
	if ((player distance (getMarkerPos "respawn_West")) <= 120) exitwith {
		player groupChat "You cannot lockpick vehicles in the Cop Base";
	};
			
	if (({(alive _x)&&(isPlayer _x)} count (crew _vehicle)) > 0) exitwith {
		player groupChat "You cannot lockpick while people are inside";
	};
	
	player groupChat format["lockpicking %1", _vehicle];
	[player, _lock, -1] call INV_AddInventoryItem;
	format ["%1 switchmove ""AinvPknlMstpSlayWrflDnon_medic"";", player] call broadcast;

	{
		if (_vehicle in (list _x)) then {
			_incarpark = true;
		};
	} forEach INV_VehiclePark;	

	private["_near_cops", "_near_civilians"];
	_near_cops = [player, 40] call player_near_cops;
	_near_civilians = [player, 40] call player_near_civilians;
		
	lockpickAttempt = format["%1 - %2", player, _vehicle];
	publicVariable "lockpickAttempt";
		
	if ((random 100) < lockpickchance) then {
		[player, _vehicle] call vehicle_add;
		player groupChat localize "STRS_inventar_lockpick_success";		
		
		if ((_near_cops || _near_civilians || _incarpark) && not(isGov)) then {
			private["_message"];
			_message =  format["%1 was seen stealing a vehicle (registration plate: %2)!", player, _vehicle];
			format['hint (toString(%1));', toArray(_message)] call broadcast;
			[player, "vehicle theft", 10000, 50, false] call player_update_warrants;
		};
	}
	else {																																						
		player groupChat localize "STRS_inventar_lockpick_noluck";
		
		if ((_near_cops || _near_civilians || _incarpark) && not(isGov)) then { 
			[player, "attempted vehicle theft", 2000, 25, false] call player_update_warrants;
			private["_message"];
			_message = format["%1 was seen attempting to lockpick a vehicle (Registration plate: %2)", player, _vehicle];
			format['hint (toString(%1));', toArray(_message)] call broadcast;
		};			
	};
};