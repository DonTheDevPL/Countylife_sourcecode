HRP_fnc_atmRefresh = {
	params ["_balance", "_amount", "_type", "_cashOrBank"];

	_math = nil;
	if (_type == 0) then {
		_math = _balance - _amount;
	} else {
		_math = _balance + _amount;
	};

	if (_cashOrBank == 0) then {
		_showMath = [_math] call BIS_fnc_numberText;
		ctrlSetText [1002, _showMath];
	} else {
		_showMath = [_math] call BIS_fnc_numberText;
		ctrlSetText [1004, _showMath];
	};
};