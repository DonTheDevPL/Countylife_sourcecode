HRP_fnc_atmWithdraw = {

	if (HRP_atmDelay) exitWith { ["Error", "Zwolnij", true] spawn HRP_fnc_Notifications; };

	_amount = round (parseNumber (ctrlText 1400));

	if (_amount > 0) then {
		_check = [2, _amount] call HRP_fnc_checkMoney;
		if (_check) then {
			_bank = player getVariable "bank";
			_cash = player getVariable "cash";
			
			[_bank, _amount, 0, 0] call HRP_fnc_atmRefresh;
		
			[_amount] call HRP_fnc_removeBank;
			[_amount] call HRP_fnc_addCash;
		} else {
			["Withdrawl Error", "Zbyt mało środków na koncie.", true] spawn HRP_fnc_Notifications;
		};
	} else {
		["Withdrawl Error", "Nie możesz wypłacić 0$", true] spawn HRP_fnc_Notifications;
	};

	HRP_atmDelay = true;

	sleep 1;

	HRP_atmDelay = false;
};