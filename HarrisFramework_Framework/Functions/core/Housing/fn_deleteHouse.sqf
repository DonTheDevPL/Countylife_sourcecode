/*
	Author: Ben Harris
	Description: Deletes House pre-Query Function
*/

HRP_fnc_deleteHouse = {
	params ["_ct"];
	_pos = position _ct;
	HRP_posstr = str _pos;

	_test = HRP_Houses find _ct;
	HRP_Houses deleteAt _test;

	_ct setVariable ["Purchased",nil, true];
	_ct setVariable ["OwnerUID",nil, true];
	_ct setVariable ["Owner",nil, true];
	
	[HRP_posstr] remoteExecCall ["Server_fnc_deleteHouse", 2];
};