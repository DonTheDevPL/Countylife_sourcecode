/*
	Author: Ben Harris
	Description: Gives Key
*/

HRP_fnc_giveKey = {
	_car = lbData [2100, (lbCurSel 2100)];

	if (isNil "_car") exitWith { ["Error", "Wybierz pojazd", true] spawn HRP_fnc_Notifications; };
	[_car] remoteExecCall ["HRP_fnc_getKey", toGiveKey];

	toGiveKey = nil;

	["Oddano klucz", "Oddałeś klucz do pojazdu", true] spawn HRP_fnc_Notifications;
};