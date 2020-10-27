/*
	Author: Ben Harris
	Description: Stops you from over-stealing money from the bank
*/

HRP_fnc_checkBankCash = {
	params["_cash"]; 

	_cash setVariable ["recentlyRobbed", true];

	sleep (HRP_recentRobberyTime * 60);

	_cash setVariable ["recentlyRobbed", false];
};