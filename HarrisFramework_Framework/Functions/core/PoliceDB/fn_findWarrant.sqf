/*
	Author: Ben Harris
	Description: Finds the Warrant from the DB + Search Function
*/

HRP_fnc_findWarrant = {
	_Name = ctrlText 1400;
	[_Name, player] remoteExecCall ["Server_fnc_findWarrant", 2];
};