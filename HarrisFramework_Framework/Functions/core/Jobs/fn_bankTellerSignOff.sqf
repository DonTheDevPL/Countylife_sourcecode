/*
	Author: Ben Harris
	Description: Signs you out of bank teller
*/

HRP_fnc_bankTellerSignOff = {

	player setVariable ["payCheque", HRP_payCheque, true];
	player setVariable ["currentOccupation", "Unemployed", true];

	player setVariable ["bankTeller", nil, true];

	["Wypisany", "Przestałeś pracować jako kasjer", true] spawn HRP_fnc_Notifications;
};