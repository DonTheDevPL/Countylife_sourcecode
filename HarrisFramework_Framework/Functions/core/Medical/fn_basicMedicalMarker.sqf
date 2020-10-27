/*
	Author: Ben Harris
	Description: Requests Medics
*/
HRP_fnc_basicMedicalMarker = {
	params["_as","_uid","_positionPlayer"];

	if (_as == 0) then {
		_unconsciousMarker = createMarkerLocal [_uid, _positionPlayer];	
		_unconsciousMarker setMarkerShapeLocal "ICON";
		_unconsciousMarker setMarkerTypeLocal "KIA";
		_unconsciousMarker setMarkerTextLocal "[EMS] Medical Assistance Required";
		_unconsciousMarker setMarkerColorLocal "ColorRed";
	} else {
		deleteMarker _uid;
	};
};