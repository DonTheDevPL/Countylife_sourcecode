/*
	Author: Ben Harris
	Description: Drops your pot
*/

HRP_fnc_dropPot = {
	_pot = player getVariable "carryingPot";

	_pot setVariable ["drugPot", true, true];

	detach _pot;

	HRP_carryingPot = false;

	player setVariable ["carryingPot", nil, true];
};