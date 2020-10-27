/*
	Author: Ben Harris
	Description: Sells Items through the Shop
*/

HRP_fnc_sellItems = {

	if (HRP_cannotSell) exitWith { ["Error", "Zwolnij", true] spawn HRP_fnc_Notifications; };
	_data = lbData [ 1500, ( lbCurSel 1500 ) ];	

	if (isNil "_data") exitWith { ["Error", "Nic nie wybrałeś", true] spawn HRP_fnc_Notifications; };

	{
		if (_data isEqualTo ( _x select 0)) then {
			sellPrice = _x select 1;
		};
	} foreach HRP_sellPrices;

	_viplevel = player getVariable ["vipLevel", 0];

	if (_viplevel > 0) then {
		_vipamount = 1 + (0.1*_viplevel);

		sellPrice = sellPrice * _vipamount; // Adds  cost if VIP
	};

	player removeItem _data;
	_msg = format ["Dostałeś $%1", sellPrice];
	["Skukes", _msg, true] spawn HRP_fnc_Notifications;
	[sellPrice] call HRP_fnc_addCash;
	lbDelete [ 1500, ( lbCurSel 1500 ) ];

	HRP_cannotSell = true;
	sleep 0.2;
	HRP_cannotSell = false;
};
