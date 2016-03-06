// Name:		tn_button_control.sqf
// Developer:	Tyler
// Date:		1/5/2012
// Usage:		Enables or Disables Buttons

//[ButtonIDC,(enable or disable)] call TN_Button_Control;

//init private variables
private
[
	"_buttonIDC",
	"_active"
];

_buttonIDC = _this select 0;
_active = _this select 1;

//Check the _active variable to find if you are enabling or disabling a button
if (_active == "enable") then
{
	//we are activating a button
	ctrlEnable [_buttonIDC, true];
};

if (_active == "disable") then
{
	//we are disabling a button
	ctrlEnable [_buttonIDC, false];
};
