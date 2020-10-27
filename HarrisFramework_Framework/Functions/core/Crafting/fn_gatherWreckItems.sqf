/*
	Author: Ben Harris
	Description: Gathers items from the wrecks
*/

HRP_fnc_gatherWreckItems = {
	params["_ct"];

	_items = getItemCargo _ct;

	if (_items == [[],[]]) exitWith { ["Przeszukany", "Ta skrzynia została już przeszukana.", true] spawn HRP_fnc_Notifications; };
	_itemToGive = _items select 0;
	{
	 _i = 1;
	  for "_i" from 1 to ((_items select 1) select (_i - 1)) do {
	  	 player addItem _x;
	  };
	} forEach _itemToGive;

	["Skukces", "Pomyślnie przeszukałeś wrak", true] spawn HRP_fnc_Notifications;

	clearItemCargo _ct;
}