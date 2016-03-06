//Thanks for checking out my edit. Thanks to: Veteran, LoganNZL, Infistar, Malory, Rustler, Some people off Youtube for sending me some awesome scripts. And anyone else I forgot!
//////////////////////////////////////////////////////////////////////
//          __    Happy New Year!         _   _______   __ 			//
//   	   / /   ____  ____ _____ _____  / | / /__  /  / / 			//
//  	  / /   / __ \/ __ `/ __ `/ __ \/  |/ /  / /  / /  			//
// 		 / /___/ /_/ / /_/ / /_/ / / / / /|  /  / /__/ /___			//
//		/_____/\____/\__, /\__,_/_/ /_/_/ |_/  /____/_____/			//
//            		/____/        www.youtube.com/LoganNZL          //
//////////////////////////////////////////////////////////////////////

_LoganTheHiddenOne = "";

if (isNil "LoganLovesElfsZz") then {LoganLovesElfsZz = 0;};

if (LoganLovesElfsZz==0) then
{
	_LoganTheHiddenOne = True;
	LoganLovesElfsZz=1;
}
	else
{
	_LoganTheHiddenOne = False;
	LoganLovesElfsZz=0;
};

niko = [_LoganTheHiddenOne] execVM "Awesome\Admin\Linvis2.sqf";