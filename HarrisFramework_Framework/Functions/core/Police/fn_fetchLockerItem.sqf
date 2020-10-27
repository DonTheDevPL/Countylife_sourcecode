/*
	Author: Ben Harris
	Description: Fetches an Item from your locker
*/

HRP_fnc_fetchLockerItem = {
	_locker = player getVariable "locker";

	_lockerType = HRP_curLocker getVariable "lockerType";

	_data = call compile (lbData [1500, ( lbCurSel 1500 )]);

	if (isNil '_data') exitWith { ["Error", "Musisz wybrać przedmiot do wyjęcia!", true] spawn HRP_fnc_Notifications; };
	test = _data;
	_removed = false;
	_isFound = false;

	_count = 0;
	{
		if ((_x select 0) isEqualTo _lockerType) then {
			lockerGear = _x select 1;
			lockerKind = _x select 0;
			_locker deleteAt _count;
		};
		_count = _count + 1;
	} forEach _locker;

	_count = 0;
	{
		if (_x isEqualTo _data && !(_isFound)) then {
			_type = _data select 1;
			test = _type;
			switch (_type) do
			{
				case "Uniform":
				{
					player addUniform (_data select 0);
				};
				case "Vest":
				{
					player addVest (_data select 0);
				};
				case "Backpack":
				{
					player addBackpack (_data select 0);
				};
				case "Magazine":
				{
					player addMagazine (_data select 0);
				};
				case "Item":
				{
					player addItem (_data select 0);
				};
				case "Weapon":
				{
					player addWeapon (_data select 0);
				};
				case "Headgear":
				{
					player addHeadgear (_data select 0);
				};
			};
			lockerGear deleteAt _count;

			_isFound = true;
		};
		_count = _count + 1;
	} forEach lockerGear;

	_locker pushBack [lockerKind, lockerGear];
	player setVariable ["locker", _locker, true];

	[cursorObject, false] call HRP_fnc_openLocker;
};	