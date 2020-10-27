/*
	Author: Ben Harris
	Description: Grab Cash from an ATM (Robbery)
*/

HRP_fnc_stealATMCash = {
	params["_ct"];

	_cash = _ct getVariable "cashToPickup";

	[_cash] call HRP_fnc_addCash;


	_ct setVariable ["cashToPickup", nil, true];
};