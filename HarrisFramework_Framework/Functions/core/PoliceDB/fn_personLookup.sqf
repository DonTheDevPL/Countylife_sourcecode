/*
	Author: Ben Harris
	Description: Looks up a person in the DB
*/

HRP_fnc_personLookup = {
	_Name = ctrlText 1400;
	[_Name, player] remoteExecCall ["Server_fnc_personLookup", 2];
};