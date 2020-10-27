/*
	Author: Ben Harris
	Description: Opens the 'Send Message' Menu from the Contacts App
*/

HRP_fnc_openContactSMS = {
	closedialog 0;
	createDialog "HRP_phone_sendMessage";

	HRP_numberToCall = ctrlText 9578;
	ctrlSetText [8345, HRP_numberToCall];
};