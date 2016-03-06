class civmenu_opf {
	idd = -1;
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};
	objects[] = { };
	controls[] = {
		button_disarm, 
		button_drugs, 
		arrest_text, 
		arrest_slider,
		bail_text,
		bail_slider,
		button_arrest_opf,
		button_restrain_opf,
		ticket_eingabe, 
		button_ticket, 
		cancel, 
		button_heal, 
		button_inventarsearch, 
		dummybutton
	};
	
	onMouseMoving = "sliderSetRange [3, 1, 25]; sliderSetSpeed [3, 1, 5];sliderSetRange [21, 1, 100]; sliderSetSpeed [21, 1, 5];";

	class DLG_BACK1: RscBackground {
		x = 0.40; y = 0.25;
		w = 0.22; h = 0.68;
	};
	
	class background : RscBgRahmen {
		x = 0.40; y = 0.25;
		w = 0.22; h = 0.68;
		text = $STRD_description_civmenu_header;
	};
	
	class button_disarm : RscButton {
		idc = 1;
		x = 0.41; y = 0.28;
		w = 0.20; h = 0.04;
		text = "Disarm";
		action = "[player, civ_player_variable] call interact_disarm; closedialog 0";
	};
	
	class button_drugs : RscButton {
		idc = 2;
		x = 0.41; y = 0.33;
		w = 0.20;h = 0.04;
		text = "Drug Search"; 
		action = "[player, civ_player_variable] call interact_drug_search; closedialog 0";
	};
	
	class arrest_text : RscText {
		idc = 4;
		x = 0.41; y = 0.38;
		w = 0.20; h = 0.04;
		style = ST_CENTER;
		text = "Prison time (min/s)";
	};
	
	class arrest_slider : RscSliderH {
		idc = 3;
		x = 0.41; y = 0.43;
		w = 0.20; h = 0.03;
		onSliderPosChanged = "ctrlSetText [4,  format[""Prison time (%1 min/s)"", (round(_this select 1))]];";
	};
	
	class bail_text : RscText {
		idc = 20;
		x = 0.41; y = 0.48;
		w = 0.20; h = 0.04;
		style = ST_CENTER; 
		text = "Bail amount (%)";
	};
	
	class bail_slider : RscSliderH {
		idc = 21;
		x = 0.41; y = 0.53;
		w = 0.20; h = 0.03;
		onSliderPosChanged = "ctrlSetText [20,  format[""Bail amount (%1 %2)"", (round(_this select 1)), ""%""]];";
	};
	
	class button_arrest_opf : RscButton {
		idc = 5;
		x = 0.41; y = 0.58;
		w = 0.20; h = 0.04;
		text = $STRD_description_civmenu_arrest;
		action = "[player, civ_player_variable, ([(sliderPosition 3)] call parse_number), ([(sliderPosition 21)] call parse_number)] call interact_arrest_player_opf; closedialog 0;";
	};
	
	class button_restrain_opf : RscButton {
		idc = 6;
		x = 0.41; y = 0.63;
		w = 0.20; h = 0.04;
		text = "Restrain/Release"; 
		action = "[player, civ_player_variable] call interact_toggle_restrains_opf; closedialog 0";
	};
	
	class ticket_eingabe : RscEdit {
		idc = 11;
		x = 0.41; y = 0.68;
		w = 0.20; h = 0.03;
		text = "1000";
	};
	
	class button_ticket : RscButton {
		x = 0.41; y = 0.73;
		w = 0.20; h = 0.04;
		text = "Issue Ticket";
		action = "[player, civ_player_variable, ([(ctrlText 11)] call parse_number)] call interact_ticket; closedialog 0";
	};
	
	class cancel : RscButton {
		x = 0.41; y = 0.88;
		w = 0.20; h = 0.04;
		text = $STRD_description_cancel; 
		action = "closedialog 0";
	};
	
	class button_heal : RscButton {
		idc = 13;
		x = 0.41; y = 0.78;
		w = 0.20; h = 0.04;
		text = $STRD_description_civmenu_heal; 
		action = "[player, civ_player_variable] call interact_heal_player; closedialog 0";
	};
	
	class button_inventarsearch : RscButton {
		idc = 14;
		x = 0.41; y = 0.83;
		w = 0.20; h = 0.04;
		text = "Search Person";
		action = "[player, civ_player_variable] call interact_check_inventory; closedialog 0";
	};
	
	class dummybutton_opf : RscDummy {idc = 1006;};
};

