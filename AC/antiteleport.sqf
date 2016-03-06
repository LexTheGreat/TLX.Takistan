// this script hasn't changed much from what it was in  A2... and it works...

private ["_oldPos","_newPos","_tpdistance","_inJail"];
while {true} do 
{
//make sure they are alive...
	while {alive player} do 
	{
// lets get their position and their position 1 second from now...
		_oldPos = (getpos player);
		sleep 1;
		_newPos = (getpos player);
		_tpdistance = _newPos distance _oldPos;
		_inJail = [player, "jailtimeleft"] call player_get_scalar;
// TP distance (editable) 
			if  (_tpdistance > 1200 && _inJail <= 1 && !isStaff) then 
			{
				player setPos (_oldPos);
// message displayed to everyone on the server..
				player commandchat format ["**ShutEmDown Antihack**: %1 was caught teleporting... Player ID (%2)",name player,getPlayerUID player] call broadcast;
				hint format["**ShutEmDown Antihack**: %1 was caught teleporting. Player ID: %2", name player,getPlayerUID player] call broadcast;
				//execute punish script.
				
				//execVM "AC\punish.sqf";					
		};		
	};
};



	