/*
	Author: Ben Harris
	Description: Loads the Houses Locally - Pushes house into HouseArray and Creates a House Marker
*/
HRP_fnc_LoadHouseLocal = {
	params["_houses"];
	H_Houses = _houses;
	HRP_Houses = [];

	{
		_position = _x select 2;
		_id = _x select 0;
		_id = str _id;
		_house = nearestObject _position;
		HRP_Houses pushBack _house;

		_markerstr = createMarkerLocal [_id, _position]; 
		_markerstr setMarkerShapeLocal "ICON"; 
		_markerstr setMarkerTypeLocal "HRP_icon_builder"; 
		_markerstr setMarkerSizeLocal [1,1]; 
		_markerstr setMarkerTextLocal "Your House";

		_house setVariable ["Owner", player];
		_house setVariable ["OwnerUID", getPlayerUID player];
		_house setVariable ["Purchased", true, true];

		[_house] call HRP_fnc_lockHouse;
	} foreach _houses;
};