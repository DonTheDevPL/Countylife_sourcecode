/*
	Author: Ben Harris
	Description: Creates Tow Marker
*/
HRP_fnc_callTowDriver = {
	params["_car", "_id"];

	_itemMarker = createMarkerLocal [_id, position _car];	
	_itemMarker setMarkerShapeLocal "ICON";
	_itemMarker setMarkerTypeLocal "HRP_icon_truck";
	_itemMarker setMarkerTextLocal "!!Towing Requested!!";
	_itemMarker setMarkerColorLocal "ColorRed";

	["Zadanie", "Ktoś potrzebuje pomocy mechanika", true] spawn HRP_fnc_Notifications;

	waitUntil {!isNil {_car getVariable 'roped'}};

	deleteMarker _itemMarker;

	["Zadanie zakończone", "Mechanik odpowiedział na wezwanie", true ] spawn HRP_fnc_Notifications;
};