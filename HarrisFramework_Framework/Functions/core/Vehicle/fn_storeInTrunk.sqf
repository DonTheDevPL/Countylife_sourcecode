/*
	Author: Ben Harris
	Description: Stores an Item in the Trunk
*/
HRP_fnc_storeInTrunk = {
	params["_target"];

	_item = player getVariable "carryingObject";
	_trunkItems = _target getVariable ["trunkItems", []];

	_trunkItems pushBack (typeOf _item);

	if (count _trunkItems > _target getVariable ["maxCapacity", 8]) exitWith { ["Error", "Bagażnik jest pełny!", true] spawn HRP_fnc_Notifications;};
	_target setVariable ["trunkItems", _trunkItems, true];

	if !(isNil "_item getVariable 'Owner'") then {
		{
			_count = 0;
			_player = _x;
			{
				if (_x select 0 isEqualTo _item) then {
					_furnitureOwned = _player getVariable furniture;
					_furnitureOwned deleteAt _count;
					_player setVariable ["furniture", _furnitureOwned, true];
				};
				_count = _count + 1;
			} forEach (player getVariable "furniture");	
		} forEach allPlayers;	
	};

	_item setVariable ["OwnerUID", nil, true];	
	_item setVariable ["Owner", nil, true];
	player setVariable ["carryingObject", nil];

	deleteVehicle _item;

	["Sukces", "Schowano przedmiot do bagażnika", true] spawn HRP_fnc_Notifications;
};
