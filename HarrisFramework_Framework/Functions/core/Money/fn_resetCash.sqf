/*
	Author: Ben Harris
	Description: Sets cash to 0
*/

HRP_fnc_resetCash = {
	_cash = player getVariable "cash";

	[_cash] call HRP_fnc_removeCash;
};