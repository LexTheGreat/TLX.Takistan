//ADD STATS YOU WANT TO CONTINUOUSLY SAVE, HERE
waitUntil {!isNil "statsLoaded"};
while {true} do
{
	sleep 1;
	switch (playerSide) do
	{
		case west:
		{
			["positionPlayerWest", getPosATL player] call fn_SaveStat;
			["directionPlayerWest", direction player] call fn_SaveStat;
			["moneyAccountWest", [player] call get_bank_valuez] call fn_SaveStat;
			["weaponsPlayerWest", weapons player] call fn_SaveStat;
			["magazinesPlayerWest", magazines player] call fn_SaveStat;
			["licensesWest", INV_LicenseOwner] call fn_SaveStat;
			["inventoryWest", ([player] call player_get_inventory)] call fn_SaveStat;
			["privateStorageWest", ([player, "private_storage"] call player_get_array)] call fn_SaveStat;
			["factoryWest", INV_Fabrikowner] call fn_SaveStat;
		};
	}
};
