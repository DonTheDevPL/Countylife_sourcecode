/*
	Author: Ben Harris
	Description: Syncs Player Data
*/
HRP_fnc_syncData = {
	[player, "", getPlayerUID player, player getVariable "playerName", false] remoteExecCall ["Server_fnc_statSave", 2];
	["Sync udany", "Twoje dane zostały poprawnie zapisane!", true] spawn HRP_fnc_quickNotifications;
};