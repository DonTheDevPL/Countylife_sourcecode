/*
	Author: Ben Harris
	Description: Picks up Furniture
*/
HRP_fnc_pickUpFurniture = {
	params["_ct"];


	_dir = getDir player;
	_dir2 = getDir _ct;

	_ct attachTo [player];

	_dirFinal = _dir2 - _dir;
	HRP_dir = _dirFinal;
	_ct setDir _dirFinal;

	player setVariable ["carryingObject", _ct];

	if (isPlayer player) then {
		_msg = "<t align = 'center' shadow = '1' size='1.3' font='PuristaBold'>Red Roleplay<br />Furniture Ssytem</t> <br /><br /><t align = 'center' shadow = '1' size='1' font='PuristaBold'>Basic Controls</t> <br /><br /><t align = 'center' shadow = '1' size='1' color='#00f428' font='PuristaBold'>Page UP -> Raise</t> <br /><br /><t align = 'center' shadow = '1' size='1' color='#D00000' font='PuristaBold'>Page DOWN -> Lower</t>";

		hintSilent parseText (_msg);

		sleep 8;

		hintSilent "";
	};
};