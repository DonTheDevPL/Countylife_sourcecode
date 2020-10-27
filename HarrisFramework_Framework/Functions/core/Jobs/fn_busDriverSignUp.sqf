/*
	Author: Ben Harris
	Description: Signs you up for a job
*/

HRP_fnc_busDriverSignUp = {
	params["_ct"];

	["Sukces", "Praca przypisana, dostań się do twojego autobusu by zacząć pracę.", true] spawn HRP_fnc_Notifications;
	HRP_currentBus = [_ct] call HRP_fnc_createGovernmentBus;

	player setVariable ["busDriverStart", true, true];

	waitUntil {typeOf (vehicle player) in HRP_buses };

	player setVariable ["busDriverStart", nil, true];

	player setVariable ["payCheque", HRP_busDriverPay, true];
	player setVariable ["currentOccupation", "Bus", true];
	player setVariable ["busDriver", true, true];

	_lic = player getVariable "licenses";
	_lic = _lic + ["Bus_driver"];
	player setVariable ["licenses",_lic,true];

	["Sukces", "Witamy nowego kierowcę autobusu", true] spawn HRP_fnc_Notifications;
};