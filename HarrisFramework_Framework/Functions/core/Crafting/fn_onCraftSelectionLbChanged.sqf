/*
	Author: Ben Harris
	Description: Lists required Materials
*/

HRP_fnc_onCraftSelectionLbChanged = {
	_data = lbData [2100, ( lbCurSel 2100 )];

	lbClear 1500;
	_bluePrints = player getVariable "bluePrints";
	{
		_bluePrint = _x select 2;
		_select = _x select 4;

		if (_bluePrint != "" && _bluePrint in _bluePrints && _select == _data) then {
			
			_index = lbAdd [1500, _x select 0];
			lbSetData [1500, _index, str _x];
		} else {
			if (_bluePrint == "" && _select == _data) then {
				_index = lbAdd [1500, _x select 0];
				lbSetData [1500, _index, str _x];
			};
		};
	} forEach HRP_craftAbleItems;
};