private ["_oldBank","_newBank","_difference","_duper","_dupeid","_side","_sup"];
_duper = str (name player);
_dupeid = str (getPlayerUID player);

waitUntil {!isNil "statsLoaded"};
_side = str (playerSide);
_sup = "Regular";
//["Connection Tracker",  _side, _duper, " = connected"] call fn_LogToServer;
if (issup) then {
	_sup = "Supporter";
};
if (isvip) then {
	_sup = "VIP";
};
_sup = str (_sup);
while {true} do 
{
//make sure they are alive...
	while {alive player} do 
	{
	// lets get their position and their position 1 second from now...
		_oldBank = [player] call player_get_total_money;//get_bank_valuez;
		sleep 1;
		_newBank = [player] call player_get_total_money;
		_difference = _newBank - _oldBank;
		//player commandchat format ['%1, %2, %3', str (getPlayerUID player), name player, _difference];
	
// bank difference(editable) 
			if  (_difference > 2000000) then 
			{
				if(_oldBank > 100000) then {
					["DUPING LOGGER", _dupeid, _duper, _side, _sup, _difference] call fn_LogToServer;
					//execVM "AC\punish.sqf";					
				};
				/*if(_difference > 30000000) then 
				{
					["FALSE POSITIVE DUPE?", _dupeid, _oldBank, _newBank, _difference] call fn_LogToServer;
				};*/
			};
	};
};



	