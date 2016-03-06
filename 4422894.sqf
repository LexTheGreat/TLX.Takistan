
dniceCfg_WeaponInfo = {
    private["_cfg", "_name", "_DescShort", "_DescLong", "_Pic", "_Type"];
    _name = _this;
    _cfg = (configFile >> "CfgWeapons" >> _name);
    _DescShort = if (isText(_cfg >> "displayName")) then {
        getText(_cfg >> "displayName")
    }
    else {
        "/"
    };
	
    _DescLong  = if (isText(_cfg >> "Library" >> "libTextDesc")) then {
        getText(_cfg >> "Library" >> "libTextDesc")
    }
    else {
        "/"
    };
	
    _Pic = if (isText(_cfg >> "picture")) then {
        getText(_cfg >> "picture")
    }
    else {
        "/"
    };
	
    _Type = if (isText(_cfg >> "type")) then {
        parseNumber(getText(_cfg >> "type"))
    }
    else {
        getNumber(_cfg >> "type")
    };
	
    [_DescShort, _DescLong, _Type, _Pic]
};

dniceCfg_MagazineInfo = {
    private["_cfg", "_name", "_DescShort", "_DescLong", "_Type", "_Count"];
    _name = _this;
    _cfg = (configFile >> "CfgMagazines" >> _name);
	
    _DescShort = if (isText(_cfg >> "displayName")) then {
        getText(_cfg >>"displayName")
    }
    else {
        "/"
    };
	
    _DescLong  = if (isText(_cfg >> "Library" >> "libTextDesc")) then {
        getText(_cfg >> "Library" >>"libTextDesc")
    }
    else {
        "/"
    };
	
    _Pic = if (isText(_cfg >> "picture")) then {
        getText(_cfg >> "picture")
    }
    else {
        "/"
    };
	
    _Type = if (isText(_cfg >> "type")) then {
        parseNumber(getText(_cfg >>"type"))
    }
    else {
        getNumber(_cfg >> "type")
    };
	
    _Count = if (isText(_cfg >> "count")) then {
        parseNumber(getText(_cfg >> "count"))
    }
    else {
        getNumber(_cfg >> "count")
    };
	
    [_DescShort, _DescLong, _Type, _Pic]
};

dniceCfg_VehicleInfo = {
    private["_cfg", "_name", "_DescShort", "_DescLong", "_Type", "_MaxSpeed", "_MaxFuel"];
    _name = _this;
    _cfg  = (configFile >>  "CfgVehicles" >>  _name);
	
    _DescShort = if (isText(_cfg >> "displayName")) then {
        getText(_cfg >> "displayName")
    }
    else {
        "/"
    };
	
    _DescLong = if (isText(_cfg >> "Library" >> "libTextDesc")) then {
        getText(_cfg >> "Library" >> "libTextDesc")
    }
    else {
        "/"
    };
	
    _Pic = if (isText(_cfg >> "picture")) then {
        getText(_cfg >> "picture")
    }
    else {
        "/"
    };
	
    _Type = if (isText(_cfg >> "type")) then {
        parseNumber(getText(_cfg >> "type"))
    }
    else {
        getNumber(_cfg >> "type")
    };
	
    _MaxSpeed = if (isText(_cfg >> "maxSpeed")) then {
        parseNumber(getText(_cfg >> "maxSpeed"))
    }
    else {
        getNumber(_cfg >> "maxSpeed")
    };
	
    _MaxFuel = if (isText(_cfg >>    "fuelCapacity")) then {
        parseNumber(getText(_cfg >> "fuelCapacity"))
    }
    else {
        getNumber(_cfg >>"fuelCapacity")
    };
	
    [_DescShort, _DescLong, _Type, _Pic, _MaxSpeed, _MaxFuel]
};

dniceCfg_Weapons_GetName  = {
    (_this call dniceCfg_WeaponInfo) select 0
};

dniceCfg_Weapons_GetDesc  = {
    (_this call dniceCfg_WeaponInfo) select 1
};

dniceCfg_Weapons_GetType  = {
    (_this call dniceCfg_WeaponInfo) select 2
};

dniceCfg_Weapons_GetPic   = {
    (_this call dniceCfg_WeaponInfo) select 3
};

dniceCfg_Magazine_GetName = {
    (_this call dniceCfg_MagazineInfo) select 0
};

dniceCfg_Magazine_GetDesc = {
    (_this call dniceCfg_MagazineInfo) select 1
};

dniceCfg_Magazine_GetType = {
    (_this call dniceCfg_MagazineInfo) select 2
};

dniceCfg_Magazine_GetPic  = {
    (_this call dniceCfg_MagazineInfo) select 3
};

dniceCfg_Vehicle_GetName  = {
    (_this call dniceCfg_VehicleInfo) select 0
};

dniceCfg_Vehicle_GetDesc  = {
    (_this call dniceCfg_VehicleInfo) select 1
};

dniceCfg_Vehicle_GetType  = {
    (_this call dniceCfg_VehicleInfo) select 2
};

dniceCfg_Vehicle_GetPic   = {
    (_this call dniceCfg_VehicleInfo) select 3
};

dniceCfg_Vehicle_GetSpeed = {
    (_this call dniceCfg_VehicleInfo) select 4
};

dniceCfg_Vehicle_GetFuel  = {
    (_this call dniceCfg_VehicleInfo) select 5
};