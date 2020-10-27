/*
	Author: Ben Harris
	Description: Transfer Money System
*/
params["_ammount","_account", "_player"];

_checkstr = format ["existBankAccount:%1", _account];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
_booli = (_check select 0) select 0;
_player setVariable ["check", _check, true];	
_bool2 = false;

if (_booli) then {
	[_ammount] remoteExecCall ["HRP_fnc_removeBank", _player];
	{
		_accountPlayer = _x getVariable "bankAccount";
		if (_accountPlayer isEqualTo _account) then {
			_toTransfer = _x getVariable "bank";
			[_ammount] remoteExecCall ["HRP_fnc_addBank", _x];
			["Money Transfer", "Money was transferred into your account", true] remoteExec ["HRP_fnc_Notifications", _x];
			_bool2 = true;
		};
	} foreach allPlayers;

	if !(_bool2) then {
		[_account, _ammount] call ServerModules_fnc_atmSendMoney;
	};

	_player setVariable ["check2", _bool2, true];
} else {
	["Error", "This account does not Exist", true] remoteExec ["HRP_fnc_Notifications", _player];
};