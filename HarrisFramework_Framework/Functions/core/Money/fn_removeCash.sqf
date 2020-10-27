HRP_fnc_removeCash = {
	params ["_amount"];

	_bankAccount = player getVariable "bankAccount";

	[player, _bankAccount, _amount, 0, 1] remoteExecCall ["Server_fnc_replicateMoney", 2];
};