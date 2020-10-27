/*

	Author: Ben Harris
	Description: Respawn Action
*/


HRP_fnc_Respawned = {
	if (!HRP_allowRespawn) exitWith { ["Error", "Nie możesz się jeszcze obudzić!", true] spawn HRP_fnc_Notifications; };
	cutText ["", "BLACK"];
	player setpos [2366.8,16646.5,0.00143147];
	closeDialog 5007;
	HRP_Respawned = true;
	player allowDamage true;

	death_cam cameraEffect ['TERMINATE','BACK'];  
	camDestroy death_cam;

	player allowDamage true;
	player setDamage 0;
	player setVariable ["unconscious", false, true];
	[] call HRP_fnc_initSpawnMenu;
	player switchMove "";
	removeAllItems player;
	removeAllAssignedItems player;
	removeAllWeapons player;
	removeBackpack player;
	removeVest player;
	removeUniform player;
	removeHeadgear player;

	_uni = selectRandom HRP_spawnUniforms;
	player addUniform _uni;
	{
		player addItem _x;
		player assignItem _x;
	} foreach HRP_spawnItems;


	_uid = str (getPlayerUID player);
	_positionPlayer = getPos player;
	_medics = []call HRP_fnc_getMedics;
	{
		[1, _uid, _positionPlayer] remoteExecCall ["HRP_fnc_basicMedicalMarker", _x];
	} forEach _medics;

	HRP_Respawned = false;
	HRP_Dead = false;

	ppEffectDestroy ppEffect1;

	HRP_Hunger = 0;
	HRP_Thirst = 0;

	for "_i" from 0 to 2 do {
		player switchMove "";
	};

	[] call HRP_fnc_resetCash;

	if ((player getVariable "cop") > 0) then {
		player setVariable ["copOffDuty", (player getVariable "cop"), true];
		player setVariable ["cop", -1, true];
	};

	if ((player getVariable "ems") > 0) then {
		player setVariable ["emsOffDuty", (player getVariable "ems"), true];
		player setVariable ["ems", -1, true];
	};

	player setVariable ["currentOccupation", "Unemployed", true];
	player setVariable ["payCheque", HRP_payCheque, true];

	player setVariable ["tf_unable_to_use_radio", true];
	player setVariable ["tf_voiceVolume", 1, true];

	player setVariable ["cuffed", false, true];
	player setVariable ["surrendered", false, true];

	player setVariable ["tied", false, true];

	HRP_hasFlamed = false;

	HRP_Dead = false;
};