/*

	Author: Ben Harris
	Description: To execute once you are revived.
*/


HRP_fnc_Revived = {
	if(HRP_Revived) exitWith {};
	if(player getVariable "cop" > 0 || player getvariable "ems" > 0) then {
		player setVariable ["tf_unable_to_use_radio", false];
		player setVariable ["tf_voiceVolume", 1, true];
	} else {
		player setVariable ["tf_unable_to_use_radio", true];
		player setVariable ["tf_voiceVolume", 1, true];
	};
	

	HRP_Revived = true;
	HRP_allowRespawn = false;
	player allowDamage true;
	HRP_revivePayment = 50;
	_msg = format ["Medyk cię uratował, pobrano $%1 z twojego konta", HRP_revivePayment];
	["Revived", _msg, true] spawn HRP_fnc_Notifications;

	closeDialog 0;
	death_cam cameraEffect ['TERMINATE','BACK'];  
	camDestroy death_cam;
	player setVariable ["unconscious", false, true];
	player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltofront";
	sleep 2;
	player switchMove "AidlPpneMstpSnonWnonDnon_AI";
	_uid = str (getPlayerUID player);
	_positionPlayer = getPos player;

	player setVariable ["cuffed", false, true];
	player setVariable ["Shackled", false, true];

	player setVariable ["tied", false, true];


	_medics = []call HRP_fnc_getMedics;
	{
		[1, _uid, _positionPlayer] remoteExecCall ["HRP_fnc_basicMedicalMarker", _x];
	}forEach _medics;

	ppEffectDestroy ppEffect1;
	HRP_Dead = false;

	sleep 5;

	if (animationState player == "unconscious") then {
		for "_i" from 0 to 10 do {
			player switchMove "amovppnemstpsraswrfldnon";
		};
	};

	if!("itemMap" in assignedItems player) then {
		player addItem "itemMap";
		player assignItem "itemMap";
	};
	HRP_Dead = false;
	[] call HRP_fnc_addDeathEVH;
};

// to Add Money Transfer, it will not work in testing if alone.