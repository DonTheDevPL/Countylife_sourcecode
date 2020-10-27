/*
	Author: Ben Harris
	Description: Paycheque Function
*/

HRP_fnc_payChequeLoop = {

	while {true} do {
		systemChat "Kolejną wypłatę dostaniesz za 10 min";
		uiSleep 600;	

		_payChequeMissed = false;
		if ((player getVariable "currentOccupation") == "Bus Driver" && !((typeOf (vehicle player)) in HRP_Buses)) then {
			["Error", "Nie byłeś w autobusie i nie dostałeś swojej wypłaty"] spawn HRP_fnc_Notifications;
			_payChequeMissed = true;
		};

		if ((player getVariable "currentOccupation") == "Truck Driver" && !(typeOf (vehicle player) in HRP_Trucks)) then {
			["Error", "Nie byłeś w swoim pojeździe i nie dostałeś swojej wypłaty"] spawn HRP_fnc_Notifications;
			_payChequeMissed = true;
		};

		if !(_payChequeMissed) then {
			_ammount = player getVariable "payCheque";

			systemChat format ["Dostałeś wypłatę w wysokości $" + "%1, pamiętaj by zabrać ją z CenterLink'a", _ammount];

			_outstanding = player getVariable "outStandingPay";
			_outstanding = _outstanding + _ammount;

			player setVariable ["outStandingPay", _outstanding, true];
		};
	};
};