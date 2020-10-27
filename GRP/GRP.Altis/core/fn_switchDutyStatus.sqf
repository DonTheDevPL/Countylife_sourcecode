//switchDutyStatus
//Author: TheWolek
_status = _this select 0;
_type = _this select 1;

if(_status == 1) then {
	switch (_type) do {
		case 0: {
			_coplvl = player getVariable "copOffDuty";
			player setVariable["coplevel",_coplvl,true];
			player setVariable ["copOffDuty",-1,true];
			hint "Witamy w PD";
		};
		case 1: {
			_medlvl = player getVariable "medOffDuty";
			player setVariable["medlevel",_medlvl,true];
			player setVariable["coplevel",_medlvl,true];
			player setVariable ["medOffDuty",-1,true];
			hint "Witamy w EMS";
		 };
	};
} else {
	switch (_type) do {
		case 0: {
			_coplvl = player getVariable "coplevel";
			player setVariable["copOffDuty",_coplvl,true];
			player setVariable ["coplevel",-1,true];
		};
		case 1: {
			_medlvl = player getVariable "medlevel";
			player setVariable["medOffDuty",_medlvl,true];
			player setVariable["medlevel",-1,true];
			player setVariable["coplevel",-1,true];
		 };
	};
};