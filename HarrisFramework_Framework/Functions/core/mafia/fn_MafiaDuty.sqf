//Author: TheWolek
HRP_fnc_MafiaDuty = {
	params["_onOff"];
	_licenses = player getVariable "licenses";
	if (_onOff == 0) then {
		player setVariable ["mafia",nil,true];
		player setVariable ["currentOccupation","Unemployed",true];
		player setVariable ["payCheque", HRP_payCheque, true];
	} else {
		if ("Mafia" in _licenses) then {
			player setVariable ["mafia",1,true];
			player setVariable ["currentOccupation","Mafioza",true];
			player setVariable ["payCheque", HRP_MafiaPay,true];
		} else {
			["Error","Nie jesteś w mafii",true] spawn HRP_fnc_Notifications;
			player setVariable ["currentOccupation","Unemployed",true];
			player setVariable ["payCheque", HRP_payCheque, true];
		};
	};
};