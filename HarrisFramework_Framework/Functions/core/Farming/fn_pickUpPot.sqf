/*
	Author: Ben Harris
	Description: Picks up your pot
*/

HRP_fnc_pickUpPot = {
	params["_ct"];

	HRP_carryingPot = true;

	_potDir = getDir _ct;
	_playerDir = getDir player;

	_dir = _potDir - _playerDir;

	_ct attachTo [player];
	_ct setDir _dir;

	player setVariable ["carryingPot", _ct];
};
