/*
	Author: Ben Harris
	Description: Opens the SMS App on the Phone // Obsolete
*/

HRP_fnc_openSMSMenu = {
	{
		lbAdd [1500, "Message From: " + _x select 0]; // To Add - ID
		lbSetData [1500, _x]; // ^^
	} foreach HRP_Messages;
};