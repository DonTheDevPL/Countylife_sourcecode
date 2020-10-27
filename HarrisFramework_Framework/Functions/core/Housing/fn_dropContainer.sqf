/*
	Author: Ben Harris
	Description: Places a container down.
*/

HRP_fnc_dropContainer = {
	
	{
		if (_x distance HRP_objectHouse < 15) exitWith { hint "You must place this in your house"; };
		if (typeOf _x isEqualTo "B_supplyCrate_F")	then {
			detach _x;
		};
	} foreach attachedObjects player;
};