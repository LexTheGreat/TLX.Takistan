_civ = civmenuciv;
//ZIPTIE SCRIPT BY LINNET
//=====================================UNRESTRAIN=========================================

if(animationstate _civ == "civillying01") exitwith

{

(format ["%1 switchmove ""%2"";", _civ, "amovppnemstpsnonwnondnon"]) call broadcast;
player groupchat "You released the civilian!";

};

//==================================RESTRAIN=========================================

if(vehicle _civ != _civ)exitwith{player groupchat "the civ is in a vehicle!"};

if ("ziptie" call INV_GetItemAmount < 1 && "ziptie_vip" call INV_GetItemAmount < 1 && "ziptie_sup" call INV_GetItemAmount < 1) exitwith {player groupchat "You need a zip tie in your inventory in order to use this."};
if (!(_civ call dniceIsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohands"};

(format ["%1 switchmove ""%2"";", _civ, "civillying01"]) call broadcast;
["ziptie", -1] call INV_addinventoryitem;
player groupchat "You restrained %3";
(format['if (rolestring == "%1") then {execVM "Unrestrain2.sqf";}', _civ, name player, name _civ]) call broadcast;
