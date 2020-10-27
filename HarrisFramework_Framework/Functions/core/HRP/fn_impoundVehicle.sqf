/*
	Author: Ben Harris
	Description: Impounds the Vehicle
*/

HRP_fnc_impoundVehicle = {
	params ["_ct", "_type"];

		_countDriver = [] call HRP_fnc_countTowDrivers;

		if !(_countDriver > 0) then {

			_caruid = _ct getVariable "ownerUID";
			carID = _ct getVariable "owner";
			_hit = [_ct]call HRP_fnc_vehicleHitGet;


			if (_type == 1) then {
				_msg = format ["%1 your vehicle is being impounded by the Police", carID];
				[_msg] remoteExecCall ["HRP_fnc_serverMsg", 0];
			} else {
				_msg = format ["%1 your vehicle is being destroyed by the Police", carID];
				[_msg] remoteExecCall ["HRP_fnc_serverMsg", 0];
			};

			ActionLoading = true;
			handle = [10, cursorObject] spawn HRP_fnc_doAction;
			waitUntil { isNull handle; };
		if !(HRP_interrupted) then {
			if (_type == 1) then {
				[typeOf _ct, _hit, _caruid] remoteExecCall ["Server_fnc_impoundVehicle", 2];
				["Sukces", "Odholowałeś pojazd.", true] spawn HRP_fnc_Notifications;
				_plate = _ct getVariable "PlateID";
				[_plate] remoteExecCall ["Server_fnc_deleteVehiclePoliceDB", 2];
			};

			if (_type != 1) then {
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
	} else {

		{
			_id = str (round (random 10000));
			_ct setVariable ["iconID", str _id, true];

			if (_type != 1) then {
				_ct setVariable ["destroyAtImpound", true, true];
			};

			[_ct, _id] remoteExec ["HRP_fnc_callTowDriver", _x];
		} forEach ([] call HRP_fnc_getTowDrivers)
		
	};
};


