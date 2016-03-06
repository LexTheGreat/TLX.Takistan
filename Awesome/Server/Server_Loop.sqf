
if !(isServer) exitwith {};

A_DEBUG = { diag_log _this; };

//civ_logicunit = createGroup civilian;

_t1 = diag_tickTime;

if ((isNil "A_AI_ARRAY")) then {
	A_AI_ARRAY = [university, storage, rathaus, bailflag, assassin, hostage, impoundbuy, shop1export, shop2export, shop3export, shop4export, squadmanager];

	{
		private["_shop"];
		_shop = _x select 0;
		A_AI_ARRAY set [count A_AI_ARRAY, _shop];
	} count INV_ItemShops;

_Clothing_Shops =
[
[CS_PMC_1, 						cam_pmc_1],
[CS_TER_1, 								cam_ter_1],
[CS_CIV_1, 										cam_civ_1],
[CS_CIV_2, 										cam_civ_2],
[CS_UN_1, 									cam_un_1],
[CS_OPF_1, 											cam_opf_1],
[CS_SECRET_KSK,							cam_sec_ksk_1],
[CS_SECRET_FR, 									cam_sec_fr_1],
[CS_SECRET_BAF, 						cam_sec_baf_1],
[CS_SECRET_OPF,							cam_sec_opf_1]
];

	{
		private["_shop"];
		_shop = _x select 0;
		A_AI_ARRAY set [count A_AI_ARRAY, _shop];
		_shop = _x select 1;
		A_AI_ARRAY set [count A_AI_ARRAY, _shop];
	} count _Clothing_Shops;
	/*}
	else{
		"NIL CLOTHING SHOP" call A_DEBUG;
	};*/

	waitUntil{!isNil "workplacejob_deliveryflagarray"};
	{
		private["_ai"];
		_ai = _x;
		A_AI_ARRAY set [count A_AI_ARRAY, _ai];
	} count workplacejob_deliveryflagarray;
	

	waitUntil{!isNil "bankflagarray"};
	{
		private["_ai"];
		_ai = _x;
		A_AI_ARRAY set [count A_AI_ARRAY, _ai];
	} count bankflagarray;
	

	waitUntil{!isNil "drugsellarray"};
	{
		private["_ai"];
		_ai = _x;
		A_AI_ARRAY set [count A_AI_ARRAY, _ai];
	} count drugsellarray;
	

	waitUntil{!isNil "shopflagarray"};
	{
		private["_ai"];
		_ai = _x;
		A_AI_ARRAY set [count A_AI_ARRAY, _ai];
	} count shopflagarray;
	

	waitUntil{!isNil "INV_Licenses"};
	{
		private["_array"];
		_array = _x select 1;
		{
			//if(!isNil "_x") then {
				A_AI_ARRAY set [count A_AI_ARRAY, _x];
			//};
		} count _array;
	} forEach INV_Licenses;
	
	_all_factories =
	[
		[Vehiclefactory, "factory1", "Vehicle Factory", dummyobj, vfacspawn],
		[Aircraftfactory, "factory2", "Aircraft Factory", dummyobj, airfacspawn],
		[ItemFabrik_1, "factory3", "General Factory", igunbox,dummyobj],
		[weaponfactory, "factory4", "Weapon Factory", wfgunbox,dummyobj],
		//[terrorshop2,"factory5","Terror Factory",dummyobj,tfacspawn,_terrorfactory,300000,"Fabrikablage5", "tvehiclequeue"],
		[tairshop, "factory6", "Terrorist Vehicle Factory", dummyobj,tairspawn],
		[alcoholfactory, "factory7", "Alcohol Factory", dummyobj, dummyobj] ,
		//[terrorfactoryitems, "factory8", "Terror item factory", tgunbox,dummyobj, _terrorfactoryitems, 600000, "Fabrikablage8", "terrorfactoryitemsqueue"],
		[ringfactory, "factory9", "Ring Factory", dummyobj, dummyobj],
		[Furnace, "factory10","Furnace", dummyobj, dummyobj]
	];

	
	{
		private["_ai"];
		_ai = _x select 0;
		A_AI_ARRAY set [count A_AI_ARRAY, _ai];
		_ai = _x select 3;
		A_AI_ARRAY set [count A_AI_ARRAY, _ai];
		_ai = _x select 4;
		A_AI_ARRAY set [count A_AI_ARRAY, _ai];
	} count _all_factories;
	
	A_AI_ARRAY = A_AI_ARRAY call GetUnduplicatedArray;
	{
		private["_dir"];
		//if(!isNil "_x") then {
			_dir = getDir _x;
			_x attachTo [A_ATTACHTO];
			_x setDir _dir;
		//};
	} count A_AI_ARRAY;
		
	{
		//if(!isNil "_x") then {
			[_x] joinSilent (group server);
		//};
	} count A_AI_ARRAY;
};

[diag_tickTime - _t1, "SERVER LOOP INIT"] call fnc_fps_log;

private["_sleep", "_counter", "_time", "_time_wait", "_wait"];
_sleep = 10;
_counter = 0;
//_time = time;
_time_wait = 5;
_wait = (3 * _time_wait);
zoneCapCounter = [0, 0, 0];
//op4/indep/blu4
format['SERVER_LOOP: STARTED'] call A_DEBUG;

while {true} do {
	
	_t1 = diag_tickTime;
	
	if ((diag_tickTime - _t1) >= _wait) then {
		format[''] call A_DEBUG;
		format['SERVER_LOOP: FPS MIN- %1 	FPS AVG- %2		TIME- %3 Minutes', diag_fpsmin, diag_fps, round(time / 60)] call A_DEBUG;
	};
		

	{
		if(!isNil "_x") then {
			if ((group _x) != (group server)) then {
				[_x] joinSilent (group server);
			};
		};
	} count A_AI_ARRAY;
		
	if ((diag_tickTime - _t1) >= _wait) then {
		_groups = allGroups;
		format['SERVER_LOOP: allGroups Count- %1	Empty- %2	West- %3	East- %4	Resistance- %5	Civilian- %6	isNull groups- %7', count _groups, {(count (units _x)) <= 0} count _groups, {(side _x) == west} count _groups, {(side _x) == east} count _groups, {(side _x) == resistance} count _groups, {(side _x) == civilian} count _groups, {isNull _x} count _groups] call A_DEBUG;
		format['SERVER_LOOP: allGroups- %1', _groups] call A_DEBUG;
	};
	//format['2'] call A_DEBUG;	
	//waitUntil {!isNil "civ_logicunit"};
	//format['3'] call A_DEBUG;	
	{
		private["_group", "_units", "_count"];
		_group = _x;
		_units = units _group;
		_count = count _units;
		
		if ((diag_tickTime - _t1) >= _wait) then {
			format['SERVER_LOOP: group- %1	units- %2	count- %3	side- %4	isNull- %5', _group, _units, _count, side _group, isNull _group] call A_DEBUG;
		};
		
		if (_count <= 0) then {
			//[civ_logicunit] joinSilent _group;
			//[civ_logicunit] joinSilent grpNull;
			//[civ_logicunit] joinSilent A_SHOP_GROUP;
			deleteGroup _group;
		};
			
	} count allGroups;
		
	if ((diag_tickTime - _t1) >= _wait) then {
		_groups = allGroups;
		format['SERVER_LOOP: allGroups Count- %1	Empty- %2	West- %3	East- %4	Resistance- %5	Civilian- %6	isNull groups- %7', count _groups, {(count (units _x)) <= 0} count _groups, {(side _x) == west} count _groups, {(side _x) == east} count _groups, {(side _x) == resistance} count _groups, {(side _x) == civilian} count _groups, {isNull _x} count _groups] call A_DEBUG;
		format['SERVER_LOOP: allGroups- %1', _groups] call A_DEBUG;
	};
	if(!isNil "zones") then {
	{
		if (getMarkerColor _x == "ColorWhite") then {
			_z = zoneCapCounter select _forEachIndex;
			if (_z >= 6) exitWith {
				_x setMarkerColor "ColorYellow";
				zoneCapCounter set [_forEachIndex, 0];
			};
			_z = _z + 1;
			zoneCapCounter set [_forEachIndex, _z];
		}
		else {
			zoneCapCounter set [_forEachIndex, 0];
		};
	} forEach zones; };
	
	if ((diag_tickTime - _t1) >= _wait) then {
		_wait = (5 * _time_wait);
		format[''] call A_DEBUG;
	};
	
	[diag_tickTime - _t1, "SRVR LOOP SCRIPT"] call fnc_fps_hi_log;
	
	sleep _sleep;
	//_time = _time + _sleep;
	_counter = _counter + 1;
	
	
	if (_counter >= 5000) exitwith {[] execVM "Awesome\Server\Server_Loop.sqf";};
};