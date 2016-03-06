while{true} do {
	if(robpoolsafe1 < maxinsafe)then{robpoolsafe1 = robpoolsafe1 + ceil((random 3000) + 2000); publicvariable "robpoolsafe1"};
	if(robpoolsafe2 < maxinsafe)then{robpoolsafe2 = robpoolsafe2 + ceil((random 3000) + 2000); publicvariable "robpoolsafe2"};
	if(robpoolsafe3 < maxinsafe)then{robpoolsafe3 = robpoolsafe3 + ceil((random 3000) + 2000); publicvariable "robpoolsafe3"};

	["robpoolsafe1", robpoolsafe1] spawn stats_server_save;
	["robpoolsafe2", robpoolsafe2] spawn stats_server_save;
	["robpoolsafe3", robpoolsafe3] spawn stats_server_save;

	sleep 30;
};
