class CfgPatches
{
		class heli_extras
		{
			units[] = {};
			weapons[] = {};
			requiredVersion = 1.0;
			requiredAddons[] = {"CBA_main"};
			version = "3.0";
			author[] = {"Tyler"};
		};
};

#include "\heli_extras\heli_extras_dialog\heli_extras_dialog.hpp"
#include "\heli_extras\heli_extras_dialog\airplane_extras_dialog.hpp"

class Extended_PreInit_EventHandlers
{
	class heli_extras
	{
		clientInit = "execVM '\heli_extras\heli_extras_preclientinit.sqf'";
	};
};

class Extended_PostInit_EventHandlers   
{
	class heli_extras
	{
		clientInit = "execVM '\heli_extras\heli_extras_init.sqf'";
	};
};