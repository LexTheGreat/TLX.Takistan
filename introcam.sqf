//Takistan Occupation Life Script//
//---> Introduction camera on load-in <---//

_label = _this select 0;
introcamload = 1;

if (_label == "text") then 

{

sleep 3;
switch (true) do {
	case (side player == west): {
    playsound "copintro";
  };
  case (side player == east): {
    playsound "opfintro";
  };
  case (side player == resistance): {
    playsound "indintro";
  };
  default {
		playsound "intro";
	};
};
disableUserInput false;
titletext [localize "STRS_anfang_02","plain"];
sleep 8;
titletext [localize "STRS_anfang_03","plain"];
sleep 8;
titletext [localize "STRS_anfang_04","plain"];
sleep 8;
titletext [localize "STRS_anfang_05_civ","plain"];
sleep 8;	
titletext [localize "STRS_anfang_05_cop","plain"];
sleep 8;	
titletext [localize "STRS_anfang_06","plain"];
sleep 8;		
//titletext [localize "STRS_anfang_06","plain"];
sleep 4;

};

if (_label == "camera") then 

{

titlecut [" ","Black out",0];									
//titletext [localize "STRS_load","plain"];				
_camera = "camera" camcreate [(getpos player select 0), (getpos player select 1)+500, 400];												
_camera cameraeffect ["internal", "back"];
sleep 3.8;													
titlecut [" ","Black in", 1];

WaitUntil {camCommitted _camera};
_rolepos = position player;
_roledir = getdir player;
_pos     = [(_rolepos select 0) + (sin _roledir), (_rolepos select 1) + (cos _roledir),(_rolepos select 2)];

_camera camSetTarget _pos;
_camera camsetpos [(getpos player select 0), (getpos player select 1), 1.5];
_camera camSetFOV 0.700;
_camera camCommit 25;

WaitUntil {camCommitted _camera};
//titletext [localize "STRS_intro_06","plain"];

_camera cameraeffect ["terminate","back"];
camDestroy _camera;

//[] execVM "Awesome\Functions\time_functions.sqf";

};

introcamload = 0;