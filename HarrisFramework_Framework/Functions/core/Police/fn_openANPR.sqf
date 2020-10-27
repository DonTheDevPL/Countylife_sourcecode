/*
	Author: Ben Harris
	Description: ANPR System for Police
*/

HRP_fnc_openANPR = {
	params["_type"];

	if (_type isEqualTo true) then {
		player forceWalk true;

		21 cutRsc ["HRP_ANPR","PLAIN"];
		_ANPR = uiNamespace getVariable ["HRP_ANPR",displayNull];
		_speedText = _ANPR displayCtrl 6123;
		_plateText = _ANPR displayCtrl 1523;	

		_speedText ctrlSetText "0 km/h";
		_plateText ctrlSetText "Unknown";
		test = 1;
		HRP_openANPR = true;
		while {true} do
		{
			_ct = cursorObject;
			if (_ct isKindOf "Car") then {
				_speed = speed _ct;
				_plate = _ct getVariable "PlateID";

				if (_speed < 0) then {
					_speed = 0;
				};

				_textToSet = format ["%1 km/h", _speed];
				_speedText ctrlSetText _textToSet;
				_plateText ctrlSetText _plate;
				test = test + 1;

			};
			sleep 0.1;

			if !(HRP_openANPR) exitWith {};

			if ((!(vehicle player isKindOf "Car" && player getVariable "cop" > 0) && currentWeapon player != "Radar_Gun")) exitWith { HRP_openANPR = false; player forceWalk false; 21 cutText ["","PLAIN"]; };
		};
	} else {
		HRP_openANPR = false;
		player forceWalk false;
		21 cutText ["","PLAIN"];
	};	
};

