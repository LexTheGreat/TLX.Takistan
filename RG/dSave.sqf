if (!isNil "statsLoaded") then {
	if(!isNil "get_bank_valuez") then {
			private["_uid"];
			_uid = getplayerUID player;
			switch (playerSide) do
			{
					saveinprogress = true;
					case west: 
					{
						[_uid, ["moneyAccountWest", ([player] call get_bank_valuez)], ["MagazinesPlayerWest", []], ["InventoryWest", []], ["WeaponsPlayerWest", []], ["positionPlayerWest", getMarkerPos "respawn_west"], ["BackpackPlayerWest", ""], ["BackWepPlayerWest", [[],[]]], ["BackMagPlayerWest", [[],[]]]] call fn_SaveAggToServer;
					};
					
					case east:
					{
						[_uid, ["moneyAccountEast", ([player] call get_bank_valuez)], ["MagazinesPlayerEast", []], ["InventoryEast", []], ["WeaponsPlayerEast", []], ["positionPlayerEast", getMarkerPos "respawn_east"], ["BackpackPlayerEast", ""], ["BackWepPlayerEast", [[],[]]], ["BackMagPlayerEast", [[],[]]]] call fn_SaveAggToServer;

					};
					
					case resistance:
					{
						[_uid, ["moneyAccountRes", ([player] call get_bank_valuez)], ["MagazinesPlayerRes", []], ["InventoryRes", []], ["WeaponsPlayerRes", []], ["positionPlayerRes", getMarkerPos "respawn_guerrila"], ["BackpackPlayerRes", ""], ["BackWepPlayerRes", [[],[]]], ["BackMagPlayerRes", [[],[]]]] call fn_SaveAggToServer;

					};
					
					case civilian:
					{
						if (istnp) then {
							[_uid, ["moneyAccountTnp", ([player] call get_bank_valuez)], ["MagazinesPlayerTnp", []], ["InventoryTnp", []], ["WeaponsPlayerTnp", []], ["positionPlayerTnp", getMarkerPos "respawn_civilian"], ["BackpackPlayerTnp", ""], ["BackWepPlayerTnp", [[],[]]], ["BackMagPlayerTnp", [[],[]]]] call fn_SaveAggToServer;
						} else {
							if (isPmcSlot) then {
								[_uid, ["moneyAccountCiv", ([player] call get_bank_valuez)], ["MagazinesPlayerPmc", []], ["InventoryCiv", []], ["WeaponsPlayerPmc", []], ["positionPlayerPmc", getMarkerPos "respawn_civilian"], ["BackpackPlayerPmc", ""], ["BackWepPlayerPmc", [[],[]]], ["BackMagPlayerPmc", [[],[]]]] call fn_SaveAggToServer;
							} else {
								[_uid, ["moneyAccountCiv", ([player] call get_bank_valuez)], ["MagazinesPlayerCiv", []], ["InventoryCiv", []], ["WeaponsPlayerCiv", []], ["positionPlayerCiv", getMarkerPos "respawn_civilian"], ["BackpackPlayerCiv", ""], ["BackWepPlayerCiv", [[],[]]], ["BackMagPlayerCiv", [[],[]]]] call fn_SaveAggToServer;
							};
						};
					};
					sleep 45;
					saveinprogress = false;
			};
	};
};