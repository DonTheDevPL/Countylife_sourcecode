/*
	Author: Ben Harris
	Description: Checks if a player is near a garage
*/
HRP_fnc_nearGarageMarker = {
	params["_distance"];

	_toReturn = false;

	{
		if ((player distance (getMarkerPos _x)) <= _distance) then {
			_toReturn = true;
		};
	} forEach HRP_garageMarkers;	

	if (!((nearestObjects [player, ["A3L_Savepoint"],_distance]) isEqualTo [])) then {
		_toReturn = true;
	};

	_toReturn;
};