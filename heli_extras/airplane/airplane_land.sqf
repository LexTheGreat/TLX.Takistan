// Name:		airplane_land.sqf
// Developer:	Tyler
// Date:		1/9/2012
// Usage:		Makes the AI Airplane land at the selected airfield

//private variables

private ["_airplane","_airstrip","_island","_txt"];

//get the heli

_airplane = call FDKTZ_Find_Airplane;

_airstrip = call FDKTZ_Find_Airstrip;

if (isNull _airplane) then
{
	if (FDKTZ_Heli_Extras_Debug == 1) then
	{
		hint "Null returned to the airplane_land.sqf Script";
	};
}
else
{
	//get the currently loaded world
	_island = toLower(worldName);
	
	switch (_island) do
	{
		case "takistan":
		{
			if (_airstrip == 0) then
			{
				_txt = "Rasman Airbase";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Loy Manera Airbase";
			};
		};
		
		case "zargabad":
		{
			if (_airstrip == 0) then
			{
				_txt = "Zargabad Airport";
			};
		};
		
		case "utes":
		{
			if (_airstrip == 0) then
			{
				_txt = "Utes Airfield";
			};
		};
		
		case "elephantisland":
		{
			if (_airstrip == 0) then
			{
				_txt = "Elephant Island Airfield";
			};
		};
		
		case "queshkibrul":
		{
			if (_airstrip == 0) then
			{
				_txt = "Quesh Kibrul Airfield";
			};
		};
		
		case "everon2010":
		{
			if (_airstrip == 0) then
			{
				_txt = "Everon Airport";
			};
		};
		
		case "malden2010":
		{
			if (_airstrip == 0) then
			{
				_txt = "Malden Airport";
			};
		};
		
		case "sbrodj":
		{
			if (_airstrip == 0) then
			{
				_txt = "Brk Airbase";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Suppr Airbase";
			};
		};
		
		case "fallujah":
		{
			if (_airstrip == 0) then
			{
				_txt = "Fallujah Airport";
			};
		};
		
		case "cmr_cicada":
		{
			if (_airstrip == 0) then
			{
				_txt = "Drozhino Airbase";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Chalnik Airfield";
			};
		};
		
		case "chernarus":
		{
			if (_airstrip == 0) then
			{
				_txt = "Vybor Airfield";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Kranostav Airstrip";
			};
			
			if (_airstrip == 2) then
			{
				_txt = "Balota Airstrip";
			};
		};
		
		case "nicosia":
		{
			if (_airstrip == 0) then
			{
				_txt = "Nicosia Airport";
			};
			if (_airstrip == 1) then
			{
				_txt = "Kosic Airport";
			};
		};
		
		case "panthera2":
		{
			if (_airstrip == 0) then
			{
				_txt = "Arnoldstein Airport";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Boriana Airbase";
			};
		};
		
		case "shapur_baf":
		{
			if (_airstrip == 0) then
			{
				_txt = "Shapur Airfield";
			};
		};
		
		case "tigeria":
		{
			if (_airstrip == 0) then
			{
				_txt = "Tigeria Airport";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Isla de Despestar Airstrip";
			};
		};
		
		case "tup_qom":
		{
			if (_airstrip == 0) then
			{
				_txt = "Manzariyeh Airfield";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Airstrip";
			};
		};
		
		case "isladuala":
		{
			if (_airstrip == 0) then
			{
				_txt = "Kinsella Intl. Airport";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Molatia Intl. Airport";
			};
			
			if (_airstrip == 2) then
			{
				_txt = "Swonto Pinley Airport";
			};
			
			if (_airstrip == 3) then
			{
				_txt = "Tasmera Airport";
			};
		};
		
		case "lingor":
		{
			if (_airstrip == 0) then
			{
				_txt = "Maruko Intl. Airport";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Sargentas Airport";
			};
		};
		
		case "fayshkhabur":
		{
			if (_airstrip == 0) then
			{
				_txt = "Mushorah Airbase West";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Mushorah Airbase East";
			};
			
			if (_airstrip == 2) then
			{
				_txt = "Abu Wajnam Airstrip";
			};
		};
		
		case "emita":
		{
			if (_airstrip == 0) then
			{
				_txt = "Schlyter Airfield";
			};
		};
		
		case "mbg_celle2":
		{
			if (_airstrip == 0) then
			{
				_txt = "ETHS";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "ETHC";
			};
		};
		
		case "sara":
		{
			if (_airstrip == 0) then
			{
				_txt = "Paraiso Airport";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Rahmadi Airfield";
			};
			
			if (_airstrip == 2) then
			{
				_txt = "Pita Airfield";
			};
			
			if (_airstrip == 3) then
			{
				_txt = "Antigua Airport";
			};
		};
		
		case "dingor":
		{
			if (_airstrip == 0) then
			{
				_txt = "Maruko Intl. Airport";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Sargentas Airport";
			};
		};
		
		case "jadegroove":
		{
			if (_airstrip == 0) then
			{
				_txt = "Rockley Airport";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "Port Justice Airport";
			};
		};
		
		case "reshmaan":
		{
			if (_airstrip == 0) then
			{
				_txt = "South Airport";
			};
			
			if (_airstrip == 1) then
			{
				_txt = "North Airport";
			};
		};
		
		default
		{
			_txt = "the currently selected airfield";
		};
	};
	//Order the plane to land at the airbase selected
	_airplane landAt _airstrip;
	
	//Add a LandedStopped Eventhandler to the plane to catch when the AI will stop their plane
	_airplane addEventHandler ["LandedStopped", {_this execVM "heli_extras\airplane\stop_plane.sqf"}];
	
	//Message
	player sideChat format ["Roger, we will land at %1",_txt];
	
};

