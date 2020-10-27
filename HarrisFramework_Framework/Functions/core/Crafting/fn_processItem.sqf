/*
	Author: Ben Harris
	Description: Starts the Processing of an Item
*/

HRP_fnc_processItem = {
	params["_itemID"];

	HRP_cancelledd = false;
	if !(isNil {HRP_processingUnit getVariable "unitInProcessing"}) exitWith { ["Error", "Przetwarzasz już przedmioty w tej maszynie!", true] spawn HRP_fnc_Notifications; };

	_itemToCraft = HRP_ProcessItems select _itemID;

	_requiredItems = _itemToCraft select 4;
	_items = items player;

	{
		_count = 0;
		_id = _x select 0;

		{
			if (_x == _id) then {
				_count = _count + 1;
			}
		} forEach (items player);
		if (_count < (_x select 1)) exitWith { ["Error","Nie posiadasz wymaganych przedmiotów.", true] spawn HRP_fnc_Notifications; HRP_cancelledd = true;};

	} forEach _requiredItems;

	if !(HRP_cancelledd) then {

		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";

		_count2 = 0;
		{
			_neededMachine = _x;
			{
				if ((_x select 1) isEqualTo _neededMachine && (_x select 0) in HRP_nearbyMachines) then {
					_count2 = _count2 + 1;
				};
			} forEach HRP_ProcessingUnits;
		} forEach (_itemToCraft select 3);

		if (_count2 < count (_itemToCraft select 3)) exitWith { ["Error", "Nie jesteś w pobliżu maszyny.", true] spawn HRP_fnc_Notifications; };

		{	
			for "_i" from 1 to (_x select 1) do {
				player removeItem (_x select 0);
			};
		} forEach _requiredItems;

		HRP_processingUnit setVariable ["unitInProcessing", true, true];

		[_itemToCraft select 1, _itemToCraft select 2, HRP_processingUnit, _itemToCraft select 0] spawn HRP_fnc_doProcessing;

		["Sukces", "Zabierz swoje przedmioty z poprzednio używanej maszyny!", true] spawn HRP_fnc_Notifications;
	};
};