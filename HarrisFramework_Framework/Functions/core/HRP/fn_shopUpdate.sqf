/*
	Author: Ben Harris
	Description: Updates the text on the shop
*/

HRP_fnc_shopUpdate = {
	_data = lbData [1500, ( lbCurSel 1500 )];
	_text = lbText [1500, ( lbCurSel 1500 )];

	ctrlSetText [1000, _text];

	_dataArray = call compile _data;
	_curPrice = _dataArray select 2;
	_curPrice = call compile _curPrice;

	_viplevel = player getVariable ["vipLevel", 0];

	if (_viplevel > 0) then {
		_vipamount = 10 + (10*_viplevel);

		_curPrice = _curPrice - (_curPrice/_vipamount); // Removes  cost if VIP
	};
	
	ctrlSetText [1001, "$" + str _curPrice];
};