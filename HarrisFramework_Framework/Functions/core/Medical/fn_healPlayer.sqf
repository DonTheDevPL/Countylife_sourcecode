/*
	Author: Ben Harris
	Description: Heals the Player
*/

HRP_fnc_healPlayer = {
	params["_ammount", "_id"];

	player playAction "Medic";
	closeDialog 0;

	sleep 1;
	player removeItem _id;
	sleep 1;

	if (damage player < 0.3) exitWith {};
	if (damage player - _ammount < 0.3) then {
		player setDamage 0.3;
	} else {
		player setDamage (damage player - _ammount);
	};

	["Success", "You have bandaged your wounds", true] spawn HRP_fnc_Notifications;
};

