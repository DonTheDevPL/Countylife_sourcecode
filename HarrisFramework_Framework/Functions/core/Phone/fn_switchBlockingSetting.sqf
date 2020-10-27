/*
	Author: Ben Harris
	Description: Switches the Blocking Setting for calls
*/

HRP_fnc_switchBlockingSetting = {
	params["_type"];

	if (_type) then {
		player setVariable ["blockedCall", true];
		ctrlShow [16124, true];
		ctrlShow [2343, false];
		ctrlShow [1609, false];
		ctrlShow [1611, true];
	} else {
		player setVariable ["blockedCall", false];
		ctrlShow [16124, false];
		ctrlShow [2343, true];
		ctrlShow [1609, true];
		ctrlShow [1611, false];
	};
};