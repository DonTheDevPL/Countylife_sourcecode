/*Author: DonTheDev bo ben to dzban i grubas*/
HRP_fnc_switchDutyStatus = {
	params ["_d", "_t"];
    /*if(_d == 0) then {
		if(_t == 0) then {
			_cop = player getVariable ["cop", 0];
			player setVariable ["cop", -1, true];
			player setVariable ["copoffduty", _cop, true];
			player setVariable ["copLevel", nil, true];
			player setVariable ["currentOccupation", "Unemployed", true];
			player setVariable ["payCheque", HRP_payCheque, true];
		} else {
			_ems = player getVariable ["ems", 0];
			player setVariable ["ems", -1, true];
			player setVariable ["emsoffduty", _ems, true];
			player setVariable ["copLevel", nil, true];
			player setVariable ["currentOccupation", "Unemployed", true];
			player setVariable ["payCheque", HRP_payCheque, true];
			myjob = nil;
		};
		["Wypisano", "Zakończyłeś służbę", true] spawn HRP_fnc_Notifications;
	} else {
		if(_t == 0) then {
			_cop = player getVariable ["copoffduty", 0];
			player setVariable ["cop", _cop, true];
			player setVariable ["copoffduty", 0, true];
			player setVariable ["copLevel", 1, true];
			player setVariable ["currentOccupation", "Police Officer", true];
			player setVariable ["payCheque", HRP_policePay, true];
			["On-Duty", "Witamy w SO", true] spawn HRP_fnc_Notifications;
		} else {
			_ems = player getVariable ["emsoffduty", 0];
			player setVariable ["ems", _ems, true];
			player setVariable ["emsoffduty", 0, true];
			player setVariable ["copLevel", 1, true];
			player setVariable ["currentOccupation", "Paramedic", true];
			player setVariable ["payCheque", HRP_emsPay, true];
			myjob = "EMS";
			["On-Duty", "Witamy w EMS", true] spawn HRP_fnc_Notifications;
		};
	};*/
	_licenses = player getVariable "licenses";
	if (_d == 1) then
	{
		switch (_t) do {
			case 0: {
				//pały
				_cop = player getVariable ["copoffduty", 0];
				player setVariable ["cop", _cop, true];
				player setVariable ["copoffduty", 0, true];
				player setVariable ["copLevel", 1, true];
				player setVariable ["currentOccupation", "Police Officer", true];
				player setVariable ["payCheque", HRP_policePay, true];
				["On-Duty", "Witamy w SO", true] spawn HRP_fnc_Notifications;
				player setVariable ["tf_unable_to_use_radio", false];
				[(call TFAR_fnc_activeSwRadio), 1, 33.3] call TFAR_fnc_SetChannelFrequency;
			};
			case 1: {
				//ems
				_ems = player getVariable ["emsoffduty", 0];
				player setVariable ["ems", _ems, true];
				player setVariable ["emsoffduty", 0, true];
				player setVariable ["copLevel", 1, true];
				player setVariable ["currentOccupation", "Paramedic", true];
				player setVariable ["payCheque", HRP_emsPay, true];
				myjob = "EMS";
				["On-Duty", "Witamy w EMS", true] spawn HRP_fnc_Notifications;
				player setVariable ["tf_unable_to_use_radio", false];
				[(call TFAR_fnc_activeSwRadio), 1, 33.4] call TFAR_fnc_SetChannelFrequency;
			};
			case 2: {
				//fd
				_fd = player getVariable ["fdoffduty", 0];
				player setVariable ["fd", _ems, true];
				player setVariable ["fdoffduty", 0, true];
				player setVariable ["copLevel", 1, true];
				player setVariable ["currentOccupation", "Firefighter", true];
				player setVariable ["payCheque", HRP_emsPay, true];
				myjob = "FD";
				["On-Duty", "Witamy w FD", true] spawn HRP_fnc_Notifications;
			};	
			case 3: {
				//doj
				if ("DOJ" in _licenses) then {
				player setVariable ["DOJ",1,true];
				player setVariable ["currentOccupation","Departament of Justice",true];
				player setVariable ["payCheque", HRP_DOJPay,true];
				["On-Duty", "Witamy w DOJ", true] spawn HRP_fnc_Notifications;
				} else {
					["Error","Nie pracujesz w DOJ",true] spawn HRP_fnc_Notifications;
					player setVariable ["currentOccupation","Unemployed",true];
					player setVariable ["payCheque", HRP_payCheque, true];
				};
			};
			case 4: {
				//ganja maffija XD kippo here
				if ("Mafia" in _licenses) then {
					player setVariable ["mafia",1,true];
					player setVariable ["currentOccupation","Mafioza",true];
					player setVariable ["payCheque", HRP_MafiaPay,true];
					["On-Duty", "Witamy w Mafii", true] spawn HRP_fnc_Notifications;
				} else {
					["Error","Nie jesteś w mafii",true] spawn HRP_fnc_Notifications;
					player setVariable ["currentOccupation","Unemployed",true];
					player setVariable ["payCheque", HRP_payCheque, true];
				};
			};
		};
	} else {
		switch (_t) do {
			case 0: {
				//pały
				_cop = player getVariable ["cop", 0];
				player setVariable ["cop", -1, true];
				player setVariable ["copoffduty", _cop, true];
				player setVariable ["copLevel", nil, true];
				player setVariable ["currentOccupation", "Unemployed", true];
				player setVariable ["payCheque", HRP_payCheque, true];
				player setVariable ["tf_unable_to_use_radio", true];
				[(call TFAR_fnc_activeSwRadio), 1, 100] call TFAR_fnc_SetChannelFrequency;
			};
			case 1: {
				//ems
				_ems = player getVariable ["ems", 0];
				player setVariable ["ems", -1, true];
				player setVariable ["emsoffduty", _ems, true];
				player setVariable ["copLevel", nil, true];
				player setVariable ["currentOccupation", "Unemployed", true];
				player setVariable ["payCheque", HRP_payCheque, true];
				player setVariable ["tf_unable_to_use_radio", true];
				[(call TFAR_fnc_activeSwRadio), 1, 100] call TFAR_fnc_SetChannelFrequency;
				myjob = nil;
			};
			case 2: {
				//fd
				_fd = player getVariable ["fd", 0];
				player setVariable ["fd", -1, true];
				player setVariable ["fdoffduty", _fd, true];
				player setVariable ["copLevel", nil, true];
				player setVariable ["currentOccupation", "Unemployed", true];
				player setVariable ["payCheque", HRP_payCheque, true];
				myjob = nil;
			};	
			case 3: {
				//doj
				player setVariable ["DOJ",nil,true];
				player setVariable ["currentOccupation","Unemployed",true];
				player setVariable ["payCheque", HRP_payCheque, true];
			};
			case 4: {
				//ganja maffija XD kippo here
				player setVariable ["mafia",nil,true];
				player setVariable ["currentOccupation","Unemployed",true];
				player setVariable ["payCheque", HRP_payCheque, true];
			};
		};
	};
};