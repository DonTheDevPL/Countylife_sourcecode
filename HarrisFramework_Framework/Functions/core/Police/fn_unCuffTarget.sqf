/*
Author: Ben Harris
Description: Unrestrains Self
*/

HRP_fnc_unCuffTarget = {
	player setVariable ["cuffed", false, true];

	player playMoveNow "Acts_ExecutionVictim_unbow";
};