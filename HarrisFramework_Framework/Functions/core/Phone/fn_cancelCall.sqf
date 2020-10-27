/*
	Author: Ben Harris
	Description: Hangs up  a call
*/
HRP_fnc_cancelCall = {
	HRP_inCall = "Cancelled";
	HRP_Calling = false;
	[] remoteExecCall ["HRP_fnc_canceledCall", HRP_playerToCall];
};