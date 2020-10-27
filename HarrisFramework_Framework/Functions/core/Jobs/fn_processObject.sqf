/*
	Author: Ben Harris
	Description: Processes an Object
*/

HRP_fnc_processObject = {
	params["_object", "_count", "_ct", "_type"];

	_ammount = [];

	{
		if (_x isEqualTo _object) then {
			_ammount pushBack _x;
		};
	} forEach backpackItems player;

	{
		if (_x isEqualTo _object) then {
			_ammount pushBack _x;
		};
	} foreach uniformItems player;

	{
		if (_x isEqualTo _object) then {
			_ammount pushBack _x;
		};
	} foreach vestItems player;

	if ((count _ammount) < _count) exitWith { ["Error", "Nie masz wystarczająco dużo przedmiotów", true] spawn HRP_fnc_notifications; };

	{
		if (_object isEqualTo (_x select 0)) then {
			_toCount = _count;
			_message = format ["Przetwarzam %1 %2", _count, _x select 2];
			["Przetwarzam", _message, true] spawn HRP_fnc_notifications;
			while {_toCount > 0} do
			{
				player removeItem (_x select 0);
				_count = _count - 1;
			};

			_playSound = true;
			[_ct] spawn HRP_fnc_generatorLoop;

			sleep (_x select 3);
			_playSound = false;

			
			while {_count > 0} do
			{
				player addItem (_x select 1);
				_count = _count - 1;
			};
			_value = round (random 10);

			if (_value == 1) exitWith { Processed = true; "R_60mm_HE" createvehicle (getPosatl _ct); };

			Processed = true;

			if (Processed) exitWith { 
				_msg = format ["Przetworzono %1 %2", _count, _x select 2];
				["Przetwarzanie zakończone", _msg, true] spawn HRP_fnc_notifications;
			};
		};
	} forEach HRP_objectsToProcess;
};
