/*
	Author: Ben Harris
	Description: Opens the Player's Locker
*/

HRP_fnc_openLocker = {
	params["_ct", "_loadType"];

	_lockerType = _ct getVariable "lockerType";

	HRP_locker = player getVariable "locker";

	if (_lockerType == "Cop" && (player getVariable "cop" <= 0)) exitWith { ["Error", "Musisz być na służbie, aby schować przedmiot do szafki", true] spawn HRP_fnc_Notifications; };

	found = false;
	{
	test2 = _x select 0;
		if ((_x select 0) isEqualTo _lockerType) then {
			lockerGear = _x select 1;
			found = true;
		}
	} forEach HRP_locker;

	test = _lockerType;
	if !(found) exitWith { ["Bład", "To zła szafka", true] spawn HRP_fnc_Notifications; };

	if (_loadType) then {
		createDialog "HRP_lockerMenu";
	};

	lbClear 1500;
	lbClear 1501;

	{
		_ID = _x select 0;
		_type = _x select 1;
		switch (_type) do 
		{
			case "Uniform":
			{
				displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
			};
			case "Vest":
			{
				displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
			};
			case "Backpack":
			{
				displayName = getText(configFile >> "CfgVehicles" >> _ID >> "displayName");
			};
			case "Magazine":
			{
				displayName = getText(configFile >> "CfgMagazines" >> _ID >> "displayName");
			};
			case "Item":
			{
				displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
			};
			case "Weapon":
			{
				displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
			};
			case "Headgear":
			{
				displayName = getText(configFile >> "CfgWeapons" >> _ID >> "displayName");
			};
		};
		_index = lbAdd [1500, displayName];
		lbSetData [1500, _index, str _x];
	} forEach lockerGear;

	playerItems = [];
	{
		_displayName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
		_toPush = [_displayName,[ _x, "Item"]];
		if !(_x in weapons player) then {
			playerItems pushBack _toPush;
		};
	} forEach items player;

	{
		_displayName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
		_toPush = [_displayName,[ _x, "Item"]];
		playerItems pushBack _toPush;
	} forEach assignedItems player;

	{
		_displayName = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
		_toPush = [_displayName, [_x, "Weapon"]];
		playerItems pushBack _toPush;
	} forEach weapons player;

	{
		_displayName = getText(configFile >> "CfgMagazines" >> _x >> "displayName");
		_toPush = [_displayName, [_x, "Magazine"]];
		playerItems pushBack _toPush;
	} forEach magazines player;

	{
		_displayName = getText(configFile >> "CfgMagazines" >> _x >> "displayName");
		_toPush = [_displayName, [_x, "Magazine"]];
		playerItems pushBack _toPush;
	} forEach primaryWeaponMagazine player;

	{
		_displayName = getText(configFile >> "CfgMagazines" >> _x >> "displayName");
		_toPush = [_displayName, [_x, "Magazine"]];
		playerItems pushBack _toPush;
	} forEach secondaryWeaponMagazine player;

	if (uniform player != "") then {
		_uniform = getText(configFile >> "CfgWeapons" >> uniform player >> "displayName");
		_toPush = [_uniform, [uniform player, "Uniform"]];
		playerItems pushBack _toPush;
	};

	if (backpack player != "") then {
		_backpack = getText(configFile >> "CfgVehicles" >> backpack player >> "displayName");
		_toPush = [_backpack , [backpack player, "Backpack"]];
		playerItems pushBack _toPush;
	};
	if (headgear player != "") then {
		_headgear = getText(configFile >> "CfgWeapons" >> headgear player >> "displayName");
		_toPush = [_headgear , [headgear player, "Headgear"]];
		playerItems pushBack _toPush;
	};

	if (vest player != "") then {
		_vest = getText(configFile >> "CfgWeapons" >> vest player >> "displayName");
		_toPush = [_vest, [vest player, "Vest"]];
		playerItems pushBack _toPush;
	};

		{
			_index = lbAdd [1501, _x select 0];
			lbSetData [1501, _index, str (_x select 1)];
		} forEach playerItems;

		HRP_curLocker = _ct;
};