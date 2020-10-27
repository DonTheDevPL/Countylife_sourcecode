/*
	Author: Ben Harris
	Description: Switches from the List to the Message Details // Obsolete
*/
HRP_fnc_switchSMSLB = {
	_messageArray = lbData (lbCurSel 1500);	// ^^
	
	_messageSender = _messageArray select 0;
	_message = _messageArray select 1;

	ctrlSetText [1200, _messageSender]; // ^^
	ctrlSetText [1200, _message]; // ^^
};