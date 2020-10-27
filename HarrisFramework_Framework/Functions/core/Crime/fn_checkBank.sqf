/*
	Author: Ben Harris
	Description: Enables Bank Robbery after Set Time
*/

HRP_fnc_checkBank = {
	params["_bank"]; 

	_bank setVariable ["recentlyRobbed", true];

	sleep (HRP_recentRobberyTime * 60);

	_bank setVariable ["recentlyRobbed", false];

	missionNamespace setVariable ["inRobbery", false, true];
};