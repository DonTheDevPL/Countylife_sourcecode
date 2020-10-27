//Author: TheWolek
HRP_fnc_fuelStatOpen = {
	if(dialog) exitWith {};
	_vehicleList = nearestObjects [player, ["car","air"], 10];
	if (count _vehicleList < 1) exitWith {
		["Error", "Brak pojazdu w pobliżu", true] spawn HRP_fnc_Notifications;
	};
	FuelCost = 100;
	createDialog "HRP_FuelStat";
	waitUntil { dialog; };
	ctrlSetText [20301,"Fuel Station"];

	vehicleFuelList = [];
	{
		_fuel = fuel _x;
		vehicleFuelList pushback [_x,_fuel];
		
	} forEach _vehicleList;

	_control = ((findDisplay 20300) displayCtrl 20302);
	lbClear _control;
	
	ctrlSetText [20322,format ["Cena za litr: $%1", FuelCost]];
	ctrlSetText [20323,format ["Total: $%1", FuelCost * 0.1]];

	{
		_className = typeOf (_x select 0);
		_fuelleft = _x select 1;

		_vehicleInfo = [_className] call HRP_fnc_fetchVehInfo;
		_control lbAdd (_vehicleInfo select 2);
		_control lbSetPicture [(lbSize _control)-1,(_vehicleInfo select 3)];
		_control lbSetData [(lbSize _control)-1,_className];
		_control lbsetValue [(lbSize _control)-1,_forEachIndex];
		
	} forEach vehicleFuelList;
};