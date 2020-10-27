/*
	Author: Ben Harris
	Description: Initialises Houses for Player
*/

HRP_fnc_initHouseLocal = {
	[player] remoteExecCall ["Server_fnc_LoadHouseLocal", 2];
};