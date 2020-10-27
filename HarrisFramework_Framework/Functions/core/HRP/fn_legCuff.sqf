/*

	Author: Ben Harris
	Description: 'LegCuffs' the target
*/

HRP_fnc_LegCuff = {
	params["_ct","_type"];

	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	[player, "handcuffs"] remoteExecCall ["HRP_fnc_playSound", 0];
	
	if (_type == 1) then {
		[1] remoteExec ["HRP_fnc_LegCuffed", _ct];
	} else {
		[2] remoteExec ["HRP_fnc_LegCuffed", _ct];
	};	
};