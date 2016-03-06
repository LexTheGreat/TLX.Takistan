//Thanks for checking out my edit. Thanks to: Veteran, LoganNZL, Infistar, Malory, Rustler, Some people off Youtube for sending me some awesome scripts. And anyone else I forgot!
//////////////////////////////////////////////////////////////////////
//          __    Happy New Year!         _   _______   __ 			//
//   	   / /   ____  ____ _____ _____  / | / /__  /  / / 			//
//  	  / /   / __ \/ __ `/ __ `/ __ \/  |/ /  / /  / /  			//
// 		 / /___/ /_/ / /_/ / /_/ / / / / /|  /  / /__/ /___			//
//		/_____/\____/\__, /\__,_/_/ /_/_/ |_/  /____/_____/			//
//            		/____/        www.youtube.com/LoganNZL          //
//////////////////////////////////////////////////////////////////////

private["_svr, _plr, _case"];

_plr = _this select 0;

_case = _this select 1;

_class = "";

if (_plr == "") exitwith { Hint "Some how there was an error check your scripts, or you need to select a name in the player list. If you wish to execute it on all players then click All Players or select an individual name to perform that action then click execute.";};

if (_plr == "_All Players") then {_plr = "";};
if (_plr == "_All Players (but you)") then {_plr = "Everyone Except You";};

Switch (_case) do

{
Case "|Delete Gear|":
{
_class = "removeAllWeapons player;"
};
Case "Break Legs":
{
_class = "player setHit ['legs',1];
player setVariable ['hit_legs',2,true];
player setVariable['medForceUpdate',true,true];"
};
Case "Fix Legs":
{
_class = "player setHit ['legs',0];
player setVariable ['hit_legs',0,false];
player setVariable['medForceUpdate',true,true];"
};
Case "Disable Quit":
  {
    _nill = [] execVM "LoganNZL\LoganNZL@scripts\Ldisablequit.sqf";
    _class = "false spawn LoganMirrorCarpetLookingAtObjects;
    (findDisplay 46) displayAddEventHandler ['KeyDown','_this call LoganBikeManJustCanNotStopWillNotStop'];
    (findDisplay 46) displayAddEventHandler ['keyDown', '_this call TAG_onKeyDown'];";
  };
  Case "Enable Quit":
  {
    _class = "true spawn LoganMirrorCarpetLookingAtObjects;
    (findDisplay 46) displayremoveallEventHandlers 'KeyDown';"
	};

};

nil = [_plr, 11 ,_class] execVM "LoganNZL\LoganNZL@scripts\Lmain2.sqf";

sleep 2;