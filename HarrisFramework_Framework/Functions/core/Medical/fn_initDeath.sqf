/*
	Author: Ben Harris
	Description: Initalises Death Animations
*/

HRP_fnc_initDeath = {

	[] remoteExecCall ["KK_fnc_forceRagDoll", player];
	for "_i" from 0 to 10 do {
		if (animationState player != "unconscious") then {
			[] remoteExecCall ["KK_fnc_forceRagDoll", player];
		};
	};
	sleep 5;
	waitUntil {animationState player != "unconscious"};

	player switchMove "unconscious";
};