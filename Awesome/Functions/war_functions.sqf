
_art = ((_this select 3) select 0);

if (_art == "start_war") then
{
	warstatus = true;
	publicVariableServer "warstatus";
};
if (_art == "start_martial") then
{
	if(isNil 'martialstatus') then {
		martialstatus = false;
	};
	if(martialstatus) then {
		MessageText = "Martial Law has been lifted in North Takistan ";
		scode = format ['titleText ["%1", "PLAIN"];liafu = true;martialstatus=false;', MessageText];
		xorE=true;
		player setVehicleInit scode;
		processInitCommands;
		clearVehicleInit player;
		scode = nil;
		martialstatus = false;
		liafu = true;
		publicVariable "martialstatus";
	}
	else {
		MessageText = "Martial Law has been declared in North Takistan \n Civilians, you may be searched and held by the police at will";
		scode = format ['titleText ["%1", "PLAIN"];liafu = true;martialstatus=true;', MessageText];
		xorE=true;
		player setVehicleInit scode;
		processInitCommands;
		clearVehicleInit player;
		scode = nil;
		martialstatus = true;
		liafu = true;
		publicVariable "martialstatus";
	};
};