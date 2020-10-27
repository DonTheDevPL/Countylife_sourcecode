/*
	Author: Ben Harris
	Description: New format to initialise ATM System
*/
HRP_fnc_openATM = {
	createDialog "ATM";

	_bankAccount = format ["%1", str (player getVariable "bankAccount")]; 
	ctrlSetText [1000, _bankAccount];

	_bank = player getVariable "bank"; 
	_showBank = [_bank] call HRP_fnc_numbertoText;
	ctrlSetText [1002, _showBank];
};