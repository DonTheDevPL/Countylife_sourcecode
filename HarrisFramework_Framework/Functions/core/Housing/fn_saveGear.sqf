/*
	Author: Ben Harris
	Description: Saves House Crate Gear PRE Query
*/

HRP_fnc_saveGear = {
	params["_loc"];
	HRP_Containers = nearestObjects [_loc, ["B_supplyCrate_F"], 20];
	HRP_finalArray = [];
	{
		_position = position _x;
		_position = str position _x;
		HRP_positionMarker = _x;
		_array = ['Container', "B_supplyCrate_F", _position];
		_backpacks = backpackCargo _x;
		_mags = magazineCargo _x;
		_weps = weaponCargo _x;
		_items = itemCargo _x;

		_aarray = [];
		_aarray pushBack _array;
		_aarray pushBack _backpacks;
		_aarray pushBack _mags;
		_aarray pushback _weps;
		_aarray pushBack _items;
		HRP_finalArray pushBack _aarray;
	} foreach HRP_Containers;

	_house = nearestBuilding HRP_positionMarker;

	_Owner = _house getVariable "OwnerUID";
	HRP_Owner = _owner;

	[HRP_finalArray, HRP_Owner] remoteExecCall ["Server_fnc_UpdateHouseGear", 2];
};

//["Test", '76561198099644981', player] remoteExecCall ["Server_fnc_UpdateHouseGear", 2];
