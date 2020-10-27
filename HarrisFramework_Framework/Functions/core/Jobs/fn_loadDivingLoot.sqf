/*
	Author: Ben Harris
	Description: Loads in Gear for Diving
*/
HRP_fnc_loadDivingLoot = {
	
	_count = 0;
	holsters = [];
	_totalCount = (count HRP_wreckMarkers) / 2;
	{
		if (_count < _totalCount) then {
			_wreck = format["Wreck_%1", (selectRandom HRP_wreckMarkers)];
			HRP_Pos = getMarkerPos _wreck;

			_wreck = selectRandom HRP_Wrecks;
			_wreckModel = _wreck select 0;

			_wreckInWorld = _wreckModel createVehicle HRP_Pos;
			_wreckType = _wreck select 1;
			_lootAmmount = _wreck select 2;
			HRP_lootAmmount = _lootAmmount;

			{
				if (_x select 0 == _wreckType) then {
					_loot = _x select 1;
					HRP_Loot = _loot;
				};
			} forEach HRP_wreckLoot;

			HRP_lootPos = getPos _wreckInWorld;

			for "_i" from 0 to _lootAmmount do {
				_lootToCreate = selectRandom HRP_Loot;
				HRP_Loot2 = _lootToCreate;

				_value = round (random 4);

				_xPos = round (random 30);
				_yPos = round (random 30);
				switch (_value) do 
				{
					case 1:
					{
						HRP_pos = [(HRP_lootPos select 0) + _xPos, (HRP_lootPos select 1) + _yPos,(HRP_lootPos select 2)];
					};
					case 2:
					{
						HRP_pos = [(HRP_lootPos select 0) - _xPos, (HRP_lootPos select 1) - _yPos,(HRP_lootPos select 2)];
					};
					case 3:
					{	
						HRP_pos = [(HRP_lootPos select 0) + _xPos, (HRP_lootPos select 1) - _yPos,(HRP_lootPos select 2)];
					};
					case 4:
					{
						HRP_pos = [(HRP_lootPos select 0) - _xPos, (HRP_lootPos select 1) + _yPos,(HRP_lootPos select 2)];
					};
				};
				HRP_Holster = "plp_bo_CrateLaRosa" createVehicle HRP_pos;
				holsters pushBack str HRP_Holster;

				clearMagazineCargoGlobal HRP_Holster;

				switch (_lootToCreate select 1) do
				{
					case "Item":
					{
						{
								HRP_Holster addItemCargoGlobal [_x,1];
						} forEach (_lootToCreate select 0);
					};
					case "Weapon":
					{
						{
								HRP_Holster addWeaponCargoGlobal [_x,1];
						} forEach (_lootToCreate select 0);
					};
				};
			};
			_count = _count + 1;
		};
	} forEach HRP_wreckMarkers;
};