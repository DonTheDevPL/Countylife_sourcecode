/*
	Author: Ben Harris
	Description: Declined Call Variable
*/

HRP_fnc_declinedCall = {
		HRP_Calling = false;
		closeDialog 5038;
		HRP_inCall = "Declined";

		["Ktoś odrzucił połączenie", "Ktoś odrzucił twoje połączenie", true] spawn HRP_fnc_Notifications;
};
