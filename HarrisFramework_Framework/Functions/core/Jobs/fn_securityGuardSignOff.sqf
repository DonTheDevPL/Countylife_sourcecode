/*
	Author: Ben Harris
	Description: Sign off for security guards
*/

HRP_fnc_securityGuardSignOff = {
	player setVariable ["payCheque", HRP_payCheque, true];
	player setVariable ["currentOccupation", "Unemployed", true];

	player setVariable ["securityGuard", nil, true];

	["Signed Out", "You have been signed out of your job", true] spawn HRP_fnc_Notifications;
};