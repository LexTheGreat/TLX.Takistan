player groupChat "Anti-hack Loaded";

private ["_hackedSet","_originalSet","_UID","_PUID","_name","_msg","_hacked"];
_name = (name player);
_UID = getPlayerUID player;
_PUID = format["%1", _UID];
_hacked = false;
while {true} do
{
    _originalSet = "private [""_dummy""]; _dummy = [_this,""onload""] execVM ""\ca\ui\scripts\dedicatedServerInterface.sqf"";";
    _hackedSet = getText (configFile >> "RscDisplayDSinterface" >> "onLoad");
    if (_hackedSet != _originalSet) exitwith
    {
		_msg = format["Admin: %1 needs banning, #101.",_name];
	    [voice, nil, rGlobalChat, _msg,_name] call RE;
        PName = (name player);
        PID = _UID;
        publicVariable "PName";
        publicVariable "PID";
        _hacked = true;
        sleep 1;
        server setVehicleInit 'if (isServer) then {diag_log format["Antihack Server Log - Name: (%1) ID: (%2) has injected via servercontrol!",PName,PID];};';
        processInitCommands;
        clearVehicleInit server;
    };

	if (isnil "take1") then {}else{
        _msg = format["Admin: %1 needs banning, #1.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "TTT5OptionNR") then {}else{
        _msg = format["Admin: %1 needs banning, #4.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "temp1") then {}else{
        _msg = format["Admin: %1 needs banning, #6.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "hotkeymenu") then {}else{
        _msg = format["Admin: %1 needs banning, #8.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "cockasdashdioh") then {}else{
        _msg = format["Admin: %1 needs banning, #9.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "dayz_slowCheck") then {}else{
        _msg = format["Admin: %1 needs banning, #10.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "player_spawn_2") then {}else{
        _msg = format["Admin: %1 needs banning, #11.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "hacks") then {}else{
        _msg = format["Admin: %1 needs banning, #12.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "dayzHit") then {}else{
        _msg = format["Admin: %1 needs banning, #13.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "wuat_fpsMonitor") then {}else{
        _msg = format["Admin: %1 needs banning, #14.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "f6546544sssh") then {}else{
        _msg = format["Admin: %1 needs banning, #15.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "BIS_fnc_3dCredits_n") then {}else{
        _msg = format["Admin: %1 needs banning, #16.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "fffffffffff") then {}else{
        _msg = format["Admin: %1 needs banning, #17.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "scode") then {}else{
        _msg = format["Admin: %1 needs banning, #18.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "gay") then {}else{
        _msg = format["Admin: %1 needs banning, #19.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "ggggggggggggggggggg") then {}else{
        _msg = format["Admin: %1 needs banning, #20.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "Ug8YtyGyvguGF") then {}else{
        _msg = format["Admin: %1 needs banning, #21.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "hijExecString") then {}else{
        _msg = format["Admin: %1 needs banning, #22.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "fuckmegrandma") then {}else{
        _msg = format["Admin: %1 needs banning, #23.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "mehatingjews") then {}else{
        _msg = format["Admin: %1 needs banning, #24.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "dsaondposandopsa") then {}else{
        _msg = format["Admin: %1 needs banning, #25.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if ((isnil "abox1") and (isnil "abox2") and (isnil "abox3") and (isnil "abox4")and (isnil "abox5") and (isnil "abox6")) then {}else{
        _msg = format["Admin: %1 needs banning, #26.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "ESP") then {}else{
        _msg = format["Admin: %1 needs banning, #27.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "Called") then {}else{
        _msg = format["Admin: %1 needs banning, #28.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "igodokxtt") then {}else{
        _msg = format["Admin: %1 needs banning, #29.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "omgwtfbbq") then {}else{
        _msg = format["Admin: %1 needs banning, #30.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "cxzonsasddsadjsdsa") then {}else{
        _msg = format["Admin: %1 needs banning, #31.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "TAG_onkeyDown") then {}else{
        _msg = format["Admin: %1 needs banning, #32.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "gfdiogfhdoigfdhiogfdoigfhd") then {}else{
        _msg = format["Admin: %1 needs banning, #33.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "FUCKEMGRANDPAIHATEJEWS") then {}else{
        _msg = format["Admin: %1 needs banning, #36.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
    if (isnil "HaxSmokeOn") then {}else{
        _msg = format["Admin: %1 needs banning, #37.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
    if (isnil "firstrun") then {}else{
        _msg = format["Admin: %1 needs banning, #38.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "pic") then {}else{
        _msg = format["Admin: %1 needs banning, #39.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "tracker") then {}else{
        _msg = format["Admin: %1 needs banning, #40.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "cockasdashdioh") then {}else{
        _msg = format["Admin: %1 needs banning, #41.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "cTargetPos") then {}else{
        _msg = format["Admin: %1 needs banning, #42.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "cpbLoops") then {}else{
        _msg = format["Admin: %1 needs banning, #43.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (isnil "cpLoopsDelay") then {}else{
        _msg = format["Admin: %1 needs banning, #44.",_name];
        [voice, nil, rGlobalChat, _msg,_name] call RE;
        _hacked = true;
	};
	if (_hacked) then {
        disableUserInput true;
		player setvariable ["lockme", 1];
		isHacker = isHacker + [_PUID];
        publicVariable "isHacker";
        execvm "AC\punish.sqf";
	};
sleep 1;
};