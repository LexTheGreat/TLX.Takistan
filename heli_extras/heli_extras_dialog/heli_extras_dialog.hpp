// Name:		heli_extras_dialog.hpp
// Developer:	Tyler
// Date:		1/1/2011
// Usage:		Creates the menu dialog for the heli extras menu

#include "heli_extras_dialog_constants.hpp"

class FDKTZ_Heli_Extras_Menu_Dialog
{
	idd = FDKTZ_Heli_Extras_Dialog;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "execVM 'heli_extras\get_helis_in_squad.sqf';execVM 'heli_extras\heli_lock.sqf';";
	controlsBackground[] =
	{
		FDKTZ_Heli_Extras_Menu_Background
	};
	objects[] = 
	{
	
	};
	controls[] =
	{
		FDKTZ_Heli_Extras_Menu_Title,
		FDKTZ_Heli_Extras_Menu_Close_Button,
		FDKTZ_Heli_Extras_Menu_Designate_LZ,
		FDKTZ_Heli_Extras_Menu_Delete_LZ,
		FDKTZ_Heli_Extras_Menu_Select_Heli_Text,
		FDKTZ_Heli_Extras_Menu_Select_Heli,
		FDKTZ_Heli_Extras_Menu_Common_Label,
		FDKTZ_Heli_Extras_Menu_Start_Engine,
		FDKTZ_Heli_Extras_Menu_Dust_Off,
		FDKTZ_Heli_Extras_Menu_Landing_Options_Label,
		FDKTZ_Heli_Extras_Menu_Land,
		FDKTZ_Heli_Extras_Menu_Combat_Landing,
		FDKTZ_Heli_Extras_Menu_Combat_Pickup,
		FDKTZ_Heli_Extras_Menu_Abort_Landing,
		FDKTZ_Heli_Extras_Menu_Height_Adjustment_Label,
		FDKTZ_Heli_Extras_Menu_Set_Height_Button,
		FDKTZ_Heli_Extras_Menu_Height_Slider,
		FDKTZ_Heli_Extras_Menu_Height_Textbox,
		FDKTZ_Heli_Extras_Menu_Other_Options_Label,
		FDKTZ_Heli_Extras_Menu_AI_Fastrope,
		FDKTZ_Heli_Extras_Menu_AI_Slingload,
		FDKTZ_Heli_Extras_Menu_AI_Slingload_Detach,
		FDKTZ_Heli_Extras_Menu_AI_Options_Label,
		FDKTZ_Heli_Extras_Menu_Disable_AI_Button,
		FDKTZ_Heli_Extras_Menu_Enable_AI_Button,
		FDKTZ_Heli_Extras_Menu_Cancel_Orders_Button,
		FDKTZ_Heli_Extras_Menu_Map
	};
	
	//Text-Base Class
	class FDKTZ_Heli_Extras_Menu_Text
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
	class FDKTZ_Heli_Extras_Menu_Button
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
	class FDKTZ_Heli_Extras_Menu_Combo_Box
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
	
	//Slider Base
	class FDKTZ_Heli_Extras_Menu_Slider_Base
	{
		idc = -1;
		type = CT_SLIDER;
		style = SL_HORZ;
		color[] = {1, 1, 1, 1};
		coloractive[] = {0, 0, 1, 1};
		//Slider position changed eventhandler
		onSliderPosChanged = "";
	};
	
	//Text Box Base
	class FDKTZ_Heli_Extras_Menu_Text_Box_Base
	{
		idc = -1;
		type = CT_EDIT;
		style = ST_LEFT;
		sizeEx = 0.04;
		font = "Zeppelin32";
		text = "";
		colorText[] = {1, 1, 1, 1};
		autocomplete = false;
		colorSelection[] = {0, 0, 0, 1};
	};
	
	//Background Box
	class FDKTZ_Heli_Extras_Menu_Background: FDKTZ_Heli_Extras_Menu_Text
	{
		idc = -1;
		style = ST_PICTURE;
		moving = true;
		text = "\ca\ui\data\ui_background_controlers_ca.paa";
		w = 1.5;
		h = 0.8;		
	};
		
	//Title Text
	class FDKTZ_Heli_Extras_Menu_Title: FDKTZ_Heli_Extras_Menu_Text
	{
		text = "Heli Extras";
		y = 0.145;
	};
	
	//Close Button
	class FDKTZ_Heli_Extras_Menu_Close_Button: FDKTZ_Heli_Extras_Menu_Button
	{
		text = "Close";
		action = "closeDialog 0;";
		w = 0.16;
		x = 1.0;
		y = 0.785;
	};
	
	//Designate LZ
	class FDKTZ_Heli_Extras_Menu_Designate_LZ: FDKTZ_Heli_Extras_Menu_Button
	{
		text = "Designate LZ";
		action = "execVM 'heli_extras\helicopter\create_LZ_heli.sqf';";
		w = 0.22;
		x = 0.1;
		y = 0.155;
	};
	
	//Delete LZ
	class FDKTZ_Heli_Extras_Menu_Delete_LZ: FDKTZ_Heli_Extras_Menu_Button
	{
		text = "Delete LZ";
		action = "execVM 'heli_extras\helicopter\delete_LZ_heli.sqf';";
		w = 0.20;
		x = 0.35;
		y = 0.155;
	};
	
	//Heli Select label
	class FDKTZ_Heli_Extras_Menu_Select_Heli_Text: FDKTZ_Heli_Extras_Menu_Text
	{
		idc = -1;
		x = 0.38;
		y = 0.145;
		text = "Select Heli:";
		
	};
	
	//Heli Select Combo Box
	class FDKTZ_Heli_Extras_Menu_Select_Heli: FDKTZ_Heli_Extras_Menu_Combo_Box
	{
		idc = FDKTZ_Heli_Extras_Dialog_Select_Heli;
		x = 0.515;
		y = 0.138;
		w = 0.25;
		//Detect when the selection has been changed
		onLBSelChanged = "execVM 'heli_extras\heli_type.sqf'";
	};
	
	//Common Action Text Label
	class FDKTZ_Heli_Extras_Menu_Common_Label: FDKTZ_Heli_Extras_Menu_Text
	{
		idc = -1;
		text = "Common Actions:";
		x = 0.1;
		y = 0.24;
	};
	
	//Start Engine Button
	class FDKTZ_Heli_Extras_Menu_Start_Engine: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_Start_Engine;
		text = "Start Engine";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_start_engine.sqf'";
		x = 0.1;
		y = 0.25;
		w = 0.25;
	};
	
	//Dust-off Button
	class FDKTZ_Heli_Extras_Menu_Dust_Off: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_Dust_Off;
		text = "Dust Off";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_dust_off.sqf'";
		x = 0.1;
		y = 0.3;
		w = 0.2;
	};
	
	//Landing Options Label
	class FDKTZ_Heli_Extras_Menu_Landing_Options_Label: FDKTZ_Heli_Extras_Menu_Text
	{
		idc = -1;
		text = "Landing Options:";
		x = 0.1;
		y = 0.39;
	};
	
	//Land Button
	class FDKTZ_Heli_Extras_Menu_Land: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_Land;
		text = "Land";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_land.sqf'";
		x = 0.1;
		y = 0.4;
		w = 0.2;
	};
	
	//Combat Insertion Button
	class FDKTZ_Heli_Extras_Menu_Combat_Landing: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_Combat_Insertion;
		text = "Combat Insertion";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_getout.sqf'";
		x = 0.1;
		y = 0.45;
		w = 0.26;
	};
	
	//Combat Pickup button - Hover Landing in some cases
	class FDKTZ_Heli_Extras_Menu_Combat_Pickup: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_Combat_Pickup;
		text = "Combat Pickup";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_getin.sqf'";
		x = 0.1;
		y = 0.50;
		w = 0.26;
	};
	
	//Abort Landing button
	class FDKTZ_Heli_Extras_Menu_Abort_Landing: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_Abort_Landing;
		text = "Abort Landing";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_abort_landing.sqf'";
		x = 0.1;
		y = 0.55;
		w = 0.25;
	};
	
	//Height Adjustment Label
	class FDKTZ_Heli_Extras_Menu_Height_Adjustment_Label: FDKTZ_Heli_Extras_Menu_Text
	{
		idc = -1;
		text = "Height Options:";
		x = 0.37;
		y = 0.24;
	};
	
	//Set Height Button
	class FDKTZ_Heli_Extras_Menu_Set_Height_Button: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_Set_Height_Button;
		text = "Set Height";
		action = "[] call FDKTZ_Set_Height;";
		x = 0.55;
		y = 0.2;
		w = 0.2;
	};
	
	//New Slider Height Adjustment
	class FDKTZ_Heli_Extras_Menu_Height_Slider: FDKTZ_Heli_Extras_Menu_Slider_Base
	{
		idc = FDKTZ_Heli_Extras_Dialog_Height_Slider;
		x = 0.37;
		y = 0.30;
		w = 0.2;
		h = 0.05;
		onSliderPosChanged = "[] call FDKTZ_Update_textbox;";
	};
	
	//Height Textbox
	class FDKTZ_Heli_Extras_Menu_Height_Textbox: FDKTZ_Heli_Extras_Menu_Text_Box_Base
	{
		idc = FDKTZ_Heli_Extras_Dialog_Height_Textbox;
		x = 0.6;
		y = 0.30;
		w = 0.1;
		h = 0.05;
	};
	
	//Special Options Label
	class FDKTZ_Heli_Extras_Menu_Other_Options_Label: FDKTZ_Heli_Extras_Menu_Text
	{
		idc = -1;
		text = "Other Options:";
		x = 0.1;
		y = 0.63;
	};
	
	//AI Fastrope
	class FDKTZ_Heli_Extras_Menu_AI_Fastrope: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_AI_Fastrope;
		text = "Fastrope (AI)";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_ai_fastrope.sqf'";
		x = 0.1;
		y = 0.63;
		w = 0.25;
	};
	
	//Sling Load Vehicles and Items - NEW FEATURE
	class FDKTZ_Heli_Extras_Menu_AI_Slingload: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_AI_Slingload;
		text = "SlingLoad Attach";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_AI_attach_cargo.sqf'";
		x = 0.1;
		y = 0.68;
		w = 0.25;
	};
	
	//Sling Load Detach
	class FDKTZ_Heli_Extras_Menu_AI_Slingload_Detach: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = FDKTZ_Heli_Extras_Dialog_AI_Slingload_detach;
		text = "SlingLoad Detach";
		action = "execVM 'heli_extras\helicopter\heli_scripts\heli_options\heli_AI_detach_cargo.sqf'";
		x = 0.1;
		y = 0.73;
		w = 0.25;
	};
	
	//AI Options Label
	class FDKTZ_Heli_Extras_Menu_AI_Options_Label: FDKTZ_Heli_Extras_Menu_Text
	{
		idc = -1;
		text = "AI Options:";
		x = 0.8;
		y = 0.19;
	};
	
	//Disable AI
	class FDKTZ_Heli_Extras_Menu_Disable_AI_Button: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = -1;
		text = "Disable AI";
		action = "[] call FDKTZ_Disable_AI";
		x = 0.8;
		y = 0.2;
		w = 0.2;
	};
	
	//Enable AI
	class FDKTZ_Heli_Extras_Menu_Enable_AI_Button: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = -1;
		text = "Enable AI";
		action = "[] call FDKTZ_Enable_AI";
		x = 0.8;
		y = 0.25;
		w = 0.2;
	};
	
	//Cancels all orders given
	class FDKTZ_Heli_Extras_Menu_Cancel_Orders_Button: FDKTZ_Heli_Extras_Menu_Button
	{
		idc = -1;
		text = "Cancel Orders";
		action = "FDKTZ_Heli_Stop_Orders = true;";
		x = 0.8;
		y = 0.3;
		w = 0.28;
	};
	
	//Map Control
	class FDKTZ_Heli_Extras_Menu_Map
	{
		access = 0; 
		idc = -1; 
		type = CT_MAP_MAIN; 
		style = ST_PICTURE; 
		
		x = 0.364; 
		y = 0.39; 
		w = 0.80; 
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