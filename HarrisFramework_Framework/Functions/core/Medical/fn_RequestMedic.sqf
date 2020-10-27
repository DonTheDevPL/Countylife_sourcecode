/*
	Author: Ben Harris
	Description: Request Medic Script
*/

HRP_fnc_RequestMedic = {
	_b = 60;
	_a = 0;
	while {_a < _b} do {
		_a = _a + 1;
		
	};

	if {_a == 60} then
	{

	_uid = str (getPlayerUID player);
	_positionPlayer = getPos player;
	_medics = [] call HRP_fnc_getMedics;
	
	{
		[0, _uid, _positionPlayer] remoteExecCall ["HRP_fnc_basicMedicalMarker", _x];
		["Potrzeby medyk", "Ktoś potrzebuje pomocy medycznej", true] remoteExec ["HRP_fnc_Notifications", _x];
		
	} forEach _medics;

	["Pomoc wezwana", "Wezwałeś medyków", true] spawn HRP_fnc_Notifications;
	} else {
		["Error", "Musisz odczekać 1min od kolejnego wezwania medyka", true] spawn HRP_fnc_Notifications;

	};
};