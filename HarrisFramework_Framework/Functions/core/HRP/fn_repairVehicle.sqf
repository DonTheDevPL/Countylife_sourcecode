/*
	Author: Ben Harris
	Description: Initalises Vehicle Repair
*/

HRP_fnc_repairVehicle = {
	params ["_ct"];
	ActionLoading = true;
	handle = [10, cursorObject] spawn HRP_fnc_doAction;
	player playMove "Acts_carFixingWheel";
	waitUntil { isNull handle; };
	if (!HRP_interrupted) then {
		["Skukes", "Naprawiłeś pojazd", true] spawn HRP_fnc_Notifications;
		_ct setDamage 0;
	} else {
		["Anulowano", "Anulowano bierzącą akcje", true] spawn HRP_fnc_Notifications;
		player switchMove "";
		HRP_interrupted = false;
	};
};