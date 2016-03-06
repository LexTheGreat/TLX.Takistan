fn_SaveStat =
{
	_varName = _this select 0;
	_varValue = _this select 1;
	profileNameSpace setVariable [_varName + serverID,_varValue];
};

fn_LoadStat =
{
	_varName = _this select 0;
	_varValue = profileNameSpace getVariable (_varName + serverID);
	if(isNil "_varValue") exitWith {};
	[_varName,_varValue] call fn_SetStat;
};

//===========================================================================
//ADD VARIABLES TO THIS ARRAY THAT NEED SPECIAL SCRIPTING TO LOAD
specialVarLoads =
[
	"positionPlayerWest",
	"directionPlayerWest",
	"moneyAccountWest", 
	"weaponsPlayerWest",
	"magazinesPlayerWest",
	"licensesWest",
	"inventoryWest",
	"privateStorageWest",
	"factoryWest"
];

//THIS FUNCTIONS HANDLES HOW STATS ARE LOADED
fn_SetStat =
{
	_varName = _this select 0;
	_varValue = _this select 1;
	if(isNil '_varValue') exitWith {};
	if(_varName in specialVarLoads) then
	{
		if(_varName == 'positionPlayerWest') then {player setPosATL _varValue};
		if(_varName == 'directionPlayerWest') then {player setDir _varValue};
		if(_varName == 'moneyAccountWest') then {[player, _varValue] call set_bank_valuez;};
		if(_varName == 'weaponsplayerWest') then {{player addWeapon _x} forEach _varValue;};	
		if(_varName == 'magazinesplayerWest') then {{player addMagazine _x} forEach _varValue;};	
		if(_varName == 'licensesWest') then {INV_LicenseOwner = _varValue;};
		if(_varName == 'inventoryWest') then {[player, _varValue] call player_set_inventory;};
		if(_varName == 'privateStorageWest') then {[player,'private_storage', _varValue] call player_set_array;};
		if(_varName == 'factoryWest') then {INV_Fabrikowner = _varValue;};
	}
	else
	{
		call compile format ["%1 = %2",_varName,_varValue];
	};
};

//==================================================================================================================================================================================================
saveFuncsLoaded = true;