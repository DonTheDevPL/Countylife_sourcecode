/*
	Author: Ben Harris
	Description: Inits the Ore Spawn Loop
*/

HRP_fnc_initOreLoop = {

	missionNamespace setVariable ["HRP_Ores", [], true];
	while {true} do
	{
		waitUntil {count allPlayers > 0};
		[] remoteExecCall ["HRP_fnc_oreSpawn", selectRandom allPlayers];
		sleep 300;
	};	
};
