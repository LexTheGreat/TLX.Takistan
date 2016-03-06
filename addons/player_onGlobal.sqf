private["_display","_channelDisplay","_text1","_channel","_micDisplay","_mic1"];
        disableSerialization;
        _channelDisplay = findDisplay 63;
		_micDisplay = findDisplay 55;
        if( !isNull _channelDisplay && !isNull _micDisplay) then {
				_text1 = ctrlText (_micDisplay displayCtrl 101);
				_mic1 = '\ca\ui\textures\mikrak.paa';
                _channel = ctrlText (_channelDisplay displayCtrl 101);
                if(((_channel == "Side channel" || _channel == "Command channel") && isciv) || _channel == "Global channel" && _text1 == _mic1) then {
						if(!(isNil "global_voice_warnings")) exitWith { };
						global_voice_warnings = 0;
						voice_stop = true;
						//player enableSimulation false;
                        while{global_voice_warnings <= 4} do {
							_text1 = ctrlText (_micDisplay displayCtrl 101);
							_channel = ctrlText (_channelDisplay displayCtrl 101);
							if( _channel == "Global channel" && _text1 == _mic1) then {
								player commandchat format ["GET OFF GLOBAL VOICE %1 OR YOU'LL BE KICKED ",name player];
								hint format["STAY OFF GLOBAL VOICE %1",name player];
								sleep 0.5;
								if(global_voice_warnings >= 4) then {
									player commandchat format ["You were warned %1... Enjoy your kick",name player];
									UWdn7l2MGRbFyjaZkT6Q = "lol this cant be nil";
									publicVariableServer "UWdn7l2MGRbFyjaZkT6Q";
								};
							}
							else {
								if((_channel == "Side channel" || _channel == "Command channel") && _text1 == _mic1 && isciv) then {
								player commandchat format ["GET OFF CIVI SIDE/COMM VOICE %1 OR YOU'LL BE KICKED ",name player];
								hint format["STAY OFF SIDE VOICE %1",name player];
								sleep 0.5;
								if(global_voice_warnings >= 4) then {
									player commandchat format ["You were warned %1... Enjoy your kick",name player];
									UWdn7l2MGRbFyjaZkT6Q = "lol this cant be nil";
									publicVariableServer "UWdn7l2MGRbFyjaZkT6Q";
								};
								}
								else {
									global_voice_warnings = nil;
								};
							};
							if (isNil "global_voice_warnings") exitWith { voice_stop = false; };//player enableSimulation true;
							global_voice_warnings = global_voice_warnings + 1;
							//player enableSimulation true;
							};
						};			
                };