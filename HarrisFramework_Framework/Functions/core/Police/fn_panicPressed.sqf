/*
	Author: Ben Harris
	Description: Broadcast receiving for Panic Button being pressed
*/

HRP_fnc_panicPressed = {
	params["_pos"];
	if (player getVariable ["cop", 0] > 0) then {
		systemChat "Panic Button Pressed";
		HRP_panicMarker = createMarkerLocal ["panicButton", [_pos select 0, _pos select 1]];
		HRP_panicMarker setMarkerColor "ColorRed";
		HRP_panicMarker setMarkerText "Panic Button Pressed";
		HRP_panicMarker setMarkerType "mil_warning";
	};
};