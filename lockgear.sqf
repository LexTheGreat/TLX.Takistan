while {true} do {
    waitUntil {not(isnull (findDisplay 106))};
    _cTarget = cursorTarget;
    _distance = player distance _cTarget;
    
    if (not(isNil "_cTarget") and _distance <= 13) then {
        // Vehicle Gear Opened
    	if (_cTarget isKindOf "LandVehicle" or _cTarget isKindOf "Air") then {
       		if(locked _cTarget) then {
                if(not([player, _cTarget] call vehicle_owner)) then {
                    player sideChat "This Vehicle is locked. You don't have the keys to open the gear!";
                	(FindDisplay 106) closeDisplay 1;
                	waitUntil {isnull (findDisplay 106)};
                };
            };
        };
        // Backpack Opened ~ Not implmented becuse of debate on fourm not clear on if needed or not
        if (_cTarget isKindOf "Man" and (isPlayer _cTarget) and (_cTarget != player)) then {
			player sideChat "You can't open this units inventory!";
            (FindDisplay 106) closeDisplay 1;
            waitUntil {isnull (findDisplay 106)};                                                   
        };
    };
};