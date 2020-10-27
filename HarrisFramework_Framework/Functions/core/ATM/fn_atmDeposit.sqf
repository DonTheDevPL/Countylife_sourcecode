HRP_fnc_atmDeposit = {

	if (HRP_atmDelay) exitWith { ["Error", "Zwolnij", true] spawn HRP_fnc_Notifications; };
	_amount = round (parseNumber (ctrlText 1400));

	if (_amount > 0) then {
		_check = [1, _amount] call HRP_fnc_checkMoney;
		if (_check) then {
			_bank = player getVariable "bank";
			_cash = player getVariable "cash";
			
			[_bank, _amount, 1, 0] call HRP_fnc_atmRefresh;
			
			[_amount] call HRP_fnc_removeCash;
			[_amount] call HRP_fnc_addBank;
		} else {
			["Cash Error", "Za mało gotówki", true] spawn HRP_fnc_quickNotifications;
		};
	} else {
		["Deposit Error", "Nie możesz zdeponować mniej niż 0$", true] spawn HRP_fnc_Notifications;
	};

	HRP_atmDelay = true;

	sleep 1;

	HRP_atmDelay = false;
};