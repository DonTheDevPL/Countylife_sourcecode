/*
	Author: Ben Harris
	Description: Spawns in Furniture On load
*/

HRP_fnc_spawnFurniture = {
	
	_furniture = player getVariable "furnitureToSpawn";
	HRP_toSetFurniture = [];
	{
		_toSpawn = (_x select 0) createVehicle [0,0,0];
		_toSpawn allowDamage false;
		_toSpawn enableSimulation false; 
		_toSpawn setPosAtl (_x select 1);
		_toSpawn setDir (_x select 2);
		_toSpawn setVariable ["Owner", player];
		_toSpawn setVariable ["OwnerUID", (_x select 3)];
		_thisFurniture = [_toSpawn, _x select 0, _x select 1, _x select 2, _x select 3];
		HRP_toSetFurniture pushBack _thisFurniture;

	} forEach _furniture;

	player setVariable ["furniture", HRP_toSetFurniture, true];
	player setVariable ["furnitureToSpawn", nil, true];
};