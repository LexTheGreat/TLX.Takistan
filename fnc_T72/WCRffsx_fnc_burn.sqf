private ["_player","_turret","_base"];
_player = _this select 0;
_turret = _this select 1;
_base = _this select 2;
"colorCorrections" ppEffectAdjust [ 1, 1, 0, [0.05, 0.77, 0.17, -5],[1.15, 4.22, -1.1, 0.14],[0.29, 0.68, -0.36, 0]];
"WetDistortion" ppEffectAdjust [0.3, 3.26, 2.8, 4.85, 2.05, 3.08, 1.49, 0.09, 0, 0, 0, 0.28, 0, 0, 0];
while {true} do {
    waitUntil {((vehicle _player) isKindOf "MAN")&&(((vehicle _player) distance _base <= 4)||((vehicle _player) distance _turret <= 4))};
    "colorCorrections" ppEffectEnable true;
    "WetDistortion" ppEffectEnable true;
    "colorCorrections" ppEffectCommit 1;
    "WetDistortion" ppEffectCommit 1;
    sleep 2;
    cutText ["Fuck! It's burning","PLAIN",1];
    _player setDamage ((damage _player) + 0.1);
    "colorCorrections" ppEffectEnable false;
    "WetDistortion" ppEffectEnable false;
};