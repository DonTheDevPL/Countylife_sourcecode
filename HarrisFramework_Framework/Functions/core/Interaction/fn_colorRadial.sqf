/*
	Author: Ben Harris
	Description: Changes the Colour of the Radial
*/

HRP_fnc_colorRadial = {
	params["_id", "_type"];

	_images = [1199,1201,1202,1203,1204,1205,1206,1207];
	_ctrl = _images select _id;

	if (_type isEqualTo 1) then {
		((findDisplay 5055) displayCtrl _ctrl) ctrlSetTextColor [0.1,0.66,0.94,0.75];
	} else {
		((findDisplay 5055) displayCtrl _ctrl) ctrlSetTextColor [1,1,1,0.75];
	};
};