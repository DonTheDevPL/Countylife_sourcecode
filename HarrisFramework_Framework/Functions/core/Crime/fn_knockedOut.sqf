/*
	Author: Ben Harris
	Description: Actions taken when you are knocked out
*/

HRP_fnc_knockedOut = {
	player setVariable ["knockedOut", true, true];
	player playMoveNow "Incapacitated";

	71 cutText ["You were knocked out", "BLACK"];

	sleep 5;

	71 cutText ["", "PLAIN"]; 	

	if !(player getVariable ["cuffed", false]) then {
		player switchMove "amovppnemstpsraswrfldnon";
	};
	player setVariable ["knockedOut", false, true];
};