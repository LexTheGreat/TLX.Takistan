//	MPFramework for Arma2 OA
//  @file Author: [TLU] Zeus
//	@file Created: 25/01/2014
// 	@Modified By 

TLU_IsPlayerZipTied = {
	private["_result", "_player"];
	_player = _this select 0;
	_result = false;
	
	_result = _player getVariable ["isziptied", false];
	
	_result
};

TLU_UnZipTie_LOOP = {
	if (!alive player) exitWith {};

	player groupchat "You have been zip tied!";
	player setVariable ["isziptied", true, true];

	waitUntil { (not(TLU_ZipTie_ZIPTIEDINVEHICLE) && not(TLU_ZipTie_GETTINGOUTOFVEH) && ( not([(getPos player), [civilian,resistance], 100, [player]] call TLU_IsFactionAround) || (animationstate player != "civillying01") ) )};

	if(animationstate player == "civillying01")then {
		player groupchat "You managed to free yourself!";
	}else{player groupchat "You have been released!"};
	
	//format['%1 switchmove "amovppnemstpsnonwnondnon";',player] call _broadcast;
	[true, player, "amovppnemstpsnonwnondnon"] call TLU_MPFramework_helper_switchMove;
	
	StunActiveTime=0;
	player setVariable ["isziptied", false, true];
	
	[player, "isstunned", false] call player_set_bool;

	TLU_ZipTie_GETTINGOUTOFVEH = false;
	TLU_ZipTie_ZIPTIEDINVEHICLE = false;
};

TLU_ZipTie_Restrain = {
	private["_target"];
	_target = _this select 0;
	
	_target switchmove "civillying01";
		
	if (player == _target) then {
		[] spawn TLU_UnZipTie_LOOP;
	};
};

TLU_ToogleZipTie_Player = {
	private["_player"];
	_player = _this select 0;
		
	if (not([_player] call player_vulnerable)) exitWith {
		player groupChat format["%1-%2 cannot be zip tied, he is not subdued.", _player, (name _player)];
	};
		
	TLU_ZipTie_GETTINGOUTOFVEH = false;
	TLU_ZipTie_ZIPTIEDINVEHICLE = false;
	
	//=====================================UNRESTRAIN=========================================

	if(animationstate _player == "civillying01") exitWith 
	{
		//(format ["%1 switchmove ""%2"";", _player, "amovppnemstpsnonwnondnon"]) call _broadcast;
		[true, _player, "amovppnemstpsnonwnondnon"] call TLU_MPFramework_helper_switchMove;
		
		player groupchat "You released the civilian!";
	};	
	
	//==================================RESTRAIN=========================================
	
	if(vehicle _player != _player) exitWith {player groupchat "the civ is in a vehicle!"};

	if ("ziptie" call INV_GetItemAmount < 1) exitWith {player groupchat "You need a zip tie in your inventory in order to use this."};
	if (!(_player call dniceIsVictim)) exitWith {player groupchat localize "STRS_inventory_checknohands"};

	["ziptie", -1] call INV_addinventoryitem;
	//player groupchat "You restrained %3";
	
	//(format['
	//	%1 switchmove "civillying01";
	//	if (rolestring == "%1") then {
	//		[] spawn TLU_UnZipTie_LOOP;
	//	};', _player]) call _broadcast;
	
	[[_player], "TLU_ZipTie_Restrain", true] call TLU_MPFramework_MP;
	
	
};

TLU_ZipTie_GetZipTiedPlayers = {
	private["_result", "_pos", "_radius", "_objects", "_isziptied"];
	_pos 	= _this select 0;
	_radius = _this select 1;
	_result = [];
	_objects = [];
	_isziptied = false;
	
	_objects = nearestobjects [_pos, ["Man"], _radius];
	
	{
		if ( (alive _x) && (isPlayer _x) && (_x != player) ) then {
			_isziptied = _x getVariable ["isziptied", false];
				
			if (_isziptied) then {
				_result = _result + [_x];
			};
		};
	}forEach _objects;
		
	_result
};

TLU_ZipTie_GetSingleZipTiedPlayer = {
	private["_result", "_pos", "_radius", "_players"];
	_pos 	= _this select 0;
	_radius = _this select 1;
	_result = objNull;
	_players = [];
	
	_players = [_pos, _radius] call TLU_ZipTie_GetZipTiedPlayers;
	
	if ((count _players) > 0) then {
		_result = (_players select 0);
	};
	
	_result
};

TLU_ZipTie_GetZipTiedPlayersInVehicle = {
	private["_result", "_vehicle", "_players"];
	_vehicle = _this select 0;
	_result = [];
	
	if (isNull _vehicle) exitWith {_result};
	
	_players = [];
	_players = crew _vehicle;
	
	if ((count _players) <= 0) exitWith {_result};
		
	{
		if ( (alive _x) && (isPlayer _x) && (_x != player) ) then {
			_isziptied = _x getVariable ["isziptied", false];
				
			if (_isziptied) then {
				_result = _result + [_x];
			};
		};
	}forEach _players;
		
	_result
};

TLU_ZipTie_LOOP = {[] spawn {
	private["_counter", "_players", "_targetveh", "_found", "_invehicle"];
	_counter = 0;
	_players = [];
	_invehicle = false;
	_found = false;
	_targetveh = objNull;
	
	tluziptie_loop_running = true;
	
	while {true} do {
		_players = [(getPos player), 50] call TLU_ZipTie_GetZipTiedPlayers;
		_found = false;
		
		_targetveh = cursorTarget;
		
		if (!isNull _targetveh) then {
			if ( (player distance _targetveh <= 5) && ((count ([_targetveh] call TLU_ZipTie_GetZipTiedPlayersInVehicle)) > 0) ) then {
				ziptie_cantakeoutveh = true;
			}
			else {
				ziptie_cantakeoutveh = false;
			};
		}
		else {ziptie_cantakeoutveh = false;};
		
		{
			_invehicle = (vehicle _x != _x);
			
			if (!_invehicle) then {
				ziptie_canputinveh = true;
				ziptie_candragdrop = true;
				hostage_candisablephone = true;
				_found = true;
			};
		}forEach _players;
		
		if (!_found) then {
			ziptie_canputinveh = false;
			hostage_candisablephone = false;
			
			if (isNull TLU_ZipTie_DragTarget) then {
				ziptie_candragdrop = false;
				TLU_ZipTie_DragTarget = objNull;
			};
		};
		
		if ( (TLU_ZipTie_ImDragging) && (isNull TLU_ZipTie_DragTarget) ) then {
			ziptie_candragdrop = false;
			TLU_ZipTie_ImDragging = false;
			TLU_ZipTie_DragTarget = objNull;
			
			//(format ["%1 switchMove """";", player]) call _broadcast;
			[true, player, ""] call TLU_MPFramework_helper_switchMove;
			
		};
		
		
		sleep 0.5;
		_counter = _counter + 1;
		if (_counter >= 5000) exitWith {call TLU_ZipTie_LOOP;};
	};
	
	tluziptie_loop_running = false;
	
};};

TLU_ZipTie_cl_DrapHostage_Event = {
	private["_hostage_taker"];
	_hostage_taker = _this select 0;
	
	player setDir 180;
	player attachTo [_hostage_taker,[0.1, 1.01, 0]];
};

TLU_ZipTie_cl_DropHostage_Event = {
	detach player;
};

TLU_ZipTie_DragHostageToogle = {
	private["_targetplayer", "_invehicle"];
	_targetplayer = objNull;
	
	if (isNull TLU_ZipTie_DragTarget) then {
		_targetplayer = [(getPos player), 5] call TLU_ZipTie_GetSingleZipTiedPlayer;
		
		if (!isNull _targetplayer) then {
			_invehicle = (vehicle _targetplayer != _targetplayer);
			
			if (not(_invehicle)) then {
				TLU_ZipTie_DragTarget = _targetplayer;
				TLU_ZipTie_ImDragging = true;
				
				//(format ["%1 playmove ""%2"";", player, "acinpknlmstpsraswrfldnon"]) call _broadcast;
				sleep 2;
				
				//[_targetplayer,  (format['player setDir 180;player attachto [%1,[0.1, 1.01, 0]];', player]) ] call _broadcasttoclient;
				[[player], "TLU_ZipTie_cl_DrapHostage_Event", _targetplayer] call TLU_MPFramework_MP;
				
			}
			else {
				player groupChat "You can't drag a player in a vehicle";
			};
		};
	}
	else {
		//[TLU_ZipTie_DragTarget, 'detach player;'] call _broadcasttoclient;
		[[], "TLU_ZipTie_cl_DropHostage_Event", TLU_ZipTie_DragTarget] call TLU_MPFramework_MP;
		
		//(format ["%1 switchmove ""%2"";", TLU_ZipTie_DragTarget, "civillying01"]) call _broadcast;
		[true, TLU_ZipTie_DragTarget, "civillying01"] call TLU_MPFramework_helper_switchMove;
		
		//(format['if (rolestring == "%1") then {[] spawn TLU_UnZipTie_LOOP;}', TLU_ZipTie_DragTarget]) call _broadcast;
		
		[[], "TLU_UnZipTie_LOOP", TLU_ZipTie_DragTarget] call TLU_MPFramework_MP;
		
		
		TLU_ZipTie_DragTarget = objNull;
		TLU_ZipTie_ImDragging = false;
		
		//(format ["%1 switchMove """";", player]) call _broadcast;
		[true, player, ""] call TLU_MPFramework_helper_switchMove;
		
	};
};

TLU_ZipTie_cl_hostage_GetInVehicle = {
	private["_vehicle"];
	_vehicle = _this select 0;
	
	TLU_ZipTie_ZIPTIEDINVEHICLE = true;
	player action ["getInCargo", _vehicle];
};

TLU_ZipTie_PutInVehicle = {
	private["_targetvehicle", "_players", "_invehicle", "_exit"];
	_targetvehicle = _this select 0;
	
	_players = [];
	_players = [(getPos player), 50] call TLU_ZipTie_GetZipTiedPlayers;
	
	_exit = false;
	{
		_invehicle = (vehicle _x != _x);
	
		if ( not(_invehicle) ) then {
			//[_x,  (format['TLU_ZipTie_ZIPTIEDINVEHICLE = true;player action ["getInCargo", %1];', _targetvehicle]) ] call _broadcasttoclient;
			[[_targetvehicle], "TLU_ZipTie_cl_hostage_GetInVehicle", _x] call TLU_MPFramework_MP;
			
			_exit = true;
		};
			
		if (_exit) exitWith {};
	}forEach _players;
	
};

TLU_ZipTie_cl_hostage_GetOutOfVehicle = {
	TLU_ZipTie_GETTINGOUTOFVEH = true;
	player action ["eject", (vehicle player)];
	sleep 1;
	
	[true, player, "civillying01"] call TLU_MPFramework_helper_switchMove;
	
	sleep 1;
						
	TLU_ZipTie_GETTINGOUTOFVEH = false;
	TLU_ZipTie_ZIPTIEDINVEHICLE = false;
};

TLU_ZipTie_TakeOutOfVehicle = {
	private["_targetvehicle", "_players", "_exit", "_isziptied"];
	_targetvehicle = _this select 0;
	
	_players = [];
	_players = crew _targetvehicle;
		
	if ((count _players) <= 0) exitWith {player groupChat "There are no hostages in the vehicle"};
	
	_exit = false;
	_isziptied = false;
	
	{
		if ( (alive _x) && (isPlayer _x) && (_x != player) ) then {
			_isziptied = _x getVariable ["isziptied", false];
				
			if (_isziptied) then {
				//[_x, '
				//	[] spawn {
				//		TLU_ZipTie_GETTINGOUTOFVEH = true;
				//		player action ["eject", (vehicle player)];
				//		sleep 1;
				//		
				//		(format [''%1 switchmove "%2";'', player, "civillying01"]) call _broadcast;
				//		sleep 1;
				//		
				//		TLU_ZipTie_GETTINGOUTOFVEH = false;
				//		TLU_ZipTie_ZIPTIEDINVEHICLE = false;
				//	};
				//'] call _broadcasttoclient;
				
				[[], "TLU_ZipTie_cl_hostage_GetOutOfVehicle", _x] call TLU_MPFramework_MP;
			
				_exit = true;
			};
		};
			
		if (_exit) exitWith {};
	}forEach _players;
	
};

TLU_ZipTie_cl_hostage_DisablePhone = {
	player groupChat "Your Phone has been disabled for 4 minutes by a Hostage Taker!";
	TLU_MOBILEPHONE_DISABLED = true;
	sleep 240;
	TLU_MOBILEPHONE_DISABLED = false;	
};

TLU_ZipTie_DisableHostagePhone = {
	private["_players", "_invehicle", "_exit"];
	
	_players = [];
	_players = [(getPos player), 50] call TLU_ZipTie_GetZipTiedPlayers;
	
	_exit = false;
	{
		_invehicle = (vehicle _x != _x);
	
		if ( not(_invehicle) ) then {
			//[_x,  '[] spawn {
			//	player groupChat "Your Phone has been disabled for 4 minutes by a Hostage Taker!";
			//	TLU_MOBILEPHONE_DISABLED = true;
			//	sleep 240;
			//	TLU_MOBILEPHONE_DISABLED = false;
			//};'] call _broadcasttoclient;
			
			[[], "TLU_ZipTie_cl_hostage_DisablePhone", _x] call TLU_MPFramework_MP;
			
			_exit = true;
			player groupChat format['You disabled %1 phone', (name _x)];
		};
			
		if (_exit) exitWith {};
	}forEach _players;	
	
	if (!_exit) then {
		player groupChat "No Hostage Found";
	};
	
};

if (isNil "TLU_ZipTie_INITED") then {
	TLU_ZipTie_VALIDVEHICLETYPES = ["car", "truck", "air"];
	TLU_ZipTie_ZIPTIEDINVEHICLE = false;
	TLU_ZipTie_GETTINGOUTOFVEH = false;
	
	TLU_ZipTie_DragTarget = objNull;
	TLU_ZipTie_ImDragging = false;
	
	call TLU_ZipTie_LOOP;
	
	TLU_ZipTie_INITED = true;
}; 