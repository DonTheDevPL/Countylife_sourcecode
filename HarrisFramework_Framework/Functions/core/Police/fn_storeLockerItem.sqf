/*
	Author: Ben Harris
	Description: Stores an item in the locker
*/

HRP_fnc_storeLockerItem = {


	_locker = player getVariable "locker";

	_lockerType = HRP_curLocker getVariable "lockerType";

	_data = call compile (lbData [1501, ( lbCurSel 1501 )]);


	if (isNil '_data') exitWith { ["Error", "Musisz wybrać przedmiot do schowania", true] spawn HRP_fnc_Notifications; };

	_count = 0;
	{
		if ((_x select 0) isEqualTo _lockerType) then {
			lockerGear = _x select 1;
			lockerKind = _x select 0;
			_locker deleteAt _count;
		};
		_count = _count + 1;
	} forEach _locker;

	if (count lockerGear > 50) exitWith {  ["Error", "Twoja szafka jest pełna!", true] spawn HRP_fnc_Notifications; };

	_type = _data select 1;
	switch (_type) do
	{
		case "Uniform":
		{	
			{
				if !(_x in magazines player) then {
				lockerGear pushBack [_x, "Item"];
			} else {
				lockerGear pushBack [_x, "Magazine"];
			};
			} forEach uniformItems player;

			removeUniform player;
		};
		case "Vest":
		{	
			{
				if !(_x in magazines player) then {
				lockerGear pushBack [_x, "Item"];
			} else {
				lockerGear pushBack [_x, "Magazine"];
			};
			} forEach vestItems player;
			removeVest player;
		};
		case "Backpack":
		{
			{
				if !(_x in magazines player) then {
				lockerGear pushBack [_x, "Item"];
			} else {
				lockerGear pushBack [_x, "Magazine"];
			};
			} forEach backpackItems player;
			removeBackpack player;
		};
		case "Magazine":
		{
			player removeMagazine (_data select 0);
		};
		case "Item":
		{
			if ((_data select 0) in assignedItems player) then {
				player unassignItem (_data select 0);
			};
			player removeItem (_data select 0);
		};
		case "Weapon":
		{
			_weapon = _data select 0;
			_ii = true;
			if (_weapon != primaryWeapon player && _weapon != secondaryWeapon player) then {
				_ii = false; 
			}; 

			if (_weapon == primaryWeapon player) then {
				if (count primaryWeaponMagazine player > 0) then {
					lockerGear pushBack [(primaryWeaponMagazine player) select 0, "Magazine"];
				};
				{
					if (_x != "") then {
						lockerGear pushBack [_x, "Item"];
					};
				} forEach (primaryWeaponItems player);
			};

			if (_weapon == secondaryWeapon player) then {
				if (count secondaryWeaponMagazine player > 0) then {
					lockerGear pushBack [(secondaryWeaponMagazine player) select 0, "Magazine"];
				};

				{
					if (_x != "") then {
						lockerGear pushBack [_x, "Item"];
					};
				} forEach (secondaryWeaponItems player);
			};

			if (_ii) then {
				player removeWeapon _weapon;
			} else {
				player removeItem _weapon;
			};
		};
		case "Headgear":
		{
			removeHeadgear player;
		};
	};
	lockerGear pushBack _data;

	_locker pushBack [lockerKind, lockerGear];
	player setVariable ["locker", _locker, true];

	[cursorObject, false] call HRP_fnc_openLocker;
};