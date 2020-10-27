/*
	Author: Ben Harris
	Description: Creates a housing container and pushes into Array so it can be saved.
*/

HRP_fnc_createContainer = {
		HRP_objectHouse = position player;
		_pos = position player;
		_container = createSimpleObject ["B_supplyCrate_F", _pos];
		HRP_Containers pushback _container;
		_container attachTo [player, [0,3,1]];
};