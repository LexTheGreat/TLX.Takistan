/*_t1 = diag_tickTime;
// ... code to test
(diag_tickTime - _t1, "NAME") call _fnc_dump;
*/
slowest_fps = 0;
//[diag_tickTime - _t1, "SRVR LOOP SCRIPT"] call fnc_fps_hi_log; 
fnc_fps_hi_log = {
	if (_this select 0 > slowest_fps) then {
		slowest_fps = _this select 0;
		diag_log str _this;
	};
};

fnc_fps_log = {
		diag_log str _this;
};

mp_constant_array = ["LawsArray", "gangsarray", "squadarray", "INV_ItemStocks"];
//need to sync these values to the server
_player_sync_handler = 
'
	private["_id", "_name", "_uid"];
	_id = owner _this;
	//diag_log format ["%1 requesting sync", _id];
	{
		//diag_log format ["current syncing %1,%2", _x, missionNameSpace getVariable _x];
		_id publicVariableClient _x;
	} count mp_constant_array;
';

player_sync_handler = compile _player_sync_handler;

"server_to_client_sync" addPublicVariableEventHandler 
{
	(_this select 1) spawn player_sync_handler;
};