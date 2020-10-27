/*
	Author: Ben Harris
	Description: Lockpick Vehicle
*/

HRP_fnc_lockPickVehicle = {
	params["_target"];


	_handle = [20] spawn HRP_fnc_doAction;
	waitUntil {isNull _handle};

	_robbed = round (random 5);
	if (_robbed == 1) then {
		_target setVariable ["locked", false, true];
		_target lock 0;
	};
};