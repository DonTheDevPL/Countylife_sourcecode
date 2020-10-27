HRP_fnc_AlertCops = {
	_pos = _this select 0;
	systemChat "NAPAD NA SKLEP W TRAKCIE!!";
	systemChat "NAPAD NA SKLEP W TRAKCIE!!";
	systemChat "NAPAD NA SKLEP W TRAKCIE!!";

	_id = round(random 1000);
	_markerstr = createMarkerLocal [_id,_pos];
	_markerstr setMarkerShapeLocal "ICON";
	_markerstr setMarkerTypeLocal "HRP_icon_bandit";
	_markerstr setMarkerSizeLocal [1,1];
	_markerstr setMarkerTextLocal "NAPAD NA SKLEP!";
	sleep 300;
	deleteMarkerLocal _markerstr;
};