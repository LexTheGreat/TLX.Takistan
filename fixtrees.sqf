_art = _this select 0;
_range = 50;

if (_art == "use") then
{
	if (vehicle player == player) then
	{
		_fixedreward = 0;
		player groupChat "Attempting to fix...";
		player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
		{
			if ((typeOf _x == "") && (damage _x > 0)) then
			{
				_x setdamage 0;
				_fixedreward = _fixedreward + treefixreward;
			};
		} count (nearestObjects [player,[], _range]);
		[player, "money", _fixedreward] call INV_AddInventoryItem;
		player groupchat format["You received $%1 for repairing objects!", _fixedreward];
		player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	} else
	{
		player groupChat "You must be on foot.";
	};
};
