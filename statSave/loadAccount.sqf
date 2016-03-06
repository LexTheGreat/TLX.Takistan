//ADD STATS THAT NEED TO BE LOADED HERE.
["positionPlayerWest"] call fn_LoadStat;
["directionPlayerWest"] call fn_LoadStat;
["moneyAccountWest"] call fn_LoadStat;
["weaponsPlayerWest"] call fn_LoadStat;
["magazinesPlayerWest"] call fn_LoadStat;
["licensesWest"] call fn_LoadStat;
["inventoryWest"] call fn_LoadStat;
["privateStorageWest"] call fn_LoadStat;
["factoryWest"] call fn_LoadStat;


//===========================================================================


//END
statsLoaded = 1;
player globalChat format ["Your stats are loaded %1.",name player];