params ["_player", "_id", "_uid", "_name", "_isLogout"];

if (_player getVariable "loadedIn") then {

	if (isNil "_isLogout") then {
		_isLogout = false;
	};
	
	_countLevel = _player getVariable "identityCount";

	_cash = _player getVariable "cash";
	_bank = _player getVariable "bank";
	_licenses = _player getVariable "licenses";
	_outStandingPay = _player getVariable "outStandingPay";
	_background = _player getVariable "background";
	_bluePrints = _player getVariable "bluePrints";
	_furniture = _player getVariable "furniture";
	_ringTone = _player getVariable "ringTone";


	_arrestTime = _player getVariable "arrestTime";

	_arrestNotes = _player getVariable "arrestNotes";

	_arrestCrimes = _player getVariable "arrestCrimes";

	_yourNumber = _player getVariable "yourNumber";

	_contactList = _player getVariable "contactList";

	_identities = _player getVariable "identities";

	_reporter = _player getVariable "reporter";

	_locker = _player getVariable "locker";

	_furnitureToSave = [];
	{
		if !(isNull (_x select 0)) then {
			if (((_x select 0) getVariable "OwnerUID") isEqualTo _uid) then {
				_value = [_x select 1, _x select 2, _x select 3, _x select 4];
				_furnitureToSave pushBack _value;
			};
		};
	} forEach _furniture;

	_arrHandle = _player getVariable "arrestTimeToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_arrestTime" && isNil "_countLevel") then {
		_arrHandle pushBack [_arrestTime, _countLevel];
		_arrestTime = _arrHandle;
	};

	_arrHandle = _player getVariable "arrestNotesToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_arrestNotes" && isNil "_countLevel") then {
		_arrHandle pushBack [_arrestNotes, _countLevel];
		_arrestNotes = _arrHandle;
	};

	_arrHandle = _player getVariable "arrestCrimesToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_arrestCrimes" && isNil "_countLevel") then {
		_arrHandle pushBack [_arrestCrimes, _countLevel];
		_arrestCrimes = _arrHandle;
	};

	_arrHandle = _player getVariable "yourNumberToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_yourNumber" && isNil "_countLevel") then {
		_arrHandle pushBack [_yourNumber, _countLevel];
		_yourNumber = _arrHandle;
	};

	_arrHandle = _player getVariable "contactListToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_contactList" && isNil "_countLevel") then {
	_arrHandle pushBack [_contactList, _countLevel];
	_contactList = _arrHandle;
	};

	_arrHandle = _player getVariable "reporterToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_reporter" && isNil "_countLevel") then {
		_arrHandle pushBack [_reporter, _countLevel];
		_reporter = _arrHandle;
	};

	_arrHandle = _player getVariable "lockerToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_locker" && isNil "_countLevel") then {
		_arrHandle pushBack [_locker, _countLevel];
		_locker = _arrHandle;
	};


	_items = [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)];
	_clothes = [(uniform _player), (vest _player), (backpack _player), (headgear _player)];
	_weapons = [];
	if (primaryWeapon _player != "") then {
		_weapons pushBack [0, primaryWeapon _player, primaryWeaponMagazine _player, primaryWeaponItems _player, _player ammo (primaryWeapon _player)];
	};
	if (secondaryWeapon _player != "") then {
		_weapons pushBack [1, secondaryWeapon _player, secondaryWeaponMagazine _player, secondaryWeaponItems _player, _player ammo (secondaryWeapon _player)];
	};
	if (handgunWeapon _player != "") then {
		_weapons pushBack [2, handgunWeapon _player, handgunMagazine _player, handgunItems _player, _player ammo (handgunWeapon _player)];
	};

	_arrHandle = _player getVariable "itemsToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;
	if !(isNil "_countLevel") then {
		_arrHandle pushBack [_items, _countLevel];
		_items = _arrHandle;
	};

	_arrHandle = _player getVariable "clothesToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_countLevel") then {
		_arrHandle pushBack [_clothes, _countLevel];
		_clothes = _arrHandle;
	};

	_arrHandle = _player getVariable "weaponsToSelect";
	_count = 0;
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	if !(isNil "_countLevel") then {
		_arrHandle pushBack [_weapons, _countLevel];
		_weapons = _arrHandle;
	};

	_updatestr = format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:%18:%19:%20", _items, _clothes, _weapons, _cash, _bank, _licenses, _arrestTime, _arrestNotes ,_arrestCrimes, str _outStandingPay, _yourNumber, _contactList, _background, _identities, _reporter, _bluePrints, _furnitureToSave, _locker, _ringTone, _uid];
	if (_updatestr find "null" > 0) exitWith { diag_log "Bug Avoided"; };
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

	if (_isLogout) then {
		[_player] call HRP_fnc_removeFurnitureLogout;
	};
};