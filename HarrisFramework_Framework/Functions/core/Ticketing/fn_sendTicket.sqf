/*
	Author: Ben Harris
	Description: Gives the Ticket
*/

HRP_fnc_sendTicket = {

	_fields = [1004, 1402];
	{
		if ((ctrlText _x) isEqualTo "") exitWith { ["Error", "Musisz wypełnić wszystkie pola", true] spawn HRP_fnc_Notifications; };
	} forEach _fields;

	if ((parseNumber (ctrlText 1401)) <= 0) exitWith {
		["Error", "Musisz podać poprawny numer", true] spawn HRP_fnc_Notifications
	};

	_toSendArray = [HRP_first, HRP_second, HRP_middle, HRP_dob, "Lakeside Isles", (ctrlText 1004), lbData [2100, ( lbCurSel 2100 )], (player getVariable "playerName"), ( ctrlText 1402 ), ( ctrlText 1400 ), (parseNumber (ctrlText 1401))];

	[_toSendArray, player] remoteExecCall ["HRP_fnc_receiveTicket", HRP_ticketTarget];
};