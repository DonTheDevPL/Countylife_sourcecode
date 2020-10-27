/*
	Author: Ben Harris
	Description: Grabs Cash off Dead Bodies
*/

HRP_fnc_grabDeadCash = {
	params["_ct"];

	_cash = _ct getVariable "cash";

	[_cash] call HRP_fnc_addCash;

	[] remoteExecCall ["HRP_fnc_resetCash", _ct];
};
