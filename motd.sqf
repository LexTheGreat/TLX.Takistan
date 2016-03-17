hint "Make sure you read the TLX tabs on map before playing";
server globalchat "[Server Message]Welcome to Takistan Life Xtreme";
custom_motd = nil;
while {true} do {
	{server globalChat format["[MoTD] %1", _x]} forEach [
			"Report Any Bugs on our GitHub @LexTheGreat/TLX.Takistan/issues",
			"Visit our website at http://tlx-gaming.enjin.com Also check out the rules page!"
			"All Blufor, Opfor, TNP and Terrorists are required to be on Teamspeak!"
		];
	
	if (not(isNil "custom_motd")) then { if (typeName custom_motd == "STRING") then { if (custom_motd != "") then {
		server globalChat format["[MoTD] %1", custom_motd];
	};};};
	sleep (3 * motdwaittime);
};
