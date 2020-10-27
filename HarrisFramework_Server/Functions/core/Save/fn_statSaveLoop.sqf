

for "_i" from 0 to 1 step 0 do {
	sleep 300;
	{
		_uid = getPlayerUID _x;
		
		_checkstr = format ["existPlayerInfo:%1", _uid];
		_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
		_booli = (_check select 0) select 0;
		
		_loadedIn = _x getVariable "loadedIn";
		
		if (!(isNil {_x}) && alive _x && _booli && _loadedIn) then {
			
			_countLevel = _x getVariable "identityCount";

			_cash = _x getVariable "cash";
			_bank = _x getVariable "bank";
			_licenses = _x getVariable "licenses";
			_outStandingPay = _x getVariable "outStandingPay";
			_background = _x getVariable "background";
			_bluePrints = _x getVariable "bluePrints";
			_furniture = _x getVariable "furniture";
			_ringTone = _x getVariable "ringTone";


			_arrestTime = _x getVariable "arrestTime";

			_arrestNotes = _x getVariable "arrestNotes";

			_arrestCrimes = _x getVariable "arrestCrimes";

			_yourNumber = _x getVariable "yourNumber";

			_contactList = _x getVariable "contactList";

			_identities = _x getVariable "identities";

			_reporter = _x getVariable "reporter";

			_locker = _x getVariable "locker";

			_furnitureToSave = [];
			{
				if (((_x select 0) getVariable "OwnerUID") isEqualTo (getPlayerUID _x)) then {
					_value = [_x select 1, _x select 2, _x select 3, _x select 4];
					_furnitureToSave pushBack _value;
				};
			} forEach _furniture;

			_locker = _x getVariable "locker";

			_ringTone = _x getVariable "ringTone";

			_position = position _x;
			_items = [(uniformItems _x), (vestItems _x), (backpackItems _x), (assignedItems _x)];
			_clothes = [(uniform _x), (vest _x), (backpack _x), (headgear _x)];
			_weapons = [];
			if (primaryWeapon _x != "") then {
				_weapons pushBack [0, primaryWeapon _x, primaryWeaponMagazine _x, primaryWeaponItems _x, _x ammo (primaryWeapon _x)];
			};
			if (secondaryWeapon _x != "") then {
				_weapons pushBack [1, secondaryWeapon _x, secondaryWeaponMagazine _x, secondaryWeaponItems _x, _x ammo (secondaryWeapon _x)];
			};
			if (handgunWeapon _x != "") then {
				_weapons pushBack [2, handgunWeapon _x, handgunMagazine _x, handgunItems _x, _x ammo (handgunWeapon _x)];
			};


			_arrHandle = _x getVariable "arrestTimeToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_arrestTime, _countLevel];
			_arrestTime = _arrHandle;

			_arrHandle = _x getVariable "arrestNotesToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_arrestNotes, _countLevel];
			_arrestNotes = _arrHandle;

			_arrHandle = _x getVariable "arrestCrimesToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_arrestCrimes, _countLevel];
			_arrestCrimes = _arrHandle;

			_arrHandle = _x getVariable "yourNumberToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_yourNumber, _countLevel];
			_yourNumber = _arrHandle;

			_arrHandle = _x getVariable "contactListToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_contactList, _countLevel];
			_contactList = _arrHandle;

			_arrHandle = _x getVariable "reporterToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_reporter, _countLevel];
			_reporter = _arrHandle;

			_arrHandle = _x getVariable "lockerToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_locker, _countLevel];
			_locker = _arrHandle;
			

			_arrHandle = _x getVariable "itemsToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_items, _countLevel];
			_items = _arrHandle;

			_arrHandle = _x getVariable "clothesToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_clothes, _countLevel];
			_clothes = _arrHandle;

			_arrHandle = _x getVariable "weaponsToSelect";
			_count = 0;
			{
				if ((_x select 1) isEqualTo _countLevel) then {
					_arrHandle deleteAt _count;
				};
				_count = _count + 1;
			} forEach _arrHandle;
			_arrHandle pushBack [_weapons, _countLevel];
			_weapons = _arrHandle;

			_updatestr = format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:%18:%19:%20", _items, _clothes, _weapons, _cash, _bank, _licenses, _arrestTime, _arrestNotes ,_arrestCrimes, str _outStandingPay, _yourNumber, _contactList, _background, _identities, _reporter, _bluePrints, _furnitureToSave, _locker, _ringTone,_uid];
			if (_updatestr find "null" > 0) exitWith { diag_log "Bug Avoided"; };
			_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
		};
	}forEach allPlayers;
};