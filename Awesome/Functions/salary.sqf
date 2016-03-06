#include "macro.h"

if (not(isNil "salary_functions_defined")) exitWith {};


cop_salary_handout = {
	if (not(iscop)) exitWith {};

	private["_income"];
	_income = add_copmoney;
	
	if ("patrol_training" call INV_HasLicense) then {
		_income = _income + 5000;
	};

	if ("response_training" call INV_HasLicense) then {
		_income = _income + 10000;
	};

	if ("sobr_training" call INV_HasLicense) then {
		_income = _income + 20000;
	};

	if ("air_support_training" call INV_HasLicense) then {
		_income = _income + 15000;
	};

	if (ischief) then {
		_income = _income + chiefExtraPay;
	};
	
	if(iscop) then {
		_bluZone = ['bluforZone'] call zone_getOwner;
		if (_bluZone == resistance || _bluZone == east) then {
			_income = _income*(0.2);
			player commandChat "An enemy force controls a capture zone of your faction, resulting in a 50% income penalty. Retake your faction capture zone.";
		};
	};
	
	if ((round(time/60)) <= 14) then {
		_income = _income + 200000;
	};

	_income = if (isNil "_income") then { add_copmoney } else {_income};
	_income = if (typeName _income != "SCALAR") then { add_copmoney } else { _income };
	
	[player, (round _income)] call transaction_bank;
	
	player groupChat format[localize "STRS_moneh_copmoneyadd", rolestring, strM((round _income))];
	sleep 1;
	
	if(ischief)then{
		player groupchat format["As a Police Chief you get an extra paycheck of $%1.", strM(chiefExtraPay)]
	};
};


civilian_salary_handout = {
	if (iscop) exitWith {};
	if ([player] call player_get_dead) exitWith {
		player groupChat format[localize "STRS_moneh_paycheckdead"];
	};
	
	private["_income", "_activecount"];
	_income = add_civmoney;
	if(isciv) then {
		_income = _income - 40000;
	};
	
	
	_activecount = 0;
	
	if (isciv) then {
		private["_i"];
		for [{_i=0}, {_i < (count BuildingsOwnerArray)}, {_i=_i+1}] do {
			private["_check"];
			_check = ( round((random 2)*((BuyAbleBuildingsArray select _i) select 4) ) );
			_income = _income + _check;
		};

		if (timeinworkplace > 0) then {
			private["_workplacepaycheck"];
			_workplacepaycheck = (round(add_workplace/180*timeinworkplace));
			_income = _income + _workplacepaycheck;
		};

		private["_c", "_gang_name", "_gang_active_members"];
		_gang_name	= "None";
		_c = 0;
		_gang_active_members = 0;
		while { _c < (count gangsarray) } do {
			private["_cgang_array", "_cgang_name", "_cgang_members"];
			_cgang_array = gangsarray select _c;
			_cgang_name  = _cgang_array select 0;
			_cgang_members = _cgang_array select 1;

			if((name player) in _cgang_members)then {
				_gang_name = _cgang_name;
				private["_j"];
				_j = 0;
				while { _j < (count _cgang_members) } do {
					private["_cgang_member_name", "_cgang_member"];
					_cgang_member_name = (_cgang_members select _j);
					_cgang_member = [_cgang_member_name] call player_lookup_name;
					if ([_cgang_member] call player_civilian) then {
						_gang_active_members = _gang_active_members + 1;
					};
					_j = _j + 1;
				};
			};
			_c = _c + 1;
		};
		if(!isNil "_gang_name" && !isNil "_gang_active_members") then {
		if(_gang_name != "None" && _gang_active_members > 0) then {
			private["_extra", "_control"];
			_extra = ( gangincome / _gang_active_members);
			if (gangarea1 getvariable "control" == _gang_name) then { _income = _income + _extra };
			if (gangarea2 getvariable "control" == _gang_name) then { _income = _income + _extra };
			if (gangarea3 getvariable "control" == _gang_name) then { _income = _income + _extra };
		};};

		timeinworkplace = 0;
	};
	
	if(isopf) then {
		_opfZone = ['opforZone'] call zone_getOwner;
		if (_opfZone == resistance || _opfZone == west) then {
			_income = _income*(0.2);
			player commandChat "An enemy force controls a capture zone of your faction, resulting in a 50% income penalty. Retake your faction capture zone.";
		};
	};
	
	if ((round(time/60)) <= 14) then {
		_income = _income + 200000;
	};
	
	
	_income = if (isNil "_income") then { add_civmoney } else {_income};
	_income = if (typeName _income != "SCALAR") then { add_civmoney } else { _income };
	
	_income = round _income;
	[player, _income] call transaction_bank;
	

	player groupChat format[localize "STRS_moneh_civmoneyadd", rolestring, strM(_income)];
	
	_taxes = round((call shop_get_paid_taxes));
	
	if (isMayor) then {
		MayorTaxes = MayorTaxes + _taxes;
		MayorTaxes = round(MayorTaxes*(MayorTaxPercent/100));
		[player, (MayorTaxes + MayorExtraPay)] call transaction_bank;
		player groupchat format["As president you get an extra paycheck of $%1. You also got $%2 taxes.", strM(MayorExtraPay), strM(MayorTaxes)];
		MayorTaxes = 0;
	}
	else {if (_taxes > 0) then {
		(format["if (isMayor) then {MayorTaxes = MayorTaxes + %1;};", _taxes]) call broadcast;
	};};

	call shop_reset_paid_taxes;
};
    supporter_salary_handout = {
     
            _uid = getPlayerUID player;
     
            _admincashbonus = 0;
            _supportercashbonus = 0;
			_income = 0;

            if (isStaff) then
            {
                    _admincashbonus                                 = 0;
            };
            if (_uid in supporters1) then
            {
                    _supportercashbonus                               = 100000;
            };
            if (_uid in supporters2) then
            {
                    _supportercashbonus                               = 300000;
            };
            if (_uid in supporters3) then
            {
                    _supportercashbonus                               = 500000;
            };
            if (_uid in supporters4) then
            {
                    _supportercashbonus                               = 750000;
            };
            if (_uid in supportersVIP) then
            {
                    _supportercashbonus                               = 1000000;
            };
            _income = _admincashbonus + _supportercashbonus;
			
			// Disabled for bonus
			/*if(!isciv) then {
				if(iscop) then {
					_bluZone = ['bluforZone'] call zone_getOwner;
					if (_bluZone == resistance || _bluZone == east) then {
						_income = _income*(0.5);
					};
				}
				else {
					if(isopf) then {
						_opfZone = ['opforZone'] call zone_getOwner;
						if (_opfZone == resistance || _opfZone == west) then {
							_income = _income*(0.5);
						};
					}
					else {
						if(isins) then {
							_insZones = [resistance] call zone_getCount;
							_income = _income*(0.25 + (_insZones)*.25);
						};
					};
				};
			};*/
			
            if (_income > 0) then
            {
                [player, _income] call transaction_bank;
				sleep 2;
                hint format["You recieved a bonus income of $%1. Thanks for supporting TLX!", _income];
            };
    };

cop_salary_loop = {
	if (not(iscop)) exitWith {};

	private["_i", "_salary_delay"];
	_salary_delay =  5;
	_i = _salary_delay;
	while { _i > 0 && iscop } do {
		player groupChat format[localize "STRS_moneh_countdown", _i];
		[60] call isleep;
		_i = _i - 1;
	};
	if (not(iscop)) exitWith {};
	[] spawn cop_salary_handout;
	[] spawn supporter_salary_handout;
	[1] call isleep;
	sleep 4;
	[] spawn cop_salary_loop;
};

civilian_salary_loop = {
	if (iscop) exitWith {};

	private["_i", "_salary_delay"];
	_salary_delay = 5;
	_i = _salary_delay;
	while { _i > 0 && not(iscop) } do {
		player groupChat format[localize "STRS_moneh_countdown", _i];
		[59] call isleep;
		_i = _i - 1;
	};
	if (iscop) exitWith {};
	
	[] spawn civilian_salary_handout;
    [] spawn supporter_salary_handout;
	[1] call isleep;
	sleep 4;
	[] spawn civilian_salary_loop;
};


[] spawn cop_salary_loop;
[] spawn civilian_salary_loop;

salary_functions_defined = true;
