/*
	Author: Ben Harris
	Description: Do Action Timer
*/

HRP_fnc_doAction = {
	false;
	disableSerialization;
	ActionLoading = true;

	params[["_time",0,[0]], "_ct"];
	_sleepTime = _time / 20;

	UI_Loading = true;
	HRP_interrupted = false;

	19 cutRsc ["UI_Loading", "PLAIN"];
	_display = uiNamespace getVariable ["UI_Loading", displayNull];
	_ctrl = _display displayCtrl 1200;
	_ctrl2 = _display displayCtrl 1201;

	_ctrl2 ctrlSetText "\HarrisFramework_Client2\loading\Border.paa";

	for "_i" from 1 to 20 do {
		_ctrl ctrlSetText format["\HarrisFramework_Client2\loading\HRPloading_%1.paa",(_i * 5)];
		sleep _sleepTime;

		if (player distance _ct > 5 || (vehicle player isKindOf "Car")) then { HRP_interrupted = true; };
		if(HRP_interrupted) exitWith { 17 cutText ["", "PLAIN"]; hint "Action Cancelled"; ActionStopped = true; ActionLoading = false; };

	};

	UI_Loading = false;

	19 cutText ["", "PLAIN"];
	true;
};