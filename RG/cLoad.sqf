startmoneh = 100000;
supportermoneh = 3000000;
silvermoneh = 6000000;
goldmoneh = 12000000;
platinummoneh = 25000000;
vipmoneh = 50000000;
//adminmoneh = 80000000;

/*if (isStaff) then {
	startmoneh = adminmoneh;
	INV_CarryingCapacity = 1000;
};*/

private["_uid"];
_uid = getPlayerUID player;

if (_uid in supporters1) then {
    startmoneh = supportermoneh;
}
else { if (_uid in supporters2) then {
    startmoneh = silvermoneh;
	INV_CarryingCapacity = 100;
}
else { if (_uid in supporters3) then {
    startmoneh = goldmoneh;
	INV_CarryingCapacity = 200;
}
else { if (_uid in supporters4) then {
	INV_CarryingCapacity = 300;
    startmoneh = platinummoneh;
}
else { if (_uid in supportersVIP) then {
    startmoneh = VIPmoneh;
	INV_CarryingCapacity = 500;
};};};};};

if (isAdmins) then {
	INV_CarryingCapacity = 1000;
};

//sleep 1;
//player groupChat "Initializing Loading Player Stats If your stats has not yet loaded after this process please relog.";
//sleep 1;
hint "Loading Stats... Please Wait";
//player groupChat "Loading";
//Requests info from server in order to download stats
//player groupChat "Loading. .";
//hint "Stats Loading 10%";
//player groupChat "Loading. . .";
//sleep 1;
//hint "Stats Loading 20%";
//hint "Stats Loading";

sleep 2;
switch (playerSide) do
{
	case west:
	{
		[player, _uid, "moneyAccountWest", "NUMBER"] call sendToServer;
		[player, _uid, "MagazinesPlayerWest", "ARRAY"] call sendToServer;
		[player, _uid, "WeaponsPlayerWest", "ARRAY"] call sendToServer;
		[player, _uid, "LicensesWest", "ARRAY"] call sendToServer;
		[player, _uid, "InventoryWest", "ARRAY"] call sendToServer;
    	[player, _uid, "privateStorageWest", "ARRAY"] call sendToServer;
		[player, _uid, "FactoryWest", "ARRAY"] call sendToServer;
		[player, _uid, "positionPlayerWest", "ARRAY"] call sendToServer;
		[player, _uid, "BackpackPlayerWest", "STRING"] call sendToServer;
		[] spawn { 
			sleep 5;
			_uid = getPlayerUID player;
			[player, _uid, "BackWepPlayerWest", "ARRAY"] call sendToServer;
			[player, _uid, "BackMagPlayerWest", "ARRAY"] call sendToServer;
		};
	};
	
	case east:
	{
		[player, _uid, "moneyAccountEast", "NUMBER"] call sendToServer;
		[player, _uid, "MagazinesPlayerEast", "ARRAY"] call sendToServer;
		[player, _uid, "WeaponsPlayerEast", "ARRAY"] call sendToServer;
		[player, _uid, "LicensesEast", "ARRAY"] call sendToServer;
		[player, _uid, "InventoryEast", "ARRAY"] call sendToServer;
    	[player, _uid, "privateStorageEast", "ARRAY"] call sendToServer;
		[player, _uid, "FactoryEast", "ARRAY"] call sendToServer;
		[player, _uid, "positionPlayerEast", "ARRAY"] call sendToServer;
		[player, _uid, "BackpackPlayerEast", "STRING"] call sendToServer;
		[] spawn { 
			sleep 5;
			_uid = getPlayerUID player;
			[player, _uid, "BackWepPlayerEast", "ARRAY"] call sendToServer;
			[player, _uid, "BackMagPlayerEast", "ARRAY"] call sendToServer;
		};
	};
	
	case resistance:
	{
		[player, _uid, "moneyAccountRes", "NUMBER"] call sendToServer;
		[player, _uid, "MagazinesPlayerRes", "ARRAY"] call sendToServer;
		[player, _uid, "WeaponsPlayerRes", "ARRAY"] call sendToServer;
		[player, _uid, "LicensesRes", "ARRAY"] call sendToServer;
		[player, _uid, "InventoryRes", "ARRAY"] call sendToServer;
		[player, _uid, "privateStorageRes", "ARRAY"] call sendToServer;
		[player, _uid, "FactoryRes", "ARRAY"] call sendToServer;
		[player, _uid, "positionPlayerRes", "ARRAY"] call sendToServer;
		[player, _uid, "BackpackPlayerRes", "STRING"] call sendToServer;
		[] spawn { 
			sleep 5;
			_uid = getPlayerUID player;
			[player, _uid, "BackWepPlayerRes", "ARRAY"] call sendToServer;
			[player, _uid, "BackMagPlayerRes", "ARRAY"] call sendToServer;
		};
	};
	
	case civilian:
	{
		if (istnp) then {
			[player, _uid, "moneyAccountTnp", "NUMBER"] call sendToServer;
			[player, _uid, "MagazinesPlayerTnp", "ARRAY"] call sendToServer;
			[player, _uid, "WeaponsPlayerTnp", "ARRAY"] call sendToServer;
			[player, _uid, "LicensesTnp", "ARRAY"] call sendToServer;
			[player, _uid, "InventoryTnp", "ARRAY"] call sendToServer;
			[player, _uid, "privateStorageTnp", "ARRAY"] call sendToServer;
			[player, _uid, "FactoryTnp", "ARRAY"] call sendToServer;
			[player, _uid, "positionPlayerTnp", "ARRAY"] call sendToServer;
			[player, _uid, "BackpackPlayerTnp", "STRING"] call sendToServer;
			[] spawn { 
				sleep 5;
				_uid = getPlayerUID player;
				[player, _uid, "BackWepPlayerTnp", "ARRAY"] call sendToServer;
				[player, _uid, "BackMagPlayerTnp", "ARRAY"] call sendToServer;
			};
		} else {
			[player, _uid, "moneyAccountCiv", "NUMBER"] call sendToServer;
			[player, _uid, "MagazinesPlayerCiv", "ARRAY"] call sendToServer;
			[player, _uid, "WeaponsPlayerCiv", "ARRAY"] call sendToServer;
			[player, _uid, "LicensesCiv", "ARRAY"] call sendToServer;
			[player, _uid, "InventoryCiv", "ARRAY"] call sendToServer;
			[player, _uid, "privateStorageCiv", "ARRAY"] call sendToServer;
			[player, _uid, "FactoryCiv", "ARRAY"] call sendToServer;
			[player, _uid, "positionPlayerCiv", "ARRAY"] call sendToServer;
			[player, _uid, "BackpackPlayerCiv", "STRING"] call sendToServer;
			[] spawn { 
				sleep 5;
				_uid = getPlayerUID player;
				[player, _uid, "BackWepPlayerCiv", "ARRAY"] call sendToServer;
				[player, _uid, "BackMagPlayerCiv", "ARRAY"] call sendToServer;
			};
		};
	};
};
//if(playerSide == west) then
//{
//};
//sleep 1;
//hint "Stats Loading 50%";
//call loadFromDBClient;
//player groupChat "Loading. . . .";
//if(playerSide == east) then
//{

//};
//sleep 1;
//hint "Stats Loading 40%";
//player groupChat "Loading. . . .";
//if(playerSide == resistance) then
//{

//};
//sleep 1;
//hint "Stats Loading 80%";
//player groupChat "Loading. . . . .";
//if(playerSide == civilian) then
//{

//};
//call A_actions;
//sleep 1;
//hint "Stats Loading 100%";
//player groupChat "Loading. . . . . .";

//===========================================================================

//sleep 1;
//END
sleep 4;
player groupChat "Player Stats Loading Complete. If your stats have not yet loaded please relog immediately or risk losing your previous stats";

hint "Loading COMPLETE!";
sleep 10;
if (isNil "bankstatsareloaded") then {
		[player, startmoneh] call set_bank_valuez;
};
statsLoaded = 1;


if ((issup) && !("supporter" call INV_HasLicense)) then {
INV_LicenseOwner = INV_LicenseOwner + ["supporter"];
server globalchat "supporter ACCOUNT DETECTED: supporter License Added";};

if ((isvip) && !("viplicense" call INV_HasLicense)) then {
INV_LicenseOwner = INV_LicenseOwner + ["viplicense"];
server globalchat "VIP supporter ACCOUNT DETECTED: VIP supporter License Added";};

if ((isPmcSlot) && !("pmc_license_journeyman" call INV_HasLicense) && (playerside == civilian)) then {INV_LicenseOwner = INV_LicenseOwner + ["pmc_license_journeyman"];
			server globalchat "PMC ACCOUNT DETECTED: PMC License Added"};
			
			
// Custom License
mgslicense = [
	"76561198068079024",
	"76561198000426604",
	"76561198094294502",
	"76561198154237291"
];
jarlicense = [
	"76561198047477296",
	"76561198080206289",
	"76561198072033337",
	"76561198114597817",
	"76561198068098093",
	"76561198141964948",
	"76561198094294502",
	"76561198154237291"
];
bonglicense = [
	"76561198046673227",
	"76561198155614911",
	"76561198118377646",
	"76561198094294502",
	"76561198154237291"
];
SSLicense = [
	"76561198084473560",
	"76561198078405272",
	"76561198094294502",
	"76561198154237291"
];
colelicense = [
	"76561198139401322",
	"76561198094294502",
	"76561198154237291"
];
recklicense = [
	"76561198079002512",
	"76561198094294502",
	"76561198154237291"
];
karmalicense = [
	"76561198081926401",
	"76561198094294502",
	"76561198154237291"
];
nordlicense = [
	"76561198053580599",
	"76561198094294502",
	"76561198154237291"
];
drunklicense = [
	"76561198063832142",
	"76561198000426604",
	"76561198094294502",
	"76561198154237291"
];
sheplicense = [
	"76561198133658655",
	"76561198094294502",
	"76561198154237291"
];
wolflicense = [
	"76561198074752188",
	"76561198000426604",
	"76561198094294502",
	"76561198154237291"
];

// ------------

if((getPlayerUID player) in mgslicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["mgslicense"];
	server globalchat "FOXHOUND MEMBER DETECTED: METAL GEAR License Added";
};

if((getPlayerUID player) in jarlicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["jarlicense"];
	server globalchat "A wild Jarhead appears: Jarhead License Added";
};

if((getPlayerUID player) in bonglicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["bonglicense"];
	server globalchat "Friendly Neighborhood Drug Dealer Identified: Bong Reseller License Added";
};

if((getPlayerUID player) in SSLicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["grelllicense"];
	server globalchat "SS Totenkopf Identified: SS License Added";
};

if((getPlayerUID player) in colelicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["colelicense"];
	server globalchat "The Name is Bond: Bond License Added";
};

if((getPlayerUID player) in recklicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["recklicense"];
	server globalchat "Reck License Added";
};

if((getPlayerUID player) in karmalicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["karmalicense"];
	server globalchat "Don't be a bitch, cause Karma's a bitch: KarmaIsABitch License Added";
};

if((getPlayerUID player) in nordlicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["nordlicense"];
	server globalchat "Nordic License Added";
};

if((getPlayerUID player) in drunklicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["drunklicense"];
	server globalchat "Drunk Minister License Added";
};

if((getPlayerUID player) in sheplicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["sheplicense"];
	server globalchat "Shep Herder License Added";
};

if((getPlayerUID player) in wolflicense) then {
	INV_LicenseOwner = INV_LicenseOwner + ["wolflicense"];
	server globalchat "Wolfgang License Added";
};

if (isdog) then {
	removeAllWeapons player;
	player addWeapon "ItemMap";
	[player, "Pastor", false] spawn C_change;
};