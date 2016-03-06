private["_action", "_money"];
_action  = _this select 3;
_money =  [player, 'money'] call INV_GetItemAmount;

president_elections_term = _this select 0; //number of minutes between elections
server setVariable ["next_president_election", -1, true];

if (_action == "serverloop") then {
	private["_currentMayor", "_iteration_delay", "_iterations"];
	
	_currentMayor = -1;
	_iteration_delay = 30;
	_iterations = (president_elections_term * 60) / _iteration_delay;
	_iterations = round _iterations;

	while {true} do {
		private["_i"];
		for [{_i=0}, {_i < _iterations}, {_i=_i+1}] do {
			sleep _iteration_delay;
			_time_left = round(((president_elections_term * 60) - (_i * _iteration_delay))/60);
			server setVariable ["next_president_election", _time_left, true];
				//format['server globalChat"Time Left: %1";', _time_left] call broadcast;
			private["_k"];
			for [{_k=0}, {_k < count(WahlArray)}, {_k=_k+1}] do {
				private["_player_variable_name", "_player_variable"];
				_player_variable_name = (civstringarray select _k);
				_player_variable = missionNamespace getVariable _player_variable_name;

				if(!isNil "_player_variable") then {
				if (not([_player_variable] call player_exists)) then {
					//format['server globalChat"running K loop %1";', _k] call broadcast;
					WahlArray SET [_k, [] ];
				};
				};
			};
		};
		//format['server globalChat"Init Max vars";'] call broadcast;
		private["_MaxStimmen", "_MaxPos"];
		_MaxStimmen = 1;
		_MaxPos = -1;

		private["_x"];
		for [{_x=0}, {_x < count(WahlArray)}, {_x=_x+1}] do {
			private["_player_variable_name", "_player_variable"];
			_player_variable_name = (civstringarray select _x);
			_player_variable = missionNamespace getVariable _player_variable_name;
			if(!isNil "_player_variable") then {
			if ( ((count (WahlArray select _x)) > _MaxStimmen) and ([_player_variable] call player_exists)) then {
				//format['server globalChat"running Stimmen loop %1";', _x] call broadcast;
				_MaxStimmen = (count (WahlArray select _x));
				_MaxPos = _x;
			};
			};
		};

		if (_MaxPos == -1) then	{
			//format['server globalChat"running Maxpos condition";'] call broadcast;
			"hint localize ""STRS_regierung_nomajor"";" call broadcast;
			_currentMayor = -1;
		} 
		else { if (_currentMayor == _MaxPos) then {
			//format['server globalChat"running currentmayor==Maxpos condition";'] call broadcast;
			"hint localize ""STRS_regierung_majorstays"";" call broadcast;
		} 
		else {
			//format['server globalChat"running else condition;'] call broadcast;
			_currentMayor = _MaxPos;
			_MayorString  = (civstringarray select _currentMayor);
			format["hint format[localize ""STRS_mayor_new"", ""%3"", %2]; if ((rolenumber-1) == %1) then {isMayor = true;} else {isMayor = false;};", _MaxPos, _MaxStimmen, _MayorString] call broadcast;
		};};
		//format['server globalChat"Setting mayornumber to currentmayor";'] call broadcast;
		MayorNumber = _currentMayor;
		PublicVariable "MayorNumber";
		//format['server globalChat"done";'] call broadcast;
	};
};
