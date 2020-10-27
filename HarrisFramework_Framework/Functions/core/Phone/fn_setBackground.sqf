/*
	Author: Ben Harris
	Description: Sets the Phone Background
*/

HRP_fnc_setBackground = {
	params["_id"];

	player setVariable ["background", _id, true];

	_msg = format ["Background set to %1", _id];

	closeDialog 0;
	[] call HRP_fnc_openPhone;
};
