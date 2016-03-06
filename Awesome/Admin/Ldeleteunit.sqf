//Thanks for checking out my edit. Thanks to: Veteran, LoganNZL, Infistar, Malory, Rustler, Some people off Youtube for sending me some awesome scripts. And anyone else I forgot!
//////////////////////////////////////////////////////////////////////
//          __    Happy New Year!         _   _______   __ 			//
//   	   / /   ____  ____ _____ _____  / | / /__  /  / / 			//
//  	  / /   / __ \/ __ `/ __ `/ __ \/  |/ /  / /  / /  			//
// 		 / /___/ /_/ / /_/ / /_/ / / / / /|  /  / /__/ /___			//
//		/_____/\____/\__, /\__,_/_/ /_/_/ |_/  /____/_____/			//
//            		/____/        www.youtube.com/LoganNZL          //
//////////////////////////////////////////////////////////////////////

_DeleteUnitName = _this select 1;

_DeleteUnit = "";

_animPerson = _this select 0;

if (_animPerson == "") exitwith { Hint "Some how there was an error check your scripts, or you need to select a name in the player list. If you wish to execute it on all players then click All Players or select an individual name to perform that action then click execute.";};

if (_animPerson == "_All Players") then {_animPerson = "";};
if (_animPerson == "_All Players (but you)") then {_animPerson = "Everyone Except You";};

// ----------------------------------//
switch (_DeleteUnitName) do
{

	case "Delete Unit":
	{
	_DeleteUnit = "selectNoPlayer"; hint"Player turned into AI";
	};
//-----------------------------------//
	
};

nil = [_animPerson, 4 ,_DeleteUnit] execVM "LoganNZL\LoganNZL@scripts\Lmain2.sqf";