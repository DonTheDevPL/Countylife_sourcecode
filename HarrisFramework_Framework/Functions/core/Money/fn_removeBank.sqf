HRP_fnc_removeBank = {
	params ["_amount"];

	_bankAccount = player getVariable "bankAccount";

	[player, _bankAccount, _amount, 0, 0] remoteExecCall ["Server_fnc_replicateMoney", 2];
};