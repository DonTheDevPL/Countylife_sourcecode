HRP_fnc_sortArray = {
	params ["_array"];
	_return = [];
	{
		_curClass = _x;
		_found = false;
		{
			_classname = _x select 0;
				if (_curClass == _classname) then {
					_found = true;
				};
		}forEach _return;
		if (!(_found)) then {
			_result = {_x == _curClass} count _array;
			_return pushBack [_curClass, _result];
		};
	}forEach _array;

	_return;
};