/*
	Author: Ben Harris
	Description: Creates Furniture - WHAT THE HECK DID YOU THINK IT DOES?
*/

HRP_fnc_createFurniture = {
	params["_type"];
	_pos = position player;
	_furniture = _type createVehicle _pos;
	_furniture attachTo [player, [0,2,1]];

	_furniture allowDamage false;

	player setVariable ["carryingObject", _furniture, true];

	if (isPlayer player) then {
		_msg = "<t align = 'center' shadow = '1' size='1.3' font='PuristaBold'>Red Roleplay<br />Furniture System</t> <br /><br /><t align = 'center' shadow = '1' size='1' font='PuristaBold'>Basic Controls</t> <br /><br /><t align = 'center' shadow = '1' size='1' color='#00f428' font='PuristaBold'>Page UP -> Raise</t> <br /><br /><t align = 'center' shadow = '1' size='1' color='#D00000' font='PuristaBold'>Page DOWN -> Lower</t>";

		hintSilent parseText (_msg);

		sleep 8;

		hintSilent "";
	};

	if (_type == "red_locker") then {
		_furniture setVariable ["lockerType", "Civ", true];
	};
};