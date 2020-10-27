/*
	Author: Ben Harris
	Description: Purchase License Shop
*/

HRP_fnc_buyLicense = {
	_text = ctrlText 1400;
	if ((count _text) < 5) exitWith { ["Error", "Musisz podpisać ten zakup!", true] spawn HRP_fnc_Notifications; };
	_type = lbData [1500, (lbCurSel 1500)];
	_type = call compile _type;
	_price = _type select 1;

	_check = [1, _price] call HRP_fnc_checkMoney;
	if (_check) then {

		[_price] call HRP_fnc_removeCash;
		if (_type isEqualTo "") exitWith { hint "nil";};

		_license = player getVariable "licenses";

		_license pushBack (_type select 0);

		player setVariable ["licenses", _license, true];

		[] call HRP_fnc_refreshLicense;	

		["Sukces", "Kupiłeś licencje!", true] spawn HRP_fnc_Notifications;
	} else {
		["Error", "Niewystarczające fundusze.", true] spawn HRP_fnc_Notifications;
	};
};