HRP_fnc_checkMoney = {
	params ["_type", "_amount"];

	_return = false;
	if (_type == 1) then {
		_cash = player getVariable "cash";
		_math = _cash - _amount;
		if (_math >= 0) then {_return = true}
	} else {
		_bank = player getVariable "bank";
		_math = _bank - _amount;
		if (_math >= 0) then {_return = true}
	};

	_return;
};