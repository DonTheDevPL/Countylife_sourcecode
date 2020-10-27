/*
	Author: Ben Harris
	Description: Pays / Doesn't pay the ticket 
*/

HRP_fnc_payTicket = {

	_check = [1, HRP_priceToPay] call HRP_fnc_checkMoney;	

	if !(_check) exitWith { 
		closeDialog 0;
		["Error", "Masz za mało pinędzy, aby zapłacić mandat", true] spawn HRP_fnc_Notifications;
		["Error", "Tego obywatela nie stać na mandat", true] remoteExec ["HRP_fnc_Notifications", HRP_ticketSender];
	};

	[HRP_priceToPay] call HRP_fnc_removeCash;

	_name = format ["%1 zapłacił mandat", player getVariable "playerName"];

	["Sukces", _name, true] remoteExec ["HRP_fnc_Notifications", HRP_ticketSender];

	closeDialog 0;
};