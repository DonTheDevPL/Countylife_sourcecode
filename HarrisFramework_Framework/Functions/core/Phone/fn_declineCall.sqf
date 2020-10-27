/*
	Author: Ben Harris
	Description: Decline Call Action
*/
HRP_fnc_declineCall = {
	[] remoteExecCall ["HRP_fnc_declinedCall", HRP_Caller];	
	HRP_receivingCall = false;
};