/*
	Author: Ben Harris
	Description: Opens the Message you Select via 'HRP_Phone_SMSList'
*/

HRP_fnc_openMessage = {
	params["_id"];

	createDialog "HRP_Phone_SMSRead";
	_message = HRP_readMessages select _id;

	_messageSender = _message select 0;
	HRP_messageText = _message select 1;
	HRP_numberToCall = _message select 2;

	ctrlSetText [1033, _messageSender]; 
	ctrlSetText [1032, HRP_messageText];
};