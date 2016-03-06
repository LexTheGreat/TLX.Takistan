private["_unit", "_select", "_damage", "_source", "_projectile"];
_unit 			= _this select 0;
_select			= _this select 1;
_damage			= _this select 2;
_source			= _this select 3;
_projectile		= _this select 4;


private["_distance"];
_distance 		= 0;

liafu = true;

if( ((_unit distance getmarkerpos "respawn_west" < 100))  || 
	((_unit distance getmarkerpos "respawn_east" < 100)) || 
	((_unit distance getmarkerpos "respawn_guerrila" < 300)) || 
	((_unit distance getmarkerpos "cop_supporter_area" < 90)) || 
	((_unit distance getmarkerpos "civ_supporter_area" < 90)) || 
	((_unit distance getmarkerpos "opf_supporter_area" < 90)) || 
	((_unit distance getmarkerpos "vip_supporter_area_1" < 60)) || 
	((_unit distance getmarkerpos "vip_supporter_area" < 60)) || 
	(_unit distance getmarkerpos "respawn_civilian" < 100)
	) exitwith { false; };


/*private["_exit"];
_exit = false;


{
	private["_y"];
	_y = _x select 5;
	if (	(_unit distance (getPosATL _y)) <= 10	) then {_exit = true;};
} forEach Clothing_Shops;
*/

/*private["_nvcls"];
_nvcls = nearestObjects [getpos _unit, ["LandVehicle"], 5];*/ //variable never recalled

private["_reduce"];
_reduce = false;

private "_weapon";
_weapon = currentWeapon _source;
if ([_source] call player_opfor or [_source] call player_cop or [_source] call player_tnp) then {
	if (_projectile == "B_9x19_SD") then {
		sleep 1;
		private["_stunq"];
		_stunq = (((_weapon == "M9") || (_weapon == "M9SD")) || (_weapon == "glock17_EP1"));
		if ( (_stunq) ) then {
			_reduce = true;
			_distance = _source distance _unit;
			_veh = vehicle _unit;
			_inveh = ( (_veh iskindof "ATV_Base_EP1") ||  (_veh iskindof "Motorcycle") );	
			[2, _unit, _source, _distance, _select, _damage, _veh, _inveh] execVM "Awesome\Scripts\Stun.sqf";
		};
	};
};
if ((_projectile == "B_12Gauge_74Slug") || (_projectile == "B_AA12_74Slug")) then {
	sleep 1;
	private["_stunq"];
	_stunq = (((_weapon == "M1014") || (_weapon == "Saiga12K") || (_weapon == "AA12_PMC_sup")));
	if ( (_stunq) ) then {
		_reduce = true;
		_distance = _source distance _unit;
		_veh = vehicle _unit;
		_inveh = ( (_veh iskindof "ATV_Base_EP1") ||  (_veh iskindof "Motorcycle") );	
		[2, _unit, _source, _distance, _select, _damage, _veh, _inveh] execVM "Awesome\Scripts\Stun.sqf";
	};
};
_this = [_select,_damage,_source, _unit, _reduce];
	private["_select", "_damage", "_shooter", "_unit", "_reduce"];
	_select		= _this select 0;
	_damage		= _this select 1;
	_shooter	= _this select 2;
	_unit		= _this select 3;
	_reduce		= _this select 4;
	
	if (_reduce) then {
		_damage = _damage * 0.25;
	};
	
	if (!alive _unit && victim_handle_open) then {
		//player globalchat "unit dead";
		victim_handle_open = false;
		[_shooter, _unit] spawn {
			//player globalchat format ["%1", _this];
			_victim_script = [_this] spawn {
				[_this] call victim;	
			};
			waitUntil { scriptDone _victim_script };
			sleep 5;
			//player globalchat "victim handler finished";
			victim_handle_open = true;
		};
		//player globalchat "added damage";
	};
	//_unit setdamage 1;
	
	_damage