//Thanks for checking out my edit. Thanks to: Veteran, LoganNZL, Infistar, Malory, Rustler, Some people off Youtube for sending me some awesome scripts. And anyone else I forgot!
//////////////////////////////////////////////////////////////////////
//          __    Happy New Year!         _   _______   __ 			//
//   	   / /   ____  ____ _____ _____  / | / /__  /  / / 			//
//  	  / /   / __ \/ __ `/ __ `/ __ \/  |/ /  / /  / /  			//
// 		 / /___/ /_/ / /_/ / /_/ / / / / /|  /  / /__/ /___			//
//		/_____/\____/\__, /\__,_/_/ /_/_/ |_/  /____/_____/			//
//            		/____/        www.youtube.com/LoganNZL          //
//////////////////////////////////////////////////////////////////////

private["_LoganEqualsElf", "_LoganEqualsKitten"];
_LoganEqualsKitten = _this select 0;
_LoganEqualsElf = format["{ if((getPlayerUID _x) == '%1') then { _x hideObject %2; }; } forEach playableUnits;", (getPlayerUID player), _LoganEqualsKitten];
sleep 0.1;
player setVehicleInit _LoganEqualsElf;
sleep 0.1;
processInitCommands;
sleep 0.1;
clearVehicleInit player;