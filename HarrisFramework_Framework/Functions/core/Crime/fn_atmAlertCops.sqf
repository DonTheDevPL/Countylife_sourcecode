/*
	Author: Ben Harris
	Description: Alerts the Cops of an attempted ATM Robbery
*/
HRP_fnc_atmAlertCops = {
	params["_pos"];
	systemChat "ATM ROBBERY DETECTED! WARNING!";	
	systemChat "ATM ROBBERY DETECTED! WARNING!";
	systemChat "ATM ROBBERY DETECTED! WARNING!";

	_pos = getPos _pos;
	_id = round (random 1000);

	_markerstr = createMarkerLocal [_id, _pos]; 
	_markerstr setMarkerShapeLocal "ICON"; 
	_markerstr setMarkerTypeLocal "HRP_icon_bandit"; 
	_markerstr setMarkerSizeLocal [1,1]; 
	_markerstr setMarkerTextLocal "ATM ROBBERY!";

	sleep 300;

	deleteMarkerLocal _markerstr;
};