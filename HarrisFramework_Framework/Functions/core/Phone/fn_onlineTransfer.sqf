/*
	Author: Ben Harris
	Description: Transfer money via online banking
*/

HRP_fnc_onlineTransfer = {
	HRP_ammount = parseNumber (ctrlText 1400);
	HRP_account = parseNumber (ctrlText 1401);

	if (HRP_ammount <= 0) exitWith {
		["Error", "Nie możesz przelać $0", true] spawn HRP_fnc_quickNotifications;
	};

	if (HRP_ammount > player getVariable "bankAccount") exitWith {
		["Error", "Masz zbyt mało funduszy.", true] spawn HRP_fnc_quickNotifications;
	};



	[HRP_ammount, HRP_account, player] remoteExecCall ["Server_fnc_transferMoney", 2];
};

/*
	if (player getVariable "bankAccount" == HRP_account) exitWith {
		["Transferal Error", "You cannot transfer money to yourself.", true] spawn HRP_fnc_quickNotifications;
	};