HRP_fnc_addCash = {
	params ["_amount"];

	_bankAccount = player getVariable "bankAccount";

	[player, _bankAccount, _amount, 1, 1] remoteExecCall ["Server_fnc_replicateMoney", 2];
};