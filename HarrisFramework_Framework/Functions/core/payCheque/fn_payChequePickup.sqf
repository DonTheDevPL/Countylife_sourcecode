/*
	Author: Ben Harris
	Description: Picks up your payCheque
*/
HRP_fnc_payChequePickup = {
	
	_ammount = player getVariable "outStandingPay";

	[_ammount] call HRP_fnc_addBank;

	player setVariable ["outStandingPay", 0, true];

	["Sukces", "Zabrałeś swoją wypłatę", true] spawn HRP_fnc_Notifications;

	[] call HRP_fnc_syncSilent;
};