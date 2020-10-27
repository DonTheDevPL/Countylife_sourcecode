/*
	Author: Ben Harris
	Description: Response if a call is Blocked
*/

HRP_fnc_blockedCall = {
		HRP_Calling = false;
		closeDialog 5038;
		HRP_inCall = "Blocked";
};