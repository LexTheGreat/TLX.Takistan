//	MPFramework for Arma2 OA
//  @file Author: [TLU] Zeus
//	@file Created: 25/01/2014
// 	@Modified By 

_actiontype = ((_this select 3) select 0);

private["_players", "_targetvehicle", "_type", "_infos", "_typename", "_exit"];
_players = [];
_targetvehicle = cursorTarget;

if (isNull _targetvehicle) exitWith {player groupChat "Invalid Vehicle in CrossHair"};

_type = typeOf _targetvehicle;
_infos = _type call INV_getitemArray;

if ((count _infos) <= 0) exitWith {player groupChat "Invalid Vehicle in CrossHair"};

_typename = '';
_typename = (_infos select 1) select 1;

if (_typename == '') exitWith {player groupChat "Invalid Vehicle Type in CrossHair"};

if (not(_typename in TLU_ZipTie_VALIDVEHICLETYPES)) exitWith {player groupChat "Invalid Vehicle Type in CrossHair"};

_exit = false;

switch (_actiontype) do 
{
	case "putinvehicle": {
		[_targetvehicle] call TLU_ZipTie_PutInVehicle;
	};
	
	case "takeoutvehicle": {
		[_targetvehicle] call TLU_ZipTie_TakeOutOfVehicle;
	};
};