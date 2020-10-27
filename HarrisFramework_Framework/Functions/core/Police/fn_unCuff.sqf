/*
Author: Ben Harris
Description: Unrestrains Target
*/

HRP_fnc_unCuff = {
	params ["_ct"];

	_ct setVariable ["cuffed", false, true];

	[player, "handcuffs"] remoteExecCall ["HRP_fnc_playSound", 0];
	remoteExecCall ["HRP_fnc_unCuffTarget", _ct];
};
