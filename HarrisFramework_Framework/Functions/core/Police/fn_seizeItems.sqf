/*	
	Author: Ben Harris
	Description: Seizes items
*/

HRP_fnc_seizeItems = {
	_type = _this select 0;
	switch (_type) do {
		case 0: {
			_items = nearestObjects [player ,["groundWeaponHolder"], 5];

			{
				deleteVehicle _x;
			} forEach _items;

			["Skonifskowano", "Przedmiot został skonfiskowany", true] spawn HRP_fnc_notifications;
		};
		case 1: {
			deleteVehicle cursorObject;
		};
	};
	
};