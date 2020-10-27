/*
	Author: Ben Harris
	Description: Opens the 'Send Message' Menu from Phone Dialer
*/

HRP_fnc_openSendSMS = {
	createDialog "HRP_phone_sendMessage";

	ctrlSetText [8345, HRP_numberToCall];
};