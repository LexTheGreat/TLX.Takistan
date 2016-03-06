/*
Fnc name: WCRffsx_fnc_T72.sqf
Effect: T72's turrent may be exploed into the sky after being destoryed
Version: v1.00
Usage: fnc = [] execVM "fnc_T72\WCRffsx_fnc_T72.sqf";
Update date: 1May 2011

Changelog:
v1.01
Add: Burning effect if player is too close to the burning wreck
*/
private ["_man","_T72Array0","_T72Array1","_T72Array2","_T72Array3","_T72Array4","_T72Array","_i","_DamagedT72","_Dir","_turret","_bomb","_wreck","_smoke","_explo","_offset0","_offset1","_pos"];
_explo = ["ARTY_Sh_105_HE","R_Hydra_HE","ARTY_Sh_122_HE","ARTY_Sh_81_HE","ARTY_Sh_82_HE"];
_offset0 = random 10;
_offset1 = - (random 10);
if (isDedicated) exitWith {
    hintSilent "Sorry, this function is not available in dedicated server.";
};
_T72Array0 = AllMissionObjects "T72_CDF";
_T72Array1 = AllMissionObjects "T72_RU";
_T72Array2 = AllMissionObjects "T72_INS";
_T72Array3 = AllMissionObjects "T72_Gue";
_T72Array4 = AllMissionObjects "T72_TK_EP1";
_T72Array = + _T72Array0 + _T72Array1 + _T72Array2 + _T72Array3 + _T72Array4;
De = compile preprocessFile "fnc_T72\WCRffsx_fnc_De.sqf";
De = compile preprocessFileLineNumbers "fnc_T72\WCRffsx_fnc_De.sqf";
Burn = compile preprocessFile "fnc_T72\WCRffsx_fnc_Burn.sqf";
Burn = compile preprocessFileLineNumbers "fnc_T72\WCRffsx_fnc_Burn.sqf";
while {true} do {
    _i = 0;
    for [{_i = _i},{_i <= (count _T72Array)},{_i = _i + 1}] do {
        if ((damage (_T72Array select _i) == 1)&&(count (crew (_T72Array select _i)) >= 1)) then {
			if (isServer) then {
            _DamagedT72 = _T72Array select _i;
            _man = (crew _DamagedT72) select 0;
            _pos = getPosATL _DamagedT72;
            _dir = getDir _DamagedT72;
            sleep 1;
            deleteVehicle _DamagedT72;
            _wreck = "T72Wreck" createVehicle _pos;
            _turret = "T72WreckTurret" createVehicle [(getPosATL _wreck select 0),(getPosATL _wreck select 1),5];
            _wreck setDir (_dir - 180);
            _smoke = [_wreck,8,300,false,false] execVM "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
            _bomb = (_explo select ((ceil (random 5)) - 1)) createVehicle (getPosATL _wreck);
            sleep 0.1;
            hideObject _man;
            sleep 0.1;
            _man setVelocity [([_offset0,_offset1] select ((ceil (random 2)) - 1)),([_offset0,_offset1] select ((ceil (random 2)) - 1)),5 + (random 25)];
            _turret attachto [_man,[0,0,3]];
            _smoke = [_turret,8,300,false,false] execVM "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
            fnc = [_turret,_man] spawn De;
            fnc = [player,_turret,_wreck] spawn Burn;
			}
        } else {
        };
    };
};