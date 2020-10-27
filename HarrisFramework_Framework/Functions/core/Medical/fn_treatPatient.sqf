/*
	Author: Ben Harris
	Description: Treats a Patient.
*/

HRP_fnc_treatPatient = {
	params["_ct"];

	player playAction "Medic";
	
	_ct setDamage 0;

	sleep 2;
	
	["Sukces", "Uleczyłeś tego pacjenta", true] spawn HRP_fnc_Notifications;

	["Uleczono", "Zaczynasz się czuć lepiej", true] remoteExec ["HRP_fnc_Notifications", _ct];
};