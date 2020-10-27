/*
	Author: Ben Harris
	Description: Stores cars
*/
HRP_fnc_storeCar = {
	params ["_ct"];

	if !(isNil {_ct getVariable "companyTruck"}) exitWith {
		["Error", "Nie możesz schować firmowego samochodu", true] spawn HRP_fnc_Notifications;
	};
	if !(isNil {_ct getVariable "isBus"}) exitWith {
		["Error", "Nie możesz schować firmowego samochodu", true] spawn HRP_fnc_Notifications;
	};

	_pia = HRP_Cars find _ct;
	HRP_Cars deleteAt _pia;

	_hit = [_ct]call HRP_fnc_vehicleHitGet;

	_plate = _ct getVariable "PlateID";

	[typeOf _ct, _hit, player] remoteExecCall ["Server_fnc_insertGarage", 2];
	[_plate] remoteExecCall ["Server_fnc_deleteVehiclePoliceDB", 2];

	_sound = _ct getVariable["DD_SirenSource", objNull];

	if !(isNull _sound) then {
		deleteVehicle _sound;
	};
	deleteVehicle _ct;


};