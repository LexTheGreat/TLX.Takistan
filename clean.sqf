server globalchat "Cleaner Started";


cutText [format ["Clear Server"], "PLAIN DOWN"];

{
	deleteVehicle vehicle _x;
	deleteVehicle _x;
} forEach (allMissionObjects "EvMoney")+allDEAD;

if (vehicle player in allDEAD) then {deleteVehicle vehicle player;};

sleep 1;
server globalchat "Server Cleaner Done!";