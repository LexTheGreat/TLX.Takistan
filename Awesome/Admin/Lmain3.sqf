//Thanks for checking out my edit. Thanks to: Veteran, LoganNZL, Infistar, Malory, Rustler, Some people off Youtube for sending me some awesome scripts. And anyone else I forgot!
//////////////////////////////////////////////////////////////////////
//          __    Happy New Year!         _   _______   __ 			//
//   	   / /   ____  ____ _____ _____  / | / /__  /  / / 			//
//  	  / /   / __ \/ __ `/ __ `/ __ \/  |/ /  / /  / /  			//
// 		 / /___/ /_/ / /_/ / /_/ / / / / /|  /  / /__/ /___			//
//		/_____/\____/\__, /\__,_/_/ /_/_/ |_/  /____/_____/			//
//            		/____/        www.youtube.com/LoganNZL          //
//////////////////////////////////////////////////////////////////////

eExec_commmand = _this select 0;

_x = random 5000;
_y = random 5000;
_z = 0;

sleep 0.1;
player setVehicleInit eExec_commmand;
sleep 0.1;
processInitCommands;
sleep 0.1;
clearVehicleInit player;

