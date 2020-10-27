/*
	Author: Ben Harris
	Description: Initalises Crafting
*/

HRP_fnc_craftItem = {
	if (HRP_inProcessing) exitWith { ["Error", "Nie możesz robić dwóch rzeczy na raz!", true] spawn HRP_fnc_Notifications; };
	_data = lbData [1500, ( lbCurSel 1500 )];
	_data = call compile _data;	
	closeDialog 0;
	_requiredItems = _data select 3;
	_bool = false;
	_items = items player;
	{
		_itemsLocal = _items;
		_id = _x select 0;
		_count = 0;
			{
				if (_id == _x) then {
					_count = _count + 1;
				};
			} forEach _itemsLocal;

		if (_count < (_x select 1)) exitWith { ["Error","Nie posiadasz wymaganych przedmiotów.", true] spawn HRP_fnc_Notifications; _bool = true;};

	} forEach _requiredItems;

	if !(_bool) then {
		HRP_Items = _requiredItems;
		{	

			_vars = ["","","","","","","","",""];
			_count = 0;
			_item = _x select 0;
			HRP_itemCount = _x select 1;
			{
				if (_count < HRP_itemCount) then {
					player removeItem _item;
				};
				_count = _count + 1;
			} forEach _vars;
		} forEach _requiredItems;

		HRP_craftSchedule pushBack _data;
		if (count HRP_craftSchedule <= 1) then {
			[_data select 5, _data select 1, _data select 4, _data select 0, _data select 6] spawn HRP_fnc_openCraftTimer;
		};

		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";

	};
};