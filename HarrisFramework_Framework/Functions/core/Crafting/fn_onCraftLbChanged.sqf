/*
	Author: Ben Harris
	Description: Changes the selection of items that you're looking at
*/

HRP_fnc_onCraftLbChanged = {

	HRP_Data = lbData [1500, ( lbCurSel 1500 )];

	HRP_Data = call compile HRP_Data;

	HRP_neededMaterials = HRP_data select 3;

	_count = false;

	lbClear 1501;
	{
		_toAdd = format ["%1 x%2", _x select 2, _x select 1];
		lbAdd [1501, _toAdd];
	} forEach HRP_neededMaterials;
	
};