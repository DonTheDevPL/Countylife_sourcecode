/*
	Author: Ben Harris
	Descirption: Tazes the player
*/

HRP_fnc_tazed = {
	params["_shooter"];
	[] remoteExecCall ["KK_fnc_forceRagdoll", player];
	player setVariable ['knockedOut', true, true];
	playSound3D ["HarrisFramework_Sounds\Sounds\tazer.ogg", player, false, getpos player, 1, 1, 125];
	sleep 2;
	player setVariable ['knockedOut', false, true];
};