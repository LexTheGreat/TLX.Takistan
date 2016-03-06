// Name:		heli_extras_dialog.hpp
// Developer:	Tyler
// Date:		1/9/2012
// Usage:		Creates the menu dialog for the heli extras menu

#include "heli_extras_dialog_constants.hpp"

class FDKTZ_Airplane_Extras_Menu_Dialog
{
	idd = FDKTZ_Airplane_Extras_Dialog;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "execVM 'heli_extras\get_airplanes_in_squad.sqf'";
	controlsBackground[] =
	{
		FDKTZ_Airplane_Extras_Menu_Background
	};
	objects[] = 
	{
	
	};
	controls[] =
	{
		FDKTZ_Airplane_Extras_Menu_Title,
		FDKTZ_Airplane_Extras_Menu_Close_Button,
		FDKTZ_Airplane_Extras_Menu_Select_Heli_Text,
		FDKTZ_Airplane_Extras_Menu_Select_Airplane,
		FDKTZ_Airplane_Extras_Menu_Choose_Airstrip_Label,
		FDKTZ_Airplane_Extras_Menu_Choose_Airstrip_Combobox,
		FDKTZ_Airplane_Extras_Menu_Landing_Options_Label,
		FDKTZ_Airplane_Extras_Menu_Height_Select_Label,
		FDKTZ_Airplane_Extras_Menu_Height_150_Button,
		FDKTZ_Airplane_Extras_Menu_Height_500_Button,
		FDKTZ_Airplane_Extras_Menu_Height_1000_Button,
		FDKTZ_Airplane_Extras_Menu_Land,
		FDKTZ_Airplane_Extras_Menu_Other_Options_Label,
		FDKTZ_Airplane_Extras_Menu_Paradrop_Button,
		FDKTZ_Airplane_Extras_Menu_HALO_Button,
		FDKTZ_Airplane_Extras_Menu_Map
	};
	
	//Text-Base Class
	class FDKTZ_Airplane_Extras_Menu_Text
	{
		idc = -1;
		type = CT_STATIC;
		style = ST_LEFT;
		sizeEx = 0.04;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = { 1, 1, 1, 0 };
		font = FontM;
		x = 0.1;
		y = 0.1;
		w = 0.4;
		h = 0.03;
		text = "";
	};
	
	//Button-Base Class
	class FDKTZ_Airplane_Extras_Menu_Button
	{
		idc = -1;
		type = CT_SHORTCUT_BUTTON;
		style = 0;
		default = 0;
		shadow = 2;
		w = 0.183825;
		h = 0.104575;
		color[] = {0.878400, 0.847100, 0.651000, 1.000000};
		color2[] = {0.950000, 0.950000, 0.950000, 1};
		colorBackground[] = {1, 1, 1, 1};
		colorbackground2[] = {1, 1, 1, 0.400000};
		colorDisabled[] = {1, 1, 1, 0.250000};
		periodFocus = 1.200000;
		periodOver = 0.800000;

		class HitZone
		{
			left = 0.004000;
			top = 0.029000;
			right = 0.004000;
			bottom = 0.029000;
		};

		class ShortcutPos
		{
			left = 0.014500;
			top = 0.026000;
			w = 0.039216;
			h = 0.052288;
		};

		class TextPos
		{
			left = 0.050000;
			top = 0.034000;
			right = 0.005000;
			bottom = 0.005000;
		};
		animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
		animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
		animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
		animTextureFocused = "\ca\ui\data\ui_button_focus_ca.paa";
		animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
		animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
		textureNoShortcut = "";
		period = 0.400000;
		font = "Zeppelin32";
		size = 0.039210;
		sizeEx = 0.039210;
		text = "";
		soundEnter[] = {"\ca\ui\data\sound\onover", 0.090000, 1};
		soundPush[] = {"\ca\ui\data\sound\new1", 0.000000, 0};
		soundClick[] = {"\ca\ui\data\sound\onclick", 0.070000, 1};
		soundEscape[] = {"\ca\ui\data\sound\onescape", 0.090000, 1};
		action = "";

		class Attributes
		{
			font = "Zeppelin32";
			color = "#E5E5E5";
			align = "left";
			shadow = "true";
		};

		class AttributesImage
		{
			font = "Zeppelin32";
			color = "#E5E5E5";
			align = "left";
		};
		
	};
	
	//Combo box Base Class
	class FDKTZ_Airplane_Extras_Menu_Combo_Box
	{
		idc = -1;
		type = CT_COMBO;
		style = ST_LEFT;
		x = 0;
		y = 0;
		w = 0.120000;
		h = 0.035000;
		shadow = 0;
		colorSelect[] = {0.023529, 0, 0.031372, 1};
		colorText[] = {0.023529, 0, 0.031372, 1};
		colorBackground[] = {0.950000, 0.950000, 0.950000, 1};
		colorSelectBackground[] = {0.878400, 0.847100, 0.651000, 1.000000};
		colorScrollbar[] = {0.023529, 0, 0.031372, 1};
		arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
		wholeHeight = 0.450000;
		color[] = {0, 0, 0, 0.600000};
		colorActive[] = {0, 0, 0, 1};
		colorDisabled[] = {0, 0, 0, 0.300000};
		font = "Zeppelin32";
		sizeEx = 0.039210;
		text = "";
		
		soundSelect[] = {"", 0.0, 1};
		soundExpand[] = {"", 0.0, 1};
		soundCollapse[] = {"", 0.0 1};
		
		maxHistoryDelay = 0;

		class ScrollBar {
			color[] = {1, 1, 1, 0.600000};
			colorActive[] = {1, 1, 1, 1};
			colorDisabled[] = {1, 1, 1, 0.300000};
			thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
			arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
			arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
			border = "\ca\ui\data\ui_border_scroll_ca.paa";
		};
	};
	
	//Background Box
	class FDKTZ_Airplane_Extras_Menu_Background: FDKTZ_Airplane_Extras_Menu_Text
	{
		idc = -1;
		style = ST_PICTURE;
		moving = true;
		text = "\ca\ui\data\ui_background_controlers_ca.paa";
		w = 0.9;
		h = 0.8;		
	};
		
	//Title Text
	class FDKTZ_Airplane_Extras_Menu_Title: FDKTZ_Airplane_Extras_Menu_Text
	{
		text = "Airplane Extras";
		y = 0.145;
	};
	
	//Close Button
	class FDKTZ_Airplane_Extras_Menu_Close_Button: FDKTZ_Airplane_Extras_Menu_Button
	{
		text = "Close";
		action = "closeDialog 0;";
		w = 0.16;
		x = 0.60;
		y = 0.785;
	};
	
	//Heli Select label
	class FDKTZ_Airplane_Extras_Menu_Select_Heli_Text: FDKTZ_Airplane_Extras_Menu_Text
	{
		idc = -1;
		x = 0.3;
		y = 0.145;
		text = "Select Airplane:";
		
	};
	
	//Heli Select Combo Box
	class FDKTZ_Airplane_Extras_Menu_Select_Airplane: FDKTZ_Airplane_Extras_Menu_Combo_Box
	{
		idc = FDKTZ_Airplane_Extras_Dialog_Select_Airplane;
		x = 0.515;
		y = 0.138;
		w = 0.25;
		//Detect when the selection has been changed
		//onLBSelChanged = "execVM 'heli_extras\airplane_type.sqf'";
	};
	
	//Choose Airstrip Label
	class FDKTZ_Airplane_Extras_Menu_Choose_Airstrip_Label: FDKTZ_Airplane_Extras_Menu_Text
	{
		idc = -1;
		text = "Choose Airstrip:";
		x = 0.1;
		y = 0.18;
	};
	
	//Choose Airstrip Combo Box
	class FDKTZ_Airplane_Extras_Menu_Choose_Airstrip_Combobox: FDKTZ_Airplane_Extras_Menu_Combo_Box
	{
		idc = FDKTZ_Airplane_Extras_Dialog_Select_Airstrip;
		x = 0.3;
		y = 0.18;
		w = 0.3;
	};
	
	//Landing Options Label
	class FDKTZ_Airplane_Extras_Menu_Landing_Options_Label: FDKTZ_Airplane_Extras_Menu_Text
	{
		idc = -1;
		text = "Landing Options:";
		x = 0.1;
		y = 0.24;
	};
	
	//Land Button
	class FDKTZ_Airplane_Extras_Menu_Land: FDKTZ_Airplane_Extras_Menu_Button
	{
		idc = -1; //Change Later
		text = "Land";
		action = "execVM 'heli_extras\airplane\airplane_land.sqf'";
		x = 0.1;
		y = 0.25;
		w = 0.2;
	};
	
	//Height Options Label
	class FDKTZ_Airplane_Extras_Menu_Height_Select_Label: FDKTZ_Airplane_Extras_Menu_Text
	{
		idc = -1;
		text = "Height Options:";
		x = 0.37;
		y = 0.24;
	};
	
	//Fly in height 150 - Standard AI flying height for airplanes
	class FDKTZ_Airplane_Extras_Menu_Height_150_Button: FDKTZ_Airplane_Extras_Menu_Button
	{
		idc = FDKTZ_Airplane_Extras_Dialog_Height_150;
		text = "150 Meters";
		action = "execVM 'heli_extras\airplane\airplane_flyheight_150.sqf'";
		x = 0.37;
		y = 0.25;
		w = 0.2;
	};
	
	//Fly in height 500 - Useful for paradrops
	class FDKTZ_Airplane_Extras_Menu_Height_500_Button: FDKTZ_Airplane_Extras_Menu_Button
	{
		idc = FDKTZ_Airplane_Extras_Dialog_Height_500;
		text = "500 Meters";
		action = "execVM 'heli_extras\airplane\airplane_flyheight_500.sqf'";
		x = 0.37;
		y = 0.30;
		w = 0.2;
	};
	
	//Fly in height 1000 - Useful for HALO
	class FDKTZ_Airplane_Extras_Menu_Height_1000_Button: FDKTZ_Airplane_Extras_Menu_Button
	{
		idc = FDKTZ_Airplane_Extras_Dialog_Height_1000;
		text = "1000 Meters";
		action = "execVM 'heli_extras\airplane\airplane_flyheight_1000.sqf'";
		x = 0.57;
		y = 0.25;
		w = 0.2;
	};
	/*
	//Fly in height 100m - High Flying
	class FDKTZ_Heli_Extras_Menu_Height_100: FDKTZ_Airplane_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_Height_100;
		text = "100 Meters";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_flyheight_100.sqf'";
		x = 0.57;
		y = 0.30;
		w = 0.2;
	};
	*/
	//Other Options Label
	class FDKTZ_Airplane_Extras_Menu_Other_Options_Label: FDKTZ_Airplane_Extras_Menu_Text
	{
		idc = -1;
		text = "Other Options:";
		x = 0.1;
		y = 0.39;
	};
	
	//Paradrop
	class FDKTZ_Airplane_Extras_Menu_Paradrop_Button: FDKTZ_Airplane_Extras_Menu_Button
	{
		idc = FDKTZ_Airplane_Extras_Dialog_Paradrop;
		text = "Paradrop";
		action = "execVM 'heli_extras\airplane\airplane_paradrop.sqf';";
		x = 0.1;
		y = 0.4;
		w = 0.2;
	};
	
	//HALO
	class FDKTZ_Airplane_Extras_Menu_HALO_Button: FDKTZ_Airplane_Extras_Menu_Button
	{
		idc = FDKTZ_Airplane_Extras_Dialog_HALO;
		text = "HALO";
		action = "execVM 'heli_extras\airplane\airplane_halo.sqf';";
		x = 0.1;
		y = 0.45;
		w = 0.2;
	};
	
	//Map Control
	class FDKTZ_Airplane_Extras_Menu_Map
	{
		access = 0; 
		idc = -1; 
		type = CT_MAP_MAIN; 
		style = ST_PICTURE; 
		
		x = 0.364; 
		y = 0.39; 
		w = 0.40; 
		h = 0.40; 
		
		colorBackground[] = {1.00, 1.00, 1.00, 1.00}; 
		colorText[] = {0.00, 0.00, 0.00, 1.00}; 
		colorSea[] = {0.56, 0.80, 0.98, 0.50}; 
		colorForest[] = {0.60, 0.80, 0.20, 0.50}; 
		colorRocks[] = {0.50, 0.50, 0.50, 0.50}; 
		colorCountlines[] = {0.65, 0.45, 0.27, 0.50}; 
		colorMainCountlines[] = {0.65, 0.45, 0.27, 1.00}; 
		colorCountlinesWater[] = {0.00, 0.53, 1.00, 0.50}; 
		colorMainCountlinesWater[] = {0.00, 0.53, 1.00, 1.00}; 
		colorForestBorder[] = {0.40, 0.80, 0.00, 1.00}; 
		colorRocksBorder[] = {0.50, 0.50, 0.50, 1.00}; 
		colorPowerLines[] = {0.00, 0.00, 0.00, 1.00}; 
		colorRailWay[] = {0.800000, 0.200000, 0, 1};
		colorNames[] = {0.00, 0.00, 0.00, 1.00}; 
		colorInactive[] = {1.00, 1.00, 1.00, 0.50}; 
		colorLevels[] = {0.00, 0.00, 0.00, 1.00};
		colorOutside[] = {0, 0, 0, 1};
		maxSatelliteAlpha = 0.000000;
		alphaFadeStartScale = 0.050000;
		alphaFadeEndScale = 0.150000;
		
		font = "TahomaB"; 
		sizeEx = 0.040000; 
		
		fontLabel = "TahomaB"; 
		sizeExLabel = 0.02; 
		fontGrid = "TahomaB"; 
		sizeExGrid = 0.02; 
		fontUnits = "TahomaB"; 
		sizeExUnits = 0.02; 
		fontNames = "TahomaB"; 
		sizeExNames = 0.02; 
		fontInfo = "TahomaB"; 
		sizeExInfo = 0.02; 
		fontLevel = "TahomaB"; 
		sizeExLevel = 0.02; 
		
		ptsPerSquareSea = 6; 
		ptsPerSquareTxt = 8; 
		ptsPerSquareCLn = 8; 
		ptsPerSquareExp = 8; 
		ptsPerSquareCost = 8; 
		ptsPerSquareFor = "4.0f"; 
		ptsPerSquareForEdge = "10.0f"; 
		ptsPerSquareRoad = 2; 
		ptsPerSquareObj = 10; 
		
		text = "\ca\ui\data\map_background2_co.paa"; 
		showCountourInterval=2; 
		scaleDefault = 0.1; 
		onMouseButtonClick = ""; 
		onMouseButtonDblClick = ""; 
		
		class task 
		{
			icon = "\ca\ui\data\ui_taskstate_current_CA.paa";
			iconCreated = "\ca\ui\data\ui_taskstate_new_CA.paa";
			iconCanceled = "#(argb,8,8,3)color(0,0,0,0)";
			iconDone = "\ca\ui\data\ui_taskstate_done_CA.paa";
			iconFailed = "\ca\ui\data\ui_taskstate_failed_CA.paa";
			color[] = {0.863000, 0.584000, 0.000000, 1};
			colorCreated[] = {0.950000, 0.950000, 0.950000, 1};
			colorCanceled[] = {0.606000, 0.606000, 0.606000, 1};
			colorDone[] = {0.424000, 0.651000, 0.247000, 1};
			colorFailed[] = {0.706000, 0.074500, 0.019600, 1};
			size = 10;
			coefMin = 1;
			coefMax = 4;
			importance = 1;
		};
		
		class CustomMark 
		{
			icon = "\ca\ui\data\map_waypoint_ca.paa";
			color[] = {0, 0, 1, 1};
			size = 18;
			importance = 1;
			coefMin = 1;
			coefMax = 1;
		};
		
		class ActiveMarker 
		{ 
			color[] = {0.30, 0.10, 0.90, 1.00}; 
			size = 50; 
		}; 
		
		class Bunker 
		{ 
			icon = "\ca\ui\data\map_bunker_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 14; 
			importance = "1.5 * 14 * 0.05"; 
			coefMin = 0.25; 
			coefMax = 4.00; 
		}; 
		
		class Bush 
		{ 
			icon = "\ca\ui\data\map_bush_ca.paa";
			color[] = {0.55, 0.64, 0.43, 1.00};
			size = 14;
			importance = "0.2 * 14 * 0.05";
			coefMin = 0.25;
			coefMax = 4.00;
		}; 
		
		class BusStop 
		{ 
			icon = "\ca\ui\data\map_busstop_ca.paa";
			color[] = {0.00, 0.00, 1.00, 1.00};
			size = 10;
			importance = "1 * 10 * 0.05";
			coefMin = 0.25;
			coefMax = 4.00;
		}; 
		
		class Command 
		{ 
			icon = "#(argb,8,8,3)color(1,1,1,1)";
			color[] = {0.00, 0.00, 0.00, 1.00};
			size = 18;
			importance = 1.00;
			coefMin = 1.00;
			coefMax = 1.00;
		};
		
		class Cross 
		{ 
			icon = "\ca\ui\data\map_cross_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 16; 
			importance = "0.7 * 16 * 0.05"; 
			coefMin = 0.25; 
			coefMax = 4.00; 
		}; 
		
		class Fortress 
		{ 
			icon = "\ca\ui\data\map_bunker_ca.paa";
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 16; 
			importance = "2 * 16 * 0.05"; 
			coefMin = 0.25; 
			coefMax = 4.00; 
		}; 
		
		class Fuelstation 
		{ 
			icon = "\ca\ui\data\map_fuelstation_ca.paa"; 
			color[] = {1.00, 0.35, 0.35, 1.00}; 
			size = 16; 
			importance = "2 * 16 * 0.05"; 
			coefMin = 0.75; 
			coefMax = 4.00; 
		}; 
		
		class Fountain 
		{ 
			icon = "\ca\ui\data\map_fountain_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 12; 
			importance = "1 * 12 * 0.05"; 
			coefMin = 0.25; 
			coefMax = 4.00; 
		}; 
		
		class Hospital 
		{ 
			icon = "\ca\ui\data\map_hospital_ca.paa"; 
			color[] = {0.78, 0.00, 0.05, 1.00}; 
			size = 16; 
			importance = "2 * 16 * 0.05"; 
			coefMin = 0.50; 
			coefMax = 4; 
		}; 
		
		class Chapel 
		{ 
			icon = "\ca\ui\data\map_chapel_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 16; 
			importance = "1 * 16 * 0.05"; 
			coefMin = 0.90; 
			coefMax = 4.00; 
		}; 
		
		class Church 
		{ 
			icon = "\ca\ui\data\map_church_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 16; 
			importance = "2 * 16 * 0.05"; 
			coefMin = 0.90; 
			coefMax = 4.00; 
		}; 
		
		class Lighthouse 
		{ 
			icon = "\ca\ui\data\map_lighthouse_ca.paa"; 
			color[] = {0.78, 0.00, 0.05, 1.00}; 
			size = 20; 
			importance = "3 * 16 * 0.05"; 
			coefMin = 0.90; 
			coefMax = 4.00; 
		}; 
		
		class Quay 
		{ 
			icon = "\ca\ui\data\map_quay_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 16; 
			importance = "2 * 16 * 0.05"; 
			coefMin = 0.50; 
			coefMax = 4.00; 
		}; 
		
		class Rock
		{ 
			icon = "\ca\ui\data\map_rock_ca.paa"; 
			color[] = {0.35, 0.35, 0.35, 1.00}; 
			size = 12; 
			importance = "0.5 * 12 * 0.05"; 
			coefMin = 0.25; 
			coefMax = 4.00; 
		}; 
		
		class Ruin 
		{ 
			icon = "\ca\ui\data\map_ruin_ca.paa"; 
			color[] = {0.78, 0.00, 0.05, 1.00}; 
			size = 16; 
			importance = "1.2 * 16 * 0.05"; 
			coefMin = 1.00; 
			coefMax = 4.00; 
		}; 
		
		class Stack 
		{ 
			icon = "\ca\ui\data\map_stack_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 20; 
			importance = "2 * 16 * 0.05"; 
			coefMin = 0.90; 
			coefMax = 4.00; 
		}; 
		
		class Tree 
		{ 
			icon = "\ca\ui\data\map_tree_ca.paa"; 
			color[] = {0.55, 0.64, 0.43, 1.00}; 
			size = 12; 
			importance = "0.9 * 16 * 0.05"; 
			coefMin = 0.25; 
			coefMax = 4.00; 
		}; 
		
		class SmallTree 
		{ 
			icon = "\ca\ui\data\map_smalltree_ca.paa"; 
			color[] = {0.55, 0.64, 0.43, 1.00}; 
			size = 12; 
			importance = "0.6 * 12 * 0.05"; 
			coefMin = 0.25; 
			coefMax = 4.00; 
		}; 
		
		class Tourism 
		{ 
			icon = "\ca\ui\data\map_tourism_ca.paa"; 
			color[] = {0.78, 0.00, 0.05, 1.00}; 
			size = 16; 
			importance = "1 * 16 * 0.05"; 
			coefMin = 0.70; 
			coefMax = 4.00; 
		}; 
		
		class Transmitter 
		{ 
			icon = "\ca\ui\data\map_transmitter_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 20; 
			importance = "2 * 16 * 0.05"; 
			coefMin = 0.90; 
			coefMax = 4.00; 
		}; 
		
		class ViewTower 
		{ 
			icon = "\ca\ui\data\map_viewtower_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 16; 
			importance = "2.5 * 16 * 0.05"; 
			coefMin = 0.50; 
			coefMax = 4.00; 
		}; 
		
		class Watertower 
		{ 
			icon = "\ca\ui\data\map_watertower_ca.paa"; 
			color[] = {0.00, 0.35, 0.70, 1.00}; 
			size = 32; 
			importance = "1.2 * 16 * 0.05"; 
			coefMin = 0.90; 
			coefMax = 4.00; 
		}; 
		
		class Waypoint 
		{ 
			icon = "\ca\ui\data\map_waypoint_ca.paa"; 
			color[] = {0.00, 0.00, 0.00, 1.00}; 
			size = 24; 
			importance = 1.00; 
			coefMin = 1.00; 
			coefMax = 1.00; 
		}; 
		
		class WaypointCompleted 
		{ 
			icon = "\ca\ui\data\map_waypoint_completed_ca.paa"; 
			color[] = {0.00, 0.00, 0.00, 1.00}; 
			size = 24; 
			importance = 1.00; 
			coefMin = 1.00; 
			coefMax = 1.00; 
		};
	};
};