/*
	Author: Ben Harris
	Description: Impounds vehicle as tow driver
*/



HRP_fnc_impoundVehicleTow = {
	params["_ct"];

	_caruid = _ct getVariable "ownerUID";
	carID = _ct getVariable "owner";


	if (isNil {_ct getVariable "destroyAtImpound"}) then {
				_msg = format ["%1 Twój pojazd jest odholowywany przez mechanika", carID];
				[_msg] remoteExecCall ["HRP_fnc_serverMsg", 0];
			} else {
				_msg = format ["%1 Twój pojazd jest konfiskowany przez mechanika", carID];
				[_msg] remoteExecCall ["HRP_fnc_serverMsg", 0];
			};

			ActionLoading = true;
			handle = [10, cursorObject] spawn HRP_fnc_doAction;
			waitUntil { isNull handle; };

		if !(HRP_interrupted) then {
			_hit = [_ct]call HRP_fnc_vehicleHitGet;
			
			if (isNil {_ct getVariable "destroyAtImpound"}) then {
				[typeOf _ct, _hit, _caruid] remoteExecCall ["Server_fnc_impoundVehicle", 2];
				["Sukces", "Odholowałeś pojazd", true] spawn HRP_fnc_Notifications;
				_plate = _ct getVariable "PlateID";
				[_plate] remoteExecCall ["Server_fnc_deleteVehiclePoliceDB", 2];
			} else {
				["Sukces", "Odholowałeś pojazd", true] spawn HRP_fnc_Notifications;
				_plate = _ct getVariable "PlateID";
				[_plate] remoteExecCall ["Server_fnc_deleteVehiclePoliceDB", 2];
			};

			_sound = _ct getVariable["DD_SirenSource", objNull];

			if !(isNull _sound) then {
				deleteVehicle _sound;
			};
			
			deleteVehicle _ct;
		} else {
		HRP_interrupted = false;
	};

	_outstanding = player getVariable "outStandingPay";
	_outstanding = _outstanding + 3000; 
	player setVariable ["outStandingPay", _outstanding, true];

	["Bonus", "Dostałeś bonus za odholowanie pojazdu", true] spawn HRP_fnc_Notifications;
};