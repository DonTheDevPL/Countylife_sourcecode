/*
	Author: Ben Harris
	Description: Allows you to send a remote Notification
*/

HRP_fnc_notifMP = {
	params["_title","_msg","_bool"];

	[_title,_msg,_bool] spawn HRP_fnc_Notifications;
};