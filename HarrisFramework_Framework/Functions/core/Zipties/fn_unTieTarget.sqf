/*
Author: Ben Harris
Description: Zdejmuje trytytke
*/

HRP_fnc_unTieTarget = {
	player setVariable ["tied", false, true];

	player playMoveNow "Acts_ExecutionVictim_unbow";
};