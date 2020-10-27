HRP_fnc_giveCashSubmit = {
	params ["_target", "_giver"];

	_amount = parseNumber (ctrlText 1401);
	closeDialog 0;

	if (_amount > 0) then 
	{
		_enoughCash = [1, _amount] call HRP_fnc_checkMoney;
		if (_enoughCash) then 
		{
			[_amount] call HRP_fnc_removeCash;
			[_amount] remoteExecCall ["HRP_fnc_addCash", _target];
			
			_text = format ["%1 gave you %2 $", _giver, _amount];
			[_text] remoteExecCall ["HRP_fnc_hintMP", _target];
		} else {
			["Error", "Zbyt mało funduszy", true] spawn HRP_fnc_quickNotifications;
		};
	} else {
		["Error", "Musisz podać kwotę > $0", true] spawn HRP_fnc_quickNotifications;
	};
};