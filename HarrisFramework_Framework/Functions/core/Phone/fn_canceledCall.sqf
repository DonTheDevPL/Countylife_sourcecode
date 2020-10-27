/*
	Author: Ben Harris
	Description: Response to Call being Canceled
*/
HRP_fnc_canceledCall = {
	HRP_receivingCall = false;

	if (!isNull (findDisplay 5031)) then { closeDialog 0; };
};