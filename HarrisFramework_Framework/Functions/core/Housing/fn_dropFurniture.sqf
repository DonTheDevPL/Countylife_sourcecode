/*
	Author: Ben Harris
	Description: Drops the Furniture
*/

HRP_fnc_dropFurniture = {
	_furniture = player getVariable "carryingObject";
	_count = 0;
	_count2 = 0;

	if (isNil {_furniture getVariable 'Owner'}) then {
		_furniture setVariable ["OwnerUID", getplayerUID player, true];	
		_furniture setVariable ["Owner", player, true];
	};

	{
		_house = typeOf _x;
		{
			if (_x select 0 == _house) then {
				HRP_houseRange = _x select 2;
				_count = 1;
			};
		} forEach HRP_housePriceArray;

		if (_count != 1) then {
			HRP_houseRange = 20;
		};
		if ((_furniture distance _x) <= HRP_houseRange) then {
			_count2 = 1;
		};
	} forEach HRP_Houses;


	if (_count2 isEqualTo 0) exitWith {
		detach _furniture;
		if !(isNil {_furniture getVariable 'Owner'}) then {
			{
				_count = 0;
				_player = _x;
				{
					if (_x select 0 isEqualTo _furniture) then {
						_furnitureOwned = _player getVariable "furniture";
						_furnitureOwned deleteAt _count;
						_player setVariable ["furniture", _furnitureOwned];
					};
					_count = _count + 1;
				} forEach (player getVariable "furniture");	
			} forEach allPlayers;	
		};

		_furniture setVariable ["OwnerUID", nil, true];	
		_furniture setVariable ["Owner", nil, true];
		player setVariable ["carryingObject", nil];
	};

	detach _furniture;

	
	if ((_furniture getVariable "Owner") isEqualTo player) then {
		HRP_furniture = player getVariable "furniture";

		_toPush = [_furniture, typeOf _furniture, getPosAtl _furniture, getDir _furniture, getPlayerUID player];

		_count = 0;

		{	
			if ((_x select 0) isEqualTo (_toPush select 0)) then {
				HRP_furniture deleteAt _count;
			};
			_count = _count + 1;
		} forEach HRP_furniture;	
		
		HRP_furniture pushBack _toPush;
		player setVariable ["furniture", HRP_furniture, true];
	};

	player setVariable ["carryingObject", nil];

	_furniture setDir (getDir _furniture);
	_furniture setPosAtl (getPosAtl _furniture);

	sleep 5;

	_furniture enableSimulation false;
};