/*
	Author: Ben Harris
	Description: Adds Contact
*/

HRP_fnc_addContact = {
	_name = ctrlText 1400;
	_number = ctrlText 1401;

	if (count _number != 10) exitWith { ["Error", "Numery telefonów muszą sie składać z 10 cyfr", true] spawn HRP_fnc_notifications; };
	if (count _name < 3) exitWith { ["Error", "Nazwa musi mieć min 3 litery", true] spawn HRP_fnc_notifications; };

	_toPush = [_number, _name];

	_contacts = player getVariable "contactList";

	if (_toPush in _contacts) exitWith { ["Error", "Posiadasz kontakt o takiej samej nazwie", true] spawn HRP_fnc_notifications;};

	_contacts pushBack _toPush;

	player setVariable ["contactList", _contacts, true];

	closeDialog 0;


	[1,1] call HRP_fnc_listContacts;
};