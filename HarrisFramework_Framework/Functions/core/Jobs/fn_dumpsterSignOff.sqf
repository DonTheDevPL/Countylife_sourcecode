//Author: TheWolek
HRP_fnc_dumpsterSignOff = {
	player setVariable ["payCheque", HRP_payCheque, true];
	player setVariable ["currentOccupation", "Unemployed", true];
	player setVariable ["dumpsterStart", nil, true];
	deleteVehicle HRP_dumpster;
	_lic = player getVariable "licenses";
	_lic = _lic - ["Dumpster_driver"];
	player setVariable ["licenses",_lic,true];
	Trash = 0;

	["Wypisano", "Zakończyłeś pracę jako śmieciarz", true] spawn HRP_fnc_Notifications;
};