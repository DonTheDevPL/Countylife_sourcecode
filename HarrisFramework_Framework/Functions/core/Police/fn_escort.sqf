/*
	Author: Ben Harris
	Description: Restrains player
*/
HRP_fnc_escort = {
	params ["_ct"];
	
	[] remoteExecCall ["HRP_fnc_escorted", cursorObject];
	_ct attachTo [player, [0.5, 0, 0]];
};