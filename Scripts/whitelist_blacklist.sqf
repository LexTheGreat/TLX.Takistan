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
	"76561198101119702", //Tone
	"76561198142625756" // Jaysec
];

// Remember the Array format! No comma on last item in array!

// Moderators

A_LIST_MODS	=
[
	"76561198095702747", //Irish
	"76561198211441867", //Kevlar
	"76561198092131123",  //JacksonS
	"76561198093358722", //Giovanni
	"76561198044511240"  //Comrade
];

isDeveloper = (getPlayerUID player) in A_LIST_DEVS;
isAdminDev = (getPlayerUID player) in A_LIST_DERPS;
isSnAdmin = (getPlayerUID player) in A_LIST_SNADMINS;

isAdmin = (getPlayerUID player) in A_LIST_ADMINS;
isMod = (getPlayerUID player) in A_LIST_MODS;
isAdmins = (isAdmin||isSnAdmin||isAdminDev||isDeveloper);
isStaff = (isAdminDev || isSnAdmin || isAdmin || isMod || isDeveloper);


// Remember the Array format! No comma on last item in array!

// Blacklisting/Whitelisting
if(isNil "bluforWhiteList") then {
	bluforWhiteList = [
		"76561198094294502", // Unknown
		"76561198101924418", // Lex_the_great
		"76561198154237291", // SGT E. Garcia
		"76561198124176578", // 1st Lt Monkey
		"76561198119216004", // Heaven
		"76561198134796571", // Canadian Bacon
		"76561198053580599", //Martin
		"76561198134919635", // lordwookie
		"76561198101119702", //Tone
		"76561198142625756", // Jaysec
		"76561198095702747", //Irish
		"76561198211441867", //Kevlar
		"76561198092131123", //JacksonS
		"76561198085630212", //Barkuz
		"76561198065161712", //Strideynet
		"76561198068079024", //Solid Snake
		"76561198044511240", //Comrade
		"76561198165263960", //Bryce
		"76561198119668286", //Zander
		"76561198274052048", //ProXum
		"76561198071078533", //Rogue
		"76561198110469807", //Kage
		"76561198119163382", //Chris Kyle
		"76561198146926838", //WakeUpEatPlaySleep
		"76561198211441867", //Kevlar
		"76561198030119519", //Diarmada
		"76561198055933837", //Bradys
		"76561198093358722"  //Giovanni
	];
};

if(isNil "opforBlackList") then {
	opforBlackList = [
		""
	];
};

if(isNil "pmcWhiteList") then {
	pmcWhiteList = [
		""
	];
};

issup = ((_uid in supporters1) || (_uid in supporters2) || (_uid in supporters3) || (_uid in supporters4) || (_uid in supportersVIP));
isvip = ((_uid in supportersVIP));
ispmc = ((_uid in pmcWhiteList) or (isStaff) or (issup));
inWhiteList = ((_uid in bluforWhiteList));
inBlackList = ((_uid in opforBlackList));

if (isClient) then {
	_side = playerSide;
	if(!inWhiteList && isNato) then {
		player groupChat "You are not WhiteListed for Nato!";
		sleep 7;
		failMission "END1";s
	};

	if(inBlackList && isopf) then {
		player groupChat "You are BlackListed from Opfor!";
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
};

/*if(_uid in opforBlackList) then {
	if (rolenumber >= 73 && rolenumber <= 74) then {
		player groupChat "You are Blacklisted from Opfor Command Slots!";
		sleep 7;
		failMission "END1";
	};
};*/