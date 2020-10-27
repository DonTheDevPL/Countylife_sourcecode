/*
	Author: Ben Harris
	Description: Updates the Price on the buttons.
*/

HRP_fnc_priceUpdate = {
	_index = lbCurSel 1500;
	_data = lbData [1500, _index];
	_dataArray = call compile _data;
	Life_curPrice = _dataArray select 2;
	Life_curPrice = call compile Life_curPrice;
	ctrlSetText [1783, "Price: $" + str Life_curPrice];
};