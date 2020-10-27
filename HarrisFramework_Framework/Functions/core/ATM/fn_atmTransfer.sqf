HRP_fnc_atmTransfer = {

	if (HRP_atmDelay) exitWith { ["Error", "Zwolnij", true] spawn HRP_fnc_Notifications; };
	
	_amount = parseNumber (ctrlText 1400);
	_account = parseNumber (ctrlText 1405);
	
	if (_amount <= 0) exitWith {
		["Error", "Zbyt mała ilość.", true] spawn HRP_fnc_quickNotifications;
	};

	if (player getVariable "bankAccount" == _account) exitWith {
		["Transferal Error", "Nie możesz przelać pieniędzy samemu sobie.", true] spawn HRP_fnc_quickNotifications;
	};

	[_account, _amount, player] remoteExecCall ["ServerModules_fnc_transferMoney", 2];
	
	HRP_atmDelay = true;

	sleep 1;

	HRP_atmDelay = false;
};