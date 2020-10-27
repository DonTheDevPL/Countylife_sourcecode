/*
	Author: Ben Harris
	Description: Deletes a Contact
*/

HRP_fnc_deleteContact = {
	params["_id"];
	HRP_Contacts = player getVariable "contactList";
	HRP_Contacts deleteAt _id;	
	[2,1] call HRP_fnc_listContacts;
	player setVariable ["contactList", HRP_Contacts, true];
};