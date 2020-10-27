/*
	Author: Ben Harris
	Descripotion: Signs driver off
*/
HRP_fnc_towDriverSignOff = {

	player setVariable ["payCheque", HRP_payCheque, true];
	player setVariable ["currentOccupation", "Unemployed", true];

	player setVariable ["towTruckDriver", nil, true];
	
	["Signed Out", "You have left your job as a truck driver", true] spawn HRP_fnc_Notifications;
};