liafu = true;

reveal = {
	private["_objs"];
	_objs = nearestobjects[getpos player, ["man", "allvehicles"], 300];
	{_x reveal _this;_x dotarget _this;} foreach _objs;
};

bash = {
	private["_damage"];
	_damage = damage player;
	[player, 10, 0] call setPitchBank;
	sleep 0.01;
	[player, -5, 0] call setPitchBank;

	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [10];
	"dynamicBlur" ppEffectCommit 0;
	waitUntil {ppEffectCommitted "dynamicBlur"};
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [0];
	"dynamicBlur" ppEffectCommit (0.4 + _damage);
	waitUntil {ppEffectCommitted "dynamicBlur"};
};

parse_number = {
	private ["_number"];
	_number = _this select 0;
	if (isNil "_number") exitWith {0};
	if (typeName _number == "SCALAR") exitWith {_number};
	if (typeName _number != "STRING") exitWith {0};
	_number = parseNumber(_number);
	if (isNil "_number") exitWith {0};
	if (typeName _number != "SCALAR") exitWith {0};
	_number
};

DialogCivilianPlayersList = {
	private["_control_id"];
	_control_id = _this select 0;
	([_control_id, true, false, false, false] call DialogPlayerList)
};

DialogAllPlayersList = {
	private["_control_id"];
	_control_id = _this select 0;
	([_control_id, true, true, true, true] call DialogPlayerList)
};

DialogNotCopsList = {
	private["_control_id"];
	_control_id = _this select 0;
	([_control_id, true, false, true, true] call DialogPlayerList)
};

DialogPlayerList = {
	private ["_control_id", "_show_civ", "_show_cop", "_show_opf"];
	
	_control_id = _this select 0;
	_show_civ = _this select 1;
	_show_cop = _this select 2;
	_show_opf = _this select 4;
	
	if (isNil "_control_id") exitWith {};
	if (typeName _control_id != "SCALAR") exitWith {};
	
	private["_index", "_my_index"];
	_index = 0;
	_my_index = -1;
  
	private["_c"];
	_c = 0;
	while { _c <  (count playerstringarray) } do {
		private["_player_variable_name", "_player_variable"];
		
		_player_variable_name = playerstringarray select _c;
		_player_variable = missionNamespace getVariable _player_variable_name;
		
		if(!isNil "_player_variable") then {
			if (not([_player_variable] call player_exists)) exitWith {};
			private["_is_civ", "_is_cop", "_is_opf"];
			_is_civ = [_player_variable] call player_civilian;
			_is_cop = [_player_variable] call player_cop;
			_is_opf = [_player_variable] call player_opfor;
			
			if (_is_civ && not(_show_civ)) exitWith {};
			if (_is_cop && not(_show_cop)) exitWith {};
			if (_is_opf && not(_show_opf)) exitWith {};
			
			private["_player_name"];
			_player_name = (name _player_variable);
			_index = lbAdd [_control_id, format ["%1 - (%2)", _player_variable_name, _player_name]];
			lbSetData [_control_id, _index, str(_player_variable)];
			
			if (_player_variable == player) then {
				_my_index = _index;
			};
		};
		_c = _c + 1;
	};
	
	 _my_index
};

dniceAddCrimeLogEntry = {
	private ["_logtime", "_logdate", "_logtext", "_logart", "_logplayer", "_zusatzinfo"];

	_logart = _this select 0;
	_logplayer = format["%1", _this select 1];
	_zusatzinfo = "";
  
	if (count _this > 2) then {
		_zusatzinfo = _this select 2
	};

	_logtime = time;
	_logdate = date;
	_logtext = "";
		
	switch (_logart) do {
		case "Bank": {
			_logtext = format[localize "STRS_functions_crimelog_msg1", _zusatzinfo];
		};
		case "Stole": {
			_logtext = format[localize "STRS_functions_crimelog_msg2"];
		};
		case "KilledCiv": {
			_logtext = format[localize "STRS_functions_crimelog_msg3", _zusatzinfo];
		};
		case "KilledCop": {
			_logtext = format[localize "STRS_functions_crimelog_msg4", _zusatzinfo];
		};
		case "KilledWorker": {
			_logtext = format[localize "STRS_functions_crimelog_msg13", _zusatzinfo];
		};
		case "PrisonIn": {
			_logtext = format[localize "STRS_functions_crimelog_msg5"];
		};
		case "PrisonOut": {
			_logtext = format[localize "STRS_functions_crimelog_msg6"];
		};
		case "PrisonEsc": {
			_logtext = format[localize "STRS_functions_crimelog_msg7"];
		};
		case "Died": {
			_logtext = format[localize "STRS_functions_crimelog_msg8"];
		};
		case "Ticket": {
			_logtext = format[localize "STRS_functions_crimelog_msg9", _zusatzinfo];
		};
		case "Bomb": {
			_logtext = format[localize "STRS_functions_crimelog_msg10"];
		};
		case "slave": {
			_logtext = format[localize "STRS_functions_crimelog_msg11"];
		};
		case "Speed": {
			_logtext = format[localize "STRS_functions_crimelog_msg12"];
		};
		case "StoleVcl": {
			_logtext = format[localize "STRS_functions_crimelog_msg13", _zusatzinfo];
		};
		case "AttemptedStoleVcl": {
			_logtext = format[localize "STRS_functions_crimelog_msg14", _zusatzinfo];
		};
		case "Assassin": {
			_logtext = format[localize "STRS_functions_crimelog_msg15"];
		};
		case "Ill_PMC": {
			_logtext = format["Illegal PMC"];
		};
	};
//	CopLog = CopLog + [ [_logplayer, _logtext, _logdate, _logtime] ];
	CopLog set[count CopLog, [_logplayer, _logtext, _logdate, _logtime]];
};

Bomb_Vehicle = {
	if (count _this > 1) then {
		if (not(isNull (_this select 1))) then {
			_obj = _this select 1;
			if (((getPosATL _obj) select 2) > 5) then {
				liafu = true;
				_obj setDamage 1;
			} 
			else {
				createVehicle ["Bo_GBU12_LGB", (_this select 0), [], 0, "NONE"];
				_obj setDamage 1;
			};
		};
    }
	else {
		createVehicle ["Bo_GBU12_LGB", (_this select 0), [], 0, "NONE"];
	};

	if (count _this > 2) then {
		format ["
		if ((random 100) < 10) then {
			hint format[localize ""STRS_vehiclebomb_public_explode"", %1];
			[""Bomb"", %1] spawn dniceAddCrimeLogEntry;
		};
		", player] call broadcast;
	};
};



SayDirectSpeach = {
	private ["_text", "_dis"];
	_text = _this select 0;
    _art = _this select 1;
    if (not ((_text == "") or (_text == " ")) ) then {
		_text = format["%1-%2 shouts: %3", player, name player, _text];
		if (_art == "direct") then {
			_dis = 50;
			format ["
			if ((player distance %1) < %3) then {
				titleText[""%2"", ""PLAIN""];
			};
			", player, _text, _dis] call broadcast;
		};

		if (_art == "side") then {
			format ["%1 sideChat ""%2"";", player, _text] call broadcast;
		};

		if (_art == "global") then {
			format ["%1 globalChat ""%2"";", player, _text] call broadcast;
		};
	};
};

{ _x setVariable ["BIS_noCoreConversations", true] } forEach allUnits;

buildings_list = {
	if (not(isNil "all_buildings")) exitWith {all_buildings};
	
	private["_pos"];
	_pos = getPos player;
	all_buildings = [(_pos select 0), (_pos select 1)] nearObjects ["Building",1000000];
	all_buildings
};

rasman_list = {
	if (not(isNil "all_buildings")) exitWith {all_buildings};
	{
	private["_pos","_array"];
	_pos = ASLtoATL (getPosASL (_x select 0));
	if(isNil "all_buildings") then {
		all_buildings = [(_pos select 0), (_pos select 1)] nearObjects ["Building",(_x select 1)];
	}
	else {
		_array =  [(_pos select 0), (_pos select 1)] nearObjects ["Building",(_x select 1)];
		{
			all_buildings set [(count all_buildings), _x];
		} forEach _array; 
	};
	} forEach [[spawn_protector, 200], [vip_protector, 80], [rasman_protector, 560], [opfor_protector, 400]];
	all_buildings
};

buildings_protect = {
	{
		_x allowDamage false;
	} foreach (call rasman_list);
};

format_integer = {
	private["_value", "_nan", "_separator"];
	_nan = "NotANumber"; 
	_value = _this select 0;
	_separator = _this select 1;
	
	if (isNil "_value") exitWith {_nan};
	if (typeName _value != "SCALAR") exitWith {_nan};
	
	if (_value == 0) exitWith {"0"};
	
	private["_string_value", "_digits", "_remainder", "_sign"];
	_string_value = "";
	_digits = 0;
	_sign = if (_value < 0) then {"-"} else {""};
	_value = abs(round(_value));
	while { _value >= 1 } do {
		_digits = _digits + 1;
		if ( _digits > 1 && ((_digits - 1) % 3) == 0) then {
			_string_value = _separator + _string_value;
		};
		_remainder = _value % 10;
		_string_value = str(_remainder) + _string_value;
		_value = floor(_value / 10);
	};
	
	_sign+_string_value
};

strlen = {
	private["_text"];
	_text = _this select 0;
	if (isNil "_text") exitWith {0};
	if (typeName _text != "STRING") exitWith {};
	(count (toArray _text))
};

strstr = {
	private["_needle", "_haystack"];
	_needle = _this select 0;
	_haystack = _this select 1;
	
	if (isNil "_needle") exitWith {false};
	if (isNil "_haystack") exitWith {false};
	if (typeName _needle != "STRING") exitWith {false};
	if (typeName _haystack != "STRING") exitWith {false};
	
	_needle_array = toArray _needle;
	_haystack_array = toArray _haystack;
	
	private["_i", "_j", "_k", "_matches", "_chr1", "_chr2"];
	_i = 0;
	_matches = false;
	
	while { not(_matches) && _i < (count _haystack_array) } do {
		private["_haystack_char"];
		_k = _i;
		_j = 0;
		while { _j < (count _needle_array)  && _k < (count _haystack_array)} do {
			_chr1 = _needle_array select _j;
			_chr2 = _haystack_array select _k;
			if ( _chr1 != _chr2) exitWith {};
			_j = _j + 1;
			_k = _k + 1;
		};
		_matches = (_chr1 == _chr2);	
		_i = _i + 1;
	};
	
	_matches 
};

//To stop damages to buildings

call buildings_protect;

KK_fnc_inString = {
    /*
    Author: Killzone_Kid
    
    Description:
    Find a string within a string (case insensitive)
    
    Parameter(s):
    _this select 0: <string> string to be found
    _this select 1: <string> string to search in
    
    Returns:
    Boolean (true when string is found)
    
    How to use:
    _found = ["needle", "Needle in Haystack"] call KK_fnc_inString;
    */

    private ["_needle","_haystack","_needleLen","_hay","_found"];
	
    _needle = _this select 0;
	_haystack = _this select 1;
	if(!(typeName _haystack == 'STRING') && !(typeName _needle == 'STRING')) then {
			_haystack = "";
			_needle = "";
	};
    _haystack = toArray (_haystack);
    _needleLen = count toArray _needle;
    _hay = +_haystack;
    _hay resize _needleLen;
    _found = false;
	
    for "_i" from _needleLen to count _haystack do {
		//player globalChat format["The Needle is %1 and the haystack is %2",_needle, toString _hay];
        if (toString _hay == _needle) exitWith {_found = true};
        _hay set [_needleLen, _haystack select _i];
        _hay set [0, "x"];
        _hay = _hay - ["x"]
    };
    _found
};

if(isClient) then
{	
	execVM "RG\SaveVar.sqf";
	execVM "RG\sLoad.sqf";
	[] spawn {
	_dupeid = str (getPlayerUID player);
	if (!(["7656", _dupeid] call KK_fnc_inString)) then {
		_duper = str (name player);
		["NON VALID ID FOUND ON", _duper] call fn_LogToServer;
	};
};
	waitUntil {!isNil "statFunctionsLoaded"};
	["client"] execVM "RG\pSave.sqf";
	
};
