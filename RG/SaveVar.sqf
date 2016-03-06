_save =
"
	accountToServerSave = _this;
	publicVariableServer 'accountToServerSave';
";

_saveAgg =
"
	accountToServerAggSave = _this;
	publicVariableServer 'accountToServerAggSave';
";

_log = 
"
	serverLogger = _this;
	publicVariableServer 'serverLogger';
";

_flagSet =
"
	serverFlagSet = _this;
	publicVariableServer 'serverFlagSet';
";

fn_SaveToServer = compile _save;
fn_SaveAggToServer = compile _saveAgg;
fn_LogToServer = compile _log;
fn_FlagSet = compile _flagSet;

/*private["_uid"];
_uid = getplayerUID player;
_now = date;
_
["_connectionhistory", date, "WeaponsPlayerWest", weapons player] call fn_SaveToServer;
*/
