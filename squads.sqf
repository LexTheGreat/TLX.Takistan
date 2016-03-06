liafu = true;

_this = _this select 3;
_art  = _this select 0;

if(_art == "create") then {
	_text = _this select 1;
	_name = name player;
	_moneh = [player, 'money'] call INV_GetItemAmount;
	_exitvar = false;

	if(_text == "cops") exitWith {
		player groupchat "you cannot use that name"
	};

	if(squadmember) exitWith {
		player groupchat "you are already in a squad!"
	};

	for "_c" from 0 to (count squadarray - 1) do {
		if (((squadarray select _c) select 0) == _text) exitWith {_exitvar = true;};
	};

	if(_exitvar) exitWith {
		player groupchat "a squad with the same name already exists!"
	};

	if ((_text call dnicestr_Length) > 30 or (_text call dnicestr_Length) < 3) exitWith {
		player groupChat "the entered text is either too long or too short";
	};

	if(_moneh < squadcreatecost) exitWith {
		player groupchat "not enough money"
	};

	[player, 'money', -squadcreatecost] call INV_AddInventoryItem;

	format['squadarray = squadarray + [["%1", ["%2"], true]];', _text, _name] call broadcast;

	player groupchat format["you have created a new squad called %1!", _text];

	squadmember=true;
};

if(_art == "join") then {

	_squad = _this select 1;
	_name = name player;
	_id   = -1;

	if(squadmember) exitWith {
		player groupchat "you are already in a squad!"
	};

	for "_c" from 0 to (count squadarray - 1) do {
		if (((squadarray select _c) select 0) == _squad) exitWith {
			_id = _c;
		};
	};

	if(_id == -1) exitWith {
		player groupchat "this squad no longer exists!"
	};

	_squadarray = squadarray select _id;
	_members   = _squadarray select 1;
	_canjoin   = _squadarray select 2;

	if(!_canjoin) exitWith {
		player groupchat "the leader of this squad is not currently not recruiting"
	};

	_members   = _members + [_name];
	_squadarray set[1, _members];

	format['squadarray set[%1, %2]', _id, _squadarray] call broadcast;

	player groupchat format["you have joined %1!", _squad];
};

if(_art == "leave") then {

if(!squadmember)exitwith{player groupchat "you are not in a squad!"};
	for "_c" from 0 to (count squadarray - 1) do {
		_squadarray = squadarray select _c;
		_squad	   = _squadarray select 0;
		_members   = _squadarray select 1;
		_name	   = name player;

		if(_name in _members)then {
			_members = _members - [_name];
			_squadarray set[1, _members];
			format['squadarray set[%1, %2]', _c, _squadarray] call broadcast;
			player groupchat "you left your squad!";
			squadmember=false;
		};
	};
};

if(_art == "kick") then {

	if((_this select 1) == "notingame") exitWith {
		player groupchat "you cannot kick members unless they are ingame!"
	};

	_cop = call compile format["%1", _this select 1];

	if(player == _cop) exitWith {
		player groupchat "you cannot kick yourself!"
	};

	for "_c" from 0 to (count squadarray - 1) do {
		_squadarray = squadarray select _c;
		_squad	   = _squadarray select 0;
		_members   = _squadarray select 1;
		_name	   = name player;

		if(_name in _members)then {
			_members = _members - [(name _cop)];
			_squadarray set[1, _members];
			format['if(player == %3)then{player groupchat "you have been kicked out of your squad!"; squadmember = false;}; squadarray set[%1, %2]', _c, _squadarray, _cop] call broadcast;
		};

		player groupchat format["you kicked %1 from your squad!", name _cop];
	};
};

if(_art == "allowjoin") then {

	if(_this select 1 == "") exitWith {
		player groupchat "you must select either yes or no!"
	};

	_bool = call compile format["%1", _this select 1];

	for "_c" from 0 to (count squadarray - 1) do {
		_squadarray = squadarray select _c;
		_squad	   = _squadarray select 0;
		_members   = _squadarray select 1;
		_name	   = name player;

		if(_name in _members)then {
			_squadarray set[2, _bool];
			format['squadarray set[%1, %2]', _c, _squadarray] call broadcast;
			if(_bool)then{player groupchat "officers can now join your squad"}else{player groupchat "officers can no longer join your squad"};
		};
	};
};

if(_art == "clientloop") then {
	sleep 10;
	private ["_mysquad", "_mymembers", "_enmembers"];
	startgroup = group player;

	for "_c" from 0 to (count squadarray - 1) do {
		_squadarray = squadarray select _c;
		_squad	   = _squadarray select 0;
		_members   = _squadarray select 1;
		_name	   = name player;

		if(_name in _members and not([player] call player_cop))then {
			_members = _members - [_name];
			_squadarray set[1, _members];
			format['squadarray set[%1, %2]', _c, _squadarray] call broadcast;
		};
	};

	while {iscop} do {
		for "_c" from 0 to (count squadarray - 1) do {
			_squadarray = squadarray select _c;
			_squad	   = _squadarray select 0;
			_members   = _squadarray select 1;

			if(count _members > 0) then {
				_leader = _members select 0;
				_lunit = [_leader] call player_lookup_name;
				
				private["_leader_active"];
				_leader_active = ([_lunit] call player_cop);
		
				if (not(_leader_active) && not(player in (units startgroup))) then {
					[player] joinsilent startgroup;
				};

				if (not(_leader_active)) exitWith {};
				
				_group	   = group _lunit;
				_name      = name player;

				if(leader _group != _lunit)then{_group selectleader _lunit};
				if(player == _lunit and !squadleader)then{squadleader = true; [player] joinsilent startgroup;};
				if(squadleader and player != _lunit and _name in _members)then{squadleader = false};
				if(_name in _members and !squadmember)then{squadmember = true};
				if(_name in _members and squadmember)then{_mysquad = _squad; _mymembers = _members};
				if(_name in _members and player != _lunit and !(player in (units _group))) then {[player] joinsilent _group;};

			};
		};

		if(!squadmember and !(player in (units startgroup)))then{[player] joinsilent startgroup};

		sleep 1;
	};
};
