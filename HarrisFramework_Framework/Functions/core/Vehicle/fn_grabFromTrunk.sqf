/*
	Author: Ben Harris
	Description: Takes an item from the trunk
*/

HRP_fnc_grabFromTrunk = {
	
	if (!isNil {player getVariable "carryingObject"}) exitWith { ["Error", "Nie możesz nieść więcej niż 1 przedmiot!", true] spawn HRP_fnc_Notifications; };

	_item = lbData [1500, ( lbCurSel 1500 )];
	if (_item isEqualTo "") exitWith { ["Error", "Musisz wybrać obiekt!", true] spawn HRP_fnc_Notifications; };
	_trunkItems = HRP_Trunk getVariable "trunkItems";
	[_item] spawn HRP_fnc_createFurniture;

	_count = 0;
	_bool = false;
	{
		if (_x isEqualTo _item && !(_bool)) then {
			_trunkItems deleteAt _count;
			HRP_Trunk setVariable ["trunkItems", _trunkItems];
			_bool = true;
		};
		_count = _count + 1;
	} forEach _trunkItems;

	closeDialog 5070;
};