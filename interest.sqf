#include "Awesome\Functions\macro.h"

BANK_zinsen = {
	private ["_bank_account", "_interest"];
	_bank_account = [player] call get_bank_valuez;
	if (_bank_account > 0) then {
		_interest = round(_bank_account*(zinsen_prozent/100));
		[player, _interest] call transaction_bank;
		_bank_account = [player] call get_bank_valuez;
		player groupChat format [localize "STRS_bank_zinsen", strM(_bank_account), strM(zinsen_prozent)];
	};
};

if (isServer) then {while {true} do {sleep zinsen_dauer;"[] spawn BANK_zinsen;" call broadcast;};};
