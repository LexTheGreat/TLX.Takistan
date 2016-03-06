// Name:        functions_init.sqf
// Developer:   Tyler
// Date:        1/10/2012
// Usage:       Creates a function module on the map (used for the halo drop)

//init private variables

private ["_grp"];

//create sidelogic for the modules
createcenter sidelogic;
_grp = creategroup sidelogic;

FDKTZ_function_manager = _grp createunit ["FunctionsManager", [0,0,6], [], 0, "none"];