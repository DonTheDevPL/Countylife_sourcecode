/*
	Author: Ben Harris
	Description: Switches Anonymous Calling
*/


HRP_fnc_anonSwitch = {
	params["_type"];

	if (_type) then {
		player setVariable ["anonymousCalling", true];
		ctrlShow [51412, true];
		ctrlShow [123455, false];
		ctrlShow [1608, false];
		ctrlShow [1610, true]
	} else {
		player setVariable ["anonymousCalling", false];
		ctrlShow [51412, false];
		ctrlShow [123455, true];
		ctrlShow [1608, true];
		ctrlShow [1610, false];
	};
};