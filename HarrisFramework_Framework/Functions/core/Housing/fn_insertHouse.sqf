/*
	Author: Ben Harris
	Description: Sends House Information to server to be added to the DB.
*/
HRP_fnc_insertHouse = {
	params ["_ct"];
	test2 = position _ct;
	test3 = str test2;
	_name = name player;
	_name = str _name;
	[test3, player, _name] remoteExecCall ["Server_fnc_insertHouse", 2];
};