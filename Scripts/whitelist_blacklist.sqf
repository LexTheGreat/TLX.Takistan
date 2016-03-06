// Contains whitelist/blacklist arrays!

private["_uid"];
_uid = getPlayerUID player;

// Remember the Array format! No comma on last item in array!

// Developers

A_LIST_DEVS     =
[
	"76561198094294502", // Unknown
	"76561198101924418", // Lex_the_great
	"76561198154237291", // SGT E. Garcia
	"76561198124176578", // 1st Lt Monkey
	"76561198119216004"  // Heaven
];

// Directors and Deputy Directors

A_LIST_DERPS	=
[
	"76561198094294502", // Unknown
	"76561198101924418", // Lex
	"76561198154237291"  //SGT E. Garcia
];

// Senior Admins

A_LIST_SNADMINS	=
[
	"76561198094294502", // Unknown
	"76561198101924418", // Lex_the_great
	"76561198154237291", // SGT E. Garcia
	"76561198124176578", // 1st Lt Monkey
	"76561198119216004"  // Heaven
];

// Remember the Array format! No comma on last item in array!

// Admins

A_LIST_ADMINS	=
[
	"76561198134796571", // Canadian Bacon
	"76561198053580599", //Martin
	"76561198134919635",  // lordwookie
	"76561198142625756" // Jaysec
];

// Remember the Array format! No comma on last item in array!

// Moderators

A_LIST_MODS	=
[
	"76561198092203299", //Stoned Turtle
	"76561198095702747", //Irish
	"76561198101119702", //Tone
	"76561198092131123"  //JacksonS
];

isDeveloper = (getPlayerUID player) in A_LIST_DEVS;
isAdminDev = (getPlayerUID player) in A_LIST_DERPS;
isSnAdmin = (getPlayerUID player) in A_LIST_SNADMINS;

isAdmin = (getPlayerUID player) in A_LIST_ADMINS;
isMod = (getPlayerUID player) in A_LIST_MODS;
isAdmins = (isAdmin||isSnAdmin||isAdminDev||isDeveloper);
isStaff = (isAdminDev || isSnAdmin || isAdmin || isMod || isDeveloper);


// Remember the Array format! No comma on last item in array!

// Whitelisting
pmcwhitelist = [
"169460806", //TLXGOD
"245049094", // Fyodor
"251317574", //KillerKris
"254861574" //KillaCali3
];


//if (!(_uid in isStaff) && (call player_cop;) && (    )) then {call kick_whitelist};


// Remember the Array format! No comma on last item in array!

// Blacklisting
if(isNil "copblacklist") then {
	copblacklist = [
	"76561198040462947", //Son of the Bitch
	"76561198095037617", //Goldenpotaters
	"76561198150297021"//Envy
	];
};
if(isNil "opfblacklist") then {
	opfblacklist = [
		"76561198040462947" //Son of the Bitch
	];
};
if(isNil "opfcmdblacklist") then {
	opfcmdblacklist = [
	
	];
};
if(isNil "insblacklist") then {
	insblacklist = [
	
	];
};
pmcblacklist = [
"76561198203570236", //Austin
"76561198177166307", //Dark Arrow
"76561198083392018" //jpf
];

issup = ((_uid in supporters1) || (_uid in supporters2) || (_uid in supporters3) || (_uid in supporters4) || (_uid in supportersVIP));
isvip = ((_uid in supportersVIP));
ispmc = ((_uid in pmcwhitelist) or (isStaff) or (issup));

_side = playerSide;
if((_uid in copblacklist) && (_side == west)) then {
	player groupChat "You are Blacklisted from Blufor!";
	sleep 7;
	failMission "END1";
};

if((_uid in opfblacklist) && (_side == east)) then {
	player groupChat "You are Blacklisted from Opfor!";
	sleep 7;
	failMission "END1";};

if((_uid in insblacklist) && (_side == resistance)) then {
	player groupChat "You are Blacklisted from Insurgent!";
	sleep 7;
	failMission "END1";
};
	
if(isSupSlot && !issup) then {
	player groupChat "You cannot join a Supporter slot without Supporter privileges!";
	sleep 7;
	failMission "END1";
};
if(isAdminSlot && !isAdmins) then {
	player groupChat "You cannot join a Admin slot without being an admin!";
	sleep 7;
	failMission "END1";
};
if(isVipSlot && !isvip) then {
	player groupChat "You cannot join a VIP slot without VIP privileges!";
	sleep 7;
	failMission "END1";
};

if(_uid in opfcmdblacklist) then {
	if (rolenumber >= 73 && rolenumber <= 74) then {
		player groupChat "You are Blacklisted from Opfor Command Slots!";
		sleep 7;
		failMission "END1";
	};
};