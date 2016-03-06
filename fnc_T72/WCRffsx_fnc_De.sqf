private ["_turret","_man"];
_turret = _this select 0;
_man = _this select 1;
sleep 7.5;
waitUntil {(getPosATL _man select 2) <= 1};
_turret attachTo [_man,[0,0,1]];