/*
	Author: Ben Harris
	Description: Opens the Banking App
*/

HRP_fnc_openBankingApp = {
	createDialog "HRP_Phone_bankApp";
	_balance = str ((player getVariable "outStandingPay") + (player getVariable "bank"));

	_available = str (player getVariable "bank");

	_routingNumber = str (player getVariable "bankAccount");

	ctrlSetText [2315, _balance];
	ctrlSetText [2314, _available];
	ctrlSetText [2316, _routingNumber];
};