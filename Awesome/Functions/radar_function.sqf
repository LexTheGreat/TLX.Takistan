private ["_radObjects","_artyObjects", "_radPos", "_mapMarking"];
liafu = true;
radarActive = true;
if (isOpforRanked) then {
	_radPos = getMarkerPos "opf_radar_site";
}
else {
	if (isBluforRanked) then {
		_radPos = getMarkerPos "blu_radar_site";
	}
	else {
		radarActive = false;
		hint "You are being a bad girl, trying to run radar when you don't have the perms to \n tsk tsk...";
	};
};

_mapMarking = {
	pos = position (_this select 0);
	marker = (_this select 2) + (str (_this select 1));
	marker = createMarkerLocal [marker,pos];
	marker setMarkerTypeLocal (_this select 3);
	marker setMarkerPosLocal (pos);
	marker setMarkerColorLocal("ColorRed");
};
	
while {radarActive} do {
	hintSilent "Radar scanning \n Stay near ATM or it will turn off";
	
	
	_radObjects = _radPos nearEntities [["LandVehicle", "Air"], 4000];
	{
		if(_x isKindOf "Air") then {
			[_x, _forEachIndex, "dniceRadarVMarker", "Air"] call _mapMarking;
		}
		else {
			[_x, _forEachIndex, "dniceRadarVMarker", "Tank"] call _mapMarking;
		};
	} forEach _radObjects;
	
	_artyObjects = _radPos nearEntities [["StaticCannon", "StaticMortar", "GRAD_Base", "MLRS", "M1129_MC_EP1"], 20000];
	{
		if (_radPos distance _x > 4000) then { 
			[_x, _forEachIndex, "dniceRadarAMarker", "Artillery"] call _mapMarking;
		};
	} forEach _artyObjects;
	
	sleep 10;
	
	{
		deleteMarkerLocal ("dniceRadarVMarker" + (str _forEachIndex));
	} forEach _radObjects;
	{
		if (_radPos distance _x > 4000) then { 
			deleteMarkerLocal ("dniceRadarAMarker" + (str _forEachIndex));
		};
	} forEach _artyObjects;
	
	if(!alive player) exitWith { radarActive = false; };
	if(player distance copbank > 20 && player distance atm5 > 20) exitWith { radarActive = false; hint "You went too far, Radar Scanning off";};
};