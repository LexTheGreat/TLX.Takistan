zones = ["opforZone", "opforZone2", "bluforZone"];
if(isClient) then {
capturing = false;
/*if(!warstatus) then {
	{
        _x setMarkerAlphaLocal 0
    } foreach zones;
};*/

zone_capture = {
    if(capturing) exitWith {
        hint "Please Wait, you are already capturing!";
    };
    
    private["_curOwner", "_zone", "_zonePole", "_zoneFlag", "_flag", "_capCancelled", "_oldColor"];
    _zone = _this select 0;
	_zonePole = _this select 1;
	_zoneFlag = _this select 2;
    _flag = format["%1Flag",_zone];
	_oldColor = getMarkerColor _zone;
    
	if (_oldColor == "ColorWhite") exitWith {
		hint "Someone is already capturing the zone";
	};
	
    _curOwner = [_zone] call zone_getOwner;
	
    if(peacecomps && !isins && _curOwner == civilian) exitWith {
        hint "Your side can only neutralize when it's not war, and not fully capture!";
    };
	if(!([player] call player_armed)) exitWith {
		hint "You must be armed to capture or neutralize points!";
	};
    
    capturing = true;
	[_zone, "ColorWhite"] call zone_setCapping;
	_capCancelled = false;
    _lockpos = getPosASL player;
	
	if (_curOwner == civilian) then {
		hint "Capturing! Wait 30s \n You can cancel capping by pressing 4 with TLR keys on";
	}
	else {
		hint "Neutralizing! Wait 30s \n You can cancel capping by pressing 4 with TLR keys on";
	};
    format ["%1 switchmove 'AinvPknlMstpSlayWrflDnon_medic';", player] call broadcast;
	sleep 5;
	for "_i" from 0 to 4 step 1 do {
		if (animationstate player != "AinvPknlMstpSlayWrflDnon_medic") exitWith {
			_capCancelled = true;
		};
		format ["%1 switchmove 'AinvPknlMstpSlayWrflDnon_medic';", player] call broadcast;
		sleep 5;
	};
    capturing = false;
    // Check if near, if not cancel. Should stop it from cap'n
    if (getPosASL player distance _lockpos > 1 || _capCancelled) exitWith {
		[_zone, _oldColor] call zone_setCapping;
        hint 'Flag Capture Interrupted';
    };
	if (_curOwner != civilian) exitWith {
		[_zone, civilian, _zonePole, _zoneFlag] call zone_setOwner;
		format["player commandChat '%1 has been neutralized!'; ", _zone] call broadcast;
	};
    [_zone, side player, _zonePole, _zoneFlag] call zone_setOwner;
    format["player commandChat '%2 captured %1!'; ", _zone, side player] call broadcast;
};

zone_setCapping = {
	private["_zonestOwn"];
	_zonestOwn = _this select 0;
	_zoneColor = _this select 1;
	_zonestOwn setMarkerColor _zoneColor;
};
};

zone_setOwner = {
    private["_checkTeam", "_zone"];
    _zonestOwn = _this select 0;
    _chkTeamOwn = _this select 1;
	_zonePole = _this select 2;
	_zoneFlag = _this select 3;
    
	if(_chkTeamOwn == civilian) then {
		_zonestOwn setMarkerColor "ColorYellow";
		[_zonePole, "\ca\ca_e\data\flag_white_co.paa"] call fn_FlagSet;
		_zoneFlag setMarkerColor "ColorBlack";
	}
	else {
		_zoneFlag setMarkerColor "Default";
		if(_chkTeamOwn == resistance) then {
			_zonestOwn setMarkerColor "ColorBlack";
			[_zonePole, "\ca\ca_e\data\flag_tkm_co.paa"] call fn_FlagSet;
			_zoneFlag setMarkerType "Faction_TKM_EP1";
		}
		else {
			if(_chkTeamOwn == east) then {
				_zonestOwn setMarkerColor "ColorRed";
				[_zonePole, "\ca\data\Flag_chdkz_co.paa"] call fn_FlagSet;
				_zoneFlag setMarkerType "Faction_INS";
			}
			else {
				if(_chkTeamOwn == west) then {
					_zonestOwn setMarkerColor "ColorBlue";
					[_zonePole, "\ca\ca_e\data\flag_nato_co.paa"] call fn_FlagSet;
					_zoneFlag setMarkerType "Faction_NATO_EP1";
				};
			};
		};
	};
};



zone_getOwner = {
    private["_checkTeam", "_teamown"];
    _chkZone = _this select 0;
    
    // Treat Civ like null ie if owner == civilian then no one owns it
    _teamown = civilian;
    
	if(getMarkerColor _chkZone == "ColorYellow") then {
        _teamown = civilian;
    }
	else {
		if(getMarkerColor _chkZone == "ColorBlack") then {
			_teamown = resistance;
		}
		else {
			if(getMarkerColor _chkZone == "ColorRed") then {
				_teamown = east;
			}
			else {
				if(getMarkerColor _chkZone == "ColorBlue") then {
					_teamown = west;
				};
			};
		};
	};
	
	//player groupChat format ["team owner = %1", _teamown];
    
    _teamown
};

zone_getCount = {
    private["_checkTeam", "_count"];
    _chkTeamcnt = _this select 0;
    _count = 0;
    
    {
        if([_x] call zone_getOwner == _chkTeamcnt) then {
            _count = _count + 1;
        }
    } foreach zones;
    
    _count
};