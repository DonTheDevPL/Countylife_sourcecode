//Author: TheWolek
HRP_fnc_DOJDuty = {
	params["_onOF"];
	_licenses = player getVariable "licenses";
	if(_onOF == 0) then {
		//skoncz
		player setVariable ["DOJ",nil,true];
		player setVariable ["currentOccupation","Unemployed",true];
		player setVariable ["payCheque", HRP_payCheque, true];
	} else {
		//rozpocznij
		if ("DOJ" in _licenses) then {
			player setVariable ["DOJ",1,true];
			player setVariable ["currentOccupation","Departament of Justice",true];
			player setVariable ["payCheque", HRP_DOJPay,true];
		} else {
			["Error","Nie pracujesz w DOJ",true] spawn HRP_fnc_Notifications;
			player setVariable ["currentOccupation","Unemployed",true];
			player setVariable ["payCheque", HRP_payCheque, true];
		};
	};
};