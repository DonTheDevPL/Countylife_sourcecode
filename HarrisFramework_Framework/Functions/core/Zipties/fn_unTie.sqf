/*
Author: Ben Harris
Description: Zdejmuje trytytki
*/

HRP_fnc_unTie = {
	params ["_ct"];

	_ct setVariable ["tied", false, true];

	[player, "handcuffs"] remoteExecCall ["HRP_fnc_playSound", 0];
	remoteExecCall ["HRP_fnc_unTieTarget", _ct];
};
