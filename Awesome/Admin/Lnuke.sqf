//Thanks for checking out my edit. Thanks to: Veteran, LoganNZL, Infistar, Malory, Rustler, Some people off Youtube for sending me some awesome scripts. And anyone else I forgot!
//////////////////////////////////////////////////////////////////////
//          __    Happy New Year!         _   _______   __ 			//
//   	   / /   ____  ____ _____ _____  / | / /__  /  / / 			//
//  	  / /   / __ \/ __ `/ __ `/ __ \/  |/ /  / /  / /  			//
// 		 / /___/ /_/ / /_/ / /_/ / / / / /|  /  / /__/ /___			//
//		/_____/\____/\__, /\__,_/_/ /_/_/ |_/  /____/_____/			//
//            		/____/        www.youtube.com/LoganNZL          //
//////////////////////////////////////////////////////////////////////

hint "Click on the map to designate target-area";

nukepos = "HeliHEmpty" createVehicle (position player);




_path = "\ca\air2\cruisemissile\";
_pathS = _path + "data\scripts\";


nukehold=true;
titleText ["Click on the map to designate target-area","plain down"];
onMapSingleClick "nukepos setPos _pos; nukehold=false";
waituntil{!nukehold};
onMapSingleClick "";
titleText ["", "plain down"];

_dropPosition = getpos nukepos;
nukemarker = createMarkerLocal ["nukemarker", position nukepos]; 
hint "Nuclear Strike inbound at designated location";
nul = [lkcom] execVM "lk\menu\close_menu.sqf";
nukev=true;

nukemarker setmarkerposLocal getPos nukepos;
nukemarker setMarkerTypeLocal "Destroy";
nukemarker setMarkerTextLocal "  Nuclear Strike";
nukemarker setMarkerColorLocal "ColorRed";

_cruise = createVehicle ["Chukar",_dropPosition,[], 0, "FLY"];
_cruise setVectorDir [ 0.1,- 1,+ 0.5];
_cruise setPos [(getPos _cruise select 0),(getPos _cruise select 1),1000];
_cruise setVelocity [0,2,0] ;
_cruise flyInHeight 1000;
_cruise setSpeedMode "FULL";

sleep 0.5; 
_dropPosX = _dropPosition select 0;
_dropPosY = _dropPosition select 1;
_dropPosZ = _dropPosition select 2;

_droppos1 = [_dropPosX + 4, _dropPosY + 4, _dropPosZ];
_droppos2 = [_dropPosX + 8, _dropPosY + 8, _dropPosZ];

_planespawnpos = [_dropPosX , _dropPosY , _dropPosZ + 1000];

_misFlare = createVehicle ["cruiseMissileFlare1",_planespawnpos,[], 0, "NONE"];
_misFlare inflame true;
_cruise setVariable ["cruisemissile_level", false];
[_cruise, _misFlare] execVM (_pathS + "cruisemissileflare.sqf");
_cruise setObjectTexture [0, _path + "data\exhaust_flame_ca"];
[_cruise] execVM (_pathS + "exhaust1.sqf");
sleep 7;

waitUntil {!alive _cruise};
nul = [nukepos] execvm "lk\nuke\nuke.sqf";
nul = [nukepos] execvm "lk\nuke\damage.sqf";
deletevehicle _misFlare;
deletevehicle _cruise;
//----------------------
//----------------------
quake = {

		for "_i" from 0 to 140 do {
			_vx = vectorup _this select 0;
			_vy = vectorup _this select 1;
			_vz = vectorup _this select 2;
			_coef = 0.03 - (0.0001 * _i);
			_this setvectorup [
				_vx+(-_coef+random (2*_coef)),
				_vy+(-_coef+random (2*_coef)),
				_vz+(-_coef+random (2*_coef))
			];
			sleep (0.01 + random 0.01);
		};

};


wind = {
	while {windv} do {
	setwind [0.201112,0.204166,true];
		_ran = ceil random 2;
		playsound format ["wind_%1",_ran];
		_pos = position player;

		//--- Dust
			setwind [0.201112*2,0.204166*2,false];
		_velocity = [random 10,random 10,-1];
		_color = [1.0, 0.9, 0.8];
		_alpha = 0.02 + random 0.02;
		_ps = "#particlesource" createVehicleLocal _pos;  
		_ps setParticleParams [["\Ca\Data\ParticleEffects\Universal\universal.p3d", 16, 12, 8], "", "Billboard", 1, 3, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _pos];
		_ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
		_ps setParticleCircle [0.1, [0, 0, 0]];
		_ps setDropInterval 0.01;

		sleep (random 1);
		_delay = 1 + random 5;
		sleep _delay;
		deletevehicle _ps;
	};
};


envi = {

if (viewdistance < 3500) then {setviewdistance 3500};
"colorCorrections" ppEffectAdjust [2, 30, 0, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
"colorCorrections" ppEffectCommit 0;
//"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
"colorCorrections" ppEffectAdjust [1, 0.8, -0.001, [0.0, 0.0, 0.0, 0.0], [0.8*2, 0.5*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];  
"colorCorrections" ppEffectCommit 3;
"colorCorrections" ppEffectEnable true;
"filmGrain" ppEffectEnable true; 
"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
"filmGrain" ppEffectCommit 5;
};

ash = {
	_pos = position player;
	_parray = [
	/* 00 */		["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 8, 1],//"\Ca\Data\cl_water",
	/* 01 */		"",
	/* 02 */		"Billboard",
	/* 03 */		1,
	/* 04 */		4,
	/* 05 */		[0,0,0],
	/* 06 */		[0,0,0],
	/* 07 */		1,
	/* 08 */		0.000001,
	/* 09 */		0,
	/* 10 */		1.4,
	/* 11 */		[0.05,0.05],
	/* 12 */		[[0.1,0.1,0.1,1]],
	/* 13 */		[0,1],
	/* 14 */		0.2,
	/* 15 */		1.2,
	/* 16 */		"",
	/* 17 */		"",
	/* 18 */		vehicle player
	];
	snow = "#particlesource" createVehicleLocal _pos;  
	snow setParticleParams _parray;
	snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
	snow setParticleCircle [0.0, [0, 0, 0]];
	snow setDropInterval 0.003;

};
//----------------------
//----------------------
nul = [] execVM "lk\nuke\nenvi.sqf";



if (player distance nukepos < 2000) then {

	setaperture 2;

	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [0.5];
	"dynamicBlur" ppEffectCommit 3;

	sleep 0.1;

	"dynamicBlur" ppEffectAdjust [2];
	"dynamicBlur" ppEffectCommit 1;

	"dynamicBlur" ppEffectAdjust [1];
	"dynamicBlur" ppEffectCommit 4;
};
nul = [nukepos] execvm "lk\nuke\damage.sqf";
sleep 3;
//*******************************************************************
//*******************************************************************

_Cone = "#particlesource" createVehicleLocal getpos nukepos;
_Cone setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 10, [0, 0, 0],
				[0, 0, 0], 0, 1.275, 1, 0, [40,80], [[0.25, 0.25, 0.25, 0], [0.25, 0.25, 0.25, 0.5], 
				[0.25, 0.25, 0.25, 0.5], [0.25, 0.25, 0.25, 0.05], [0.25, 0.25, 0.25, 0]], [0.25], 0.1, 1, "", "", nukepos];
_Cone setParticleRandom [2, [1, 1, 30], [1, 1, 30], 0, 0, [0, 0, 0, 0.1], 0, 0];
_Cone setParticleCircle [10, [-10, -10, 20]];
_Cone setDropInterval 0.005;

_top = "#particlesource" createVehicleLocal getpos nukepos;
_top setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 21, [0, 0, 0],
				[0, 0, 65], 0, 1.7, 1, 0, [100,80,110], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", nukepos];
_top setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top setDropInterval 0.002;

_top2 = "#particlesource" createVehicleLocal getpos nukepos;
_top2 setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 112, 0], "", "Billboard", 1, 22, [0, 0, 0],
				[0, 0, 60], 0, 1.7, 1, 0, [100,80,100], [[1, 1, 1, 0.5],[1, 1, 1, 0]], [0.07], 1, 1, "", "", nukepos];
_top2 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top2 setDropInterval 0.002;

_smoke = "#particlesource" createVehicleLocal getpos nukepos;
_smoke setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
				[0, 0, 70], 0, 1.7, 1, 0, [50,20,120], 
				[[1, 1, 1, 0.4],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0]]
				, [0.5, 0.1], 1, 1, "", "", nukepos];
_smoke setParticleRandom [0, [10, 10, 15], [15, 15, 7], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_smoke setDropInterval 0.002;

_Wave = "#particlesource" createVehicleLocal getpos nukepos;
_Wave setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 20/2, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
				[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", nukepos];
_Wave setParticleRandom [2, [20, 20, 20], [5, 5, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_Wave setParticleCircle [50, [-80, -80, 2.5]];
_Wave setDropInterval 0.0002;


_light = "#lightpoint" createVehicleLocal [((getpos nukepos select 0)),(getpos nukepos select 1),((getpos nukepos select 2)+800)];
_light setLightAmbient[1500, 1200, 1000];
_light setLightColor[1500, 1200, 1000];

//*******************************************************************
//*******************************************************************

sleep 1.5*2;

_Wave setDropInterval 0.001;
deletevehicle _top;
deletevehicle _top2;


sleep 3;

player spawn envi;


player spawn quake;


if (player distance nukepos < 1000) then {player say "nuke2s"};
if (player distance nukepos > 1000) then {player say "nuke1s"};

sleep 1;
setaperture -1;

_top3 = "#particlesource" createVehicleLocal getpos nukepos;
_top3 setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 24, [0, 0, 450],
				[0, 0, 49], 0, 1.7, 1, 0, [120,130,150], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", nukepos];
_top3 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top3 setDropInterval 0.002;
sleep 4;
deletevehicle _top3;

sleep 4;

if (player distance nukepos < 4000) then {
	"dynamicBlur" ppEffectAdjust [0];
	"dynamicBlur" ppEffectCommit 1;
};

_top4 = "#particlesource" createVehicleLocal getpos nukepos;
_top4 setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 22, [0, 0, 770],
				[0, 0, 30], 0, 1.7, 1, 0, [100,120,140], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", nukepos];
_top4 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top4 setDropInterval 0.002;
sleep 3;

_top4 setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 25, [0, 0, 830],
				[0, 0, 30], 0, 1.7, 1, 0, [100,120,140], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", nukepos];



_Wave setDropInterval 0.001*10;
_Wave setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 20/2, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
				[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", nukepos];
_Wave setParticleCircle [50, [-40, -40, 2.5]];

player spawn ash;
windv=true;
player spawn wind;
30 setovercast 0.8;




deleteVehicle _light;

60 setRain 1;

sleep 4;
deletevehicle _top4;

_i = 0;


for "_i" from 0 to 15 do {
	_smoke setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
					[0, 0, 60+_i], 0, 1.7, 1, 0, [40,15,120], 
					[[1, 1, 1, 0.4],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0.7],[1, 1, 1, 0]]
					, [0.5, 0.1], 1, 1, "", "", nukepos];
};


_timeNow = time;
waituntil {(time - _timeNow) > 180};

_smoke setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
				[0, 0, 30], 0, 1.7, 1, 0, [40,25+10,80], 
				[[1, 1, 1, 0.2],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0]]
				, [0.5, 0.1], 1, 1, "", "", nukepos];

_smoke setDropInterval 0.012;
_Cone setDropInterval 0.02;
_Wave setDropInterval 0.01;

sleep 10;
deleteVehicle _Wave;
deleteVehicle _cone;
deleteVehicle _smoke;
deletevehicle snow;

sleep 300;


"filmGrain" ppEffectEnable false;
sleep 10;
"colorCorrections" ppEffectEnable false;
sleep 10;
60 setovercast 0;
windv=false;
setwind [0,0,true];
//----------------------
//----------------------