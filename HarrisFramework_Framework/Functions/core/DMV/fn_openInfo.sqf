/*
	Author: Ben Harris
	Description: Opens Player Information
*/

HRP_fnc_openInfo = {
	params["_target"];

	createDialog "HRP_viewInfo";

	_cash = _target getVariable "cash";
	_value = [_cash] call HRP_fnc_numberToText;
	ctrlSetText [1000, ("$" + _value)];

	_licenses = _target getVariable "licenses";

	_identity = _target getVariable "identity";

	_Trainings = _target getVariable "trainings";
	if (isNil '_Trainings') then {
		_Trainings = [];
	};

	_badges = [1202,1204,1205];

	_driverLicenseIDC = [1206,1012,1007,1008,1009,1010,1011];

	{
		ctrlShow [_x, false];
	} forEach _driverLicenseIDC;

	{
		ctrlShow [_x, false];
	} forEach _badges;

	switch (true) do
	{
		case (_target getVariable ["EMS", 0] > 0):
		{
			ctrlShow [1202, true];
		};
		case (_target getVariable ["Cop", 0] > 0):
		{
			ctrlShow [1204, true];
		};
		case (_target getVariable ["primeMinister", 0] > 0):
		{
			ctrlShow [1205, true];
		};
	};

	{
			_license = _x select 1;
			//_licenseCompiled = (call compile _licenseArray) select 0;
			if (_license in _licenses) then {
				_index = lbAdd [1500, ( _x select 0 )];
			};
	} foreach HRP_allLicenses;	

	{
			_licenseArray = _x select 1;
			_licenseCompiled = (call compile _licenseArray) select 0;
			if (_licenseCompiled in _licenses) then {
				_index = lbAdd [1500, ( _x select 0 )];
			};
	} foreach HRP_firearmLicenses;	

	if ((count _Trainings) isEqualTo 0) then {
		lbAdd [1501, "No Training"];
	} else {
		{
			_trainingType = _x;

			{
				if (_trainingType isEqualTo (_x select 1) select 0) then {
					lbAdd [1501, (_x select 1) select 0];
				};
			} forEach HRP_trainingTypes;
		} forEach HRP_Trainings;
	};


	if ("Driver_License" in (player getVariable "licenses")) then {
		{
			ctrlShow [_x, true];
		} forEach _driverLicenseIDC;
	};

	_first = _identity select 0;
	_second = _identity select 1;
	_middle = _identity select 2;
	_sex = _identity select 3;
	_dob = _identity select 5;
	_cob = _identity select 6;


	_firstNames = [1001, 1012];
	_secondNames = [1002, 1010];
	_middleNames = [1005, 1011];
	_sexes = [1006, 1007];
	_dobs = [1004, 1009];
	_cobs = [1003, 1008];

	array = [[_firstNames, _first], [_secondNames, _second], [_middleNames, _middle], [_sexes, _sex], [_dobs, _dob], [_cobs, _cob]];

	{
		data = _x select 1;
		{	
			ctrlSetText [_x, data];
		} forEach (_x select 0);
	} forEach array;

};
