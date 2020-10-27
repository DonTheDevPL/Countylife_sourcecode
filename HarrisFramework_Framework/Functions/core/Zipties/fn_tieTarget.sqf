/*
	Author: Ben Harris
	Description: Zkałada trytytke
*/

HRP_fnc_tieTarget = {
	player setVariable ["tied", true, true];
	for "_i" from 0 to 1 step 0 do {
		if(!alive player) exitWith {player setVariable ["tied",false,true];};
		if (!(player getVariable "tied")) exitWith {};
		if (isNull objectParent player) then {player playMove "Acts_AidlPsitMstpSsurWnonDnon_loop";};
	};	
};