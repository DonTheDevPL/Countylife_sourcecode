/*
	Author: Ben Harris
	Description: Opens the Smelting Menu
*/

HRP_fnc_openSmeltingMenu = {
	params["_ct"];

	createDialog "HRP_smeltingMenu";
	HRP_ProcessingUnit = _ct;

	_smelters = nearestObjects [HRP_ProcessingUnit,["A3L_Smelter","A3L_Boiler","A3L_ManuMachine"], 20];

	_toPush = [];
	{
		if ((typeOf _x) isEqualTo "A3L_Smelter" && !("A3L_Smelter" in _toPush)) then {
			_toPush pushBack "A3L_Smelter";
		};
		if ((typeOf _x) isEqualTo "A3L_Boiler" && !("A3L_Boiler" in _toPush)) then {
			_toPush pushBack "A3L_Boiler";
		};
		if ((typeOf _x) isEqualTo "A3L_ManuMachine" && !("A3L_ManuMachine" in _toPush)) then {
			_toPush pushBack "A3L_ManuMachine";
		};
	} forEach _smelters;

	_count = count _toPush;

	HRP_currentMachineText = "";
	HRP_nearbyMachines = _toPush;
	{
		_item = _x;

		{
			if(_item isEqualTo (_x select 0)) then {
				textToDisplay = _x select 2;
			};
		} forEach HRP_ProcessingUnits;
		 if (_x isEqualTo (_toPush select 0)) then {
		 	HRP_currentMachineText = HRP_currentMachineText + textToDisplay;
		 } else {
		 	HRP_currentMachineText = HRP_currentMachineText + " \n " + textToDisplay;
		};
	} forEach HRP_nearbyMachines;
	ctrlSetText [1000, HRP_currentMachineText];
};