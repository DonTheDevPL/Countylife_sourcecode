/*
	Author: Ben Harris
	Description: Allows you to rob up to 3 Lockboxes
*/

HRP_fnc_robLockBox = {

	player playMove "Acts_carFixingWheel";
	sleep 20;
	_chance = round (random 2);

	if (_chance != 0) then {
		_item = selectRandom HRP_lockBoxArray;
		_itemID = _item select 0;
		_type = _item select 2;
		robLockBoxCount = round (random (_item select 1));

		if (robLockBoxCount isEqualTo 0) then {
			robLockBoxCount = 1;
		} ;

		HRP_lockBoxesRobbed = HRP_lockBoxesRobbed + 1;
		
		switch (_type) do 
		{
			case "Magazine":
			{
				displayName = getText(configFile >> "CfgMagazines" >> _itemID >> "displayName");
				for "_i" from 1 to robLockBoxCount do {
					player addMagazine _itemID;
				};
			};
			case "Item":
			{
				displayName = getText(configFile >> "CfgWeapons" >> _itemID >> "displayName");
				for "_i" from 1 to robLockBoxCount do {
					player addItem _itemID;
				};
			};
			case "Weapon":
			{
				displayName = getText(configFile >> "CfgWeapons" >> _itemID >> "displayName");
				for "_i" from 1 to robLockBoxCount do {
					player addMagazine _itemID;
				};
			};
		};

		_msg = format ["You robbed the lockbox and found %1 %2(s)", robLockBoxCount,displayName];
		["Sukces", _msg, true] spawn HRP_fnc_Notifications;
	} else {
		["Task Failed", "Nie udało ci się włamać.", true] spawn HRP_fnc_Notifications;
	};
};
