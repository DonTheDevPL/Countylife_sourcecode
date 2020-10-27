/*
	Author: Ben Harris
	Description: Restrains Player
*/

HRP_fnc_cuffTarget = {
	player setVariable ["cuffed", true, true];
	for "_i" from 0 to 1 step 0 do {
		if(!alive player) exitWith {player setVariable ["cuffed",false,true];};
		if (!(player getVariable "cuffed")) exitWith {};
		if (isNull objectParent player) then {player playMove "Acts_AidlPsitMstpSsurWnonDnon_loop";};
	};	
};