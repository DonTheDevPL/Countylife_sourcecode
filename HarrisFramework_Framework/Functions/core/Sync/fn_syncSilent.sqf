/*
	Author: Ben Harris
	Description: Syncs Player Data Silently
*/
HRP_fnc_syncSilent = {
	[player, "", getPlayerUID player, player getVariable "playerName", false] remoteExecCall ["Server_fnc_statSave", 2];
};