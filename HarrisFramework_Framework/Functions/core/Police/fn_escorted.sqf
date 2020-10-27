/*
	Author: Ben Harris
	Description: Escorts Self
*/

HRP_fnc_escorted = {
	isEscort = true;
	while {true} do {
		if (isEscort) then {
			player playMove "AmovPercMstpSnonWnonDnon_Ease";
		};
	};
};