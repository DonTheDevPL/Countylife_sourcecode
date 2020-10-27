//Author: TheWolek
HRP_fnc_dumpsterSignUp = {
	params["_ct"];
	mkr = cursorObject getVariable "dumpStation";

	_objects = nearestObjects [getMarkerPos mkr, ["LandVehicle", "Air", "Sea"], 5];
	if (count _objects > 0) exitWith {
		["Error", "Miejsce spawnu jest zajęte", true] spawn HRP_fnc_Notifications;
	};

	_pos = getMarkerPos mkr;
	_dir = markerDir mkr;

	_rVeh = selectRandom HRP_dumpTrucks;
	_vehicle = _rVeh createVehicle [0,0,0];
	HRP_dumpster = _vehicle;

	_vehicle setDir _dir;
	_vehicle setPos _pos;
	_vehicle setDir _dir;
	_vehicle setVariable ["isDumpster", true, true];
	
	player setVariable ["dumpsterStart",true,true];

	["Sukces", "Praca przypisana, dostań się do twojej śmieciary by zacząć pracę.", true] spawn HRP_fnc_Notifications;

	waitUntil {typeOf (vehicle player) in HRP_dumpTrucks };

	player setVariable ["dumpsterStart", nil, true];

	player setVariable ["payCheque", HRP_dumpsterPay, true];
	player setVariable ["currentOccupation", "Śmieciarz", true];
	player setVariable ["DumpsterDriver", true, true];
	_lic = player getVariable "licenses";
	_lic = _lic + ["Dumpster_driver"];
	player setVariable["licenses",_lic,true];
	Trash = 0;

	sleep 1.5;
	["Sukces", "Witamy nowego śmieciarza. Zbieraj śmieci z kontenerów i transportuje je na śmietnisko.", true] spawn HRP_fnc_Notifications;
};