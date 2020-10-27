/*

	Author: Ben Harris
	DDescription: New Garage System to allow for Warrant DB
*/

HRP_fnc_fetchCar = {

	_objects = nearestObjects [getMarkerPos (HRP_curGarage getVariable "garageMarker"), ["LandVehicle", "Air", "Sea"],5];
	_pos = (getMarkerPos (HRP_curGarage getVariable "garageMarker"));
	if (count _objects > 0) exitWith {
		["Error", "Miejsce spawnu jest zajęte.", true] spawn HRP_fnc_Notifications;
	};

	_currentitemindex = lbCurSel 1500;
	HRP_currentitemindex = _currentitemindex;
	if (_currentitemindex == -1) exitWith {};
	_carStr = lbData [1500, _currentitemindex];
	HRP_carStr = _carStr;
	_car = call compile _carStr;
	_class = _car select 1;
	lbDelete [1500, _currentitemindex];

	closeDialog 0;
	[_car select 0] remoteExecCall ["Server_fnc_removeGarage", 2];

	veh = _class createVehicle [0,0,0];
	veh allowDamage false;
	veh attachto[player,[0,4,2.5]]; 
	VehHolding = true;
	/*
	_vehicle setPos (getMarkerPos (HRP_curGarage getVariable "garageMarker"));
	_vehicle setPosAtl [(getPosAtl _vehicle) select 0,(getPosAtl _vehicle) select 1,((getPosAtl _vehicle) select 2) + 1];
	_vehicle setDir (markerDir (HRP_curGarage getVariable "garageMarker"));
	_vehicle allowDamage true;
	*/
	_vehicle = veh;
	[_car select 3, _vehicle]call HRP_fnc_vehicleHitLoad;
	HRP_Cars pushBack _vehicle;
	_vehicle setVariable ["owner", (player getVariable "playerName"), true];
	_vehicle setVariable ["ownerUID", getPlayerUID player, true];

	_handle = [] call HRP_fnc_setNumberPlate;

	_vehicle setVariable ["PlateID", _handle, true];
	_hit = [_vehicle]call HRP_fnc_vehicleHitGet;

	clearWeaponCargo _vehicle;

	[typeOf _vehicle, _hit, player, _handle, (player getVariable "playerName")] remoteExecCall ["Server_fnc_insertVehiclePoliceDB", 2];

	_toDo = ["clearBackpackCargoGlobal _vehicle", "clearBackpackCargoGlobal _vehicle", "clearItemCargoGlobal _vehicle", "clearMagazineCargoGlobal _vehicle"];
	{
		call compile _x;
	} forEach _toDo;	

	_vehicle lock 2;
};