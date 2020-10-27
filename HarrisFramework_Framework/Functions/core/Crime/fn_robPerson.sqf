/*

	Author: Ben Harris
	Description: Allows you to strip someone of their cash
*/

HRP_fnc_robPerson = {
	params["_target"];

	_cash = _target getVariable "cash";

	[_cash] call HRP_fnc_addCash;

	_target setVariable ["cash", 0, true];
	["Robbed!", "You were just robbed!", true] remoteExecCall ["HRP_fnc_notifMP", _target];
};