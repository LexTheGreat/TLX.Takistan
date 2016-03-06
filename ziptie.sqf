private["_player", "_civ"];
	_player = _this select 0;
	_civ = _this select 1;
	
	if (not([_player] call player_human)) exitWith {};
	if (not([_civ] call player_human)) exitWith {};
	
	if (_player != player) exitWith {};

if(animationstate _civ == "civilsitting03" or animationstate _civ == "civilsitting02" or animationstate _civ == "civilsitting01" or animationstate _civ == "civilsitting") exitwith

{

(format ["%1 switchmove ""%2"";", _civ, "boundCaptive_unaErc"]) call broadcast;
[_civ, "restrained", false] call player_set_bool;
player groupchat "You released the player";

};

if(vehicle _civ != _civ)exitwith{player groupchat "The person is in a vehicle!"};
if (!(_civ call dniceIsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohandszip"};
if(animationstate _civ == "CivilSitting") exitwith {player groupchat "Already ziptied"}; 


if(([player, "ziptie"] call INV_GetItemAmount) < 1 && (([player, "ziptie_sup"] call INV_GetItemAmount) < 1 )) exitwith {player groupchat "You need a zip tie in your inventory in order to use this function."};


(format ["%1 playmove ""%2"";", player, "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"]) call broadcast;
(format ["%1 switchmove ""%2"";", _civ, "CivilSitting"]) call broadcast;
[_civ, "restrained", true] call player_set_bool;

[player, 'ziptie',-1] call INV_AddInventoryItem;
[player, 'ziptie_sup',-1] call INV_AddInventoryItem;
(format['server globalchat "%3 was zip tied by %2";if (rolestring == "%1") then {execVM "Unziptie.sqf";}', _civ, name _player, name _civ]) call broadcast;

