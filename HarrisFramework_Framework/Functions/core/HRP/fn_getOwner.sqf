/*
	Author: Ben Harris
	Description: Gets the Vehicle Owner
*/
HRP_fnc_getOwner = {
	params ["_ct"];

	_owner = _ct getVariable "PlateID";
	_msg = format ["Vehicle Registration Number: %1", _owner];
	systemChat _msg;
	hint _msg;
};