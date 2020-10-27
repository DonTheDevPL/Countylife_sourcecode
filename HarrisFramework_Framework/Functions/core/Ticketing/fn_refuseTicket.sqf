/*
	Author: Ben Harris
	Description: Refuses Ticket
*/

HRP_fnc_refuseTicket = {
	["Odmowa", "Ten obywatel odrzucił mandat", true] remoteExec ["HRP_fnc_Notifications", HRP_ticketSender];	
};