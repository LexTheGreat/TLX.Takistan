// Name:		button_check.sqf
// Developer:	Tyler
// Date:		1/5/2012
// Usage:		Checks the state of buttons

//[ButtonIDC] call Button_Check;

//init private variables
private
[
	"_buttonIDC",
	"_check"
];

//get the passed information
_buttonIDC = _this select 0;

//Run the check

_check = ctrlEnabled _buttonIDC;

//Return the checked value
_check