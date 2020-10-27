/*
	Author: Ben Harris
	Description: Creates an Identity
*/

HRP_fnc_identityCreate = {
	if (HRP_LoadingCreate) exitWith { ["Ładowanie", "Proszę czekać...", true] spawn HRP_fnc_Notifications; };
	HRP_LoadingCreate = true;
	if (HRP_LoadingCreate) then {
		["Ładowanie", "Tworzenie postaci, Proszę czekać...", true] spawn HRP_fnc_Notifications;
	};
	//waitUntil {!(isNil {player getVariable "outStandingPay"})};
	
	HRP_LoadingCreate = false;

	_first = ctrlText 1400;
	_last = ctrlText 1401;
	_middle = ctrlText 1402;

	_sex = ctrlText 2100;

	_DOB1 = ctrlText 1403;
	_DOB2 = ctrlText 1404;
	_DOB3 = ctrlText 1405;

	_DoB = format ["%1/%2/%3", _DOB1, _DOB2, _DOB3];

	_Eyecolour = lbData [2101, ( lbCurSel 2101 )];

	_previousResidency = ctrlText 1406;
	_signature = ctrlText 1410;
	_bool = false;
	if !(_sex isEqualTo"M" || _sex isEqualTo "K") exitWith { HRP_Sex = _sex; ["Error", "Musisz wpisać Mężczyzna (M) lub Kobieta (K)", true] spawn HRP_fnc_Notifications; };
	_fields = [_first, _last, _middle, _sex, _DOB1, _DOB2, _DOB3, _DoB, _Eyecolour, _previousResidency, _signature];
	{
		if (_bool) exitWith {};
		if (_x isEqualTo "") exitWith { ["Error", "Musisz wypełnić formularz", true] spawn HRP_fnc_Notifications; _bool = true;};
	} forEach _fields;
	_fields2 = [_first, _last, _middle];
	{
		if (_bool) exitWith {};
		if (_x find " " != -1) exitWith { ["Error", "Bez spacji w polach 'Imię'", true] spawn HRP_fnc_Notifications; _bool = true; }; 
	} forEach _fields2;	
	_fields3 =  [[_first, 10], [_last, 10], [_middle, 1], [_sex, 1], [_DOB1, 2], [_DOB2, 2], [_DOB3, 4], [_DoB, 10], [_Eyecolour, 6], [_previousResidency, 20], [_signature, ((count _first) + (count _last) + 3)]];
	{
		if (_bool) exitWith {};
		if (count (_x select 0) > (_x select 1)) exitWith { ["Error", "Wpisana wartość jest za długa", true] spawn HRP_fnc_Notifications; _bool = true; };
	} forEach _fields3;

	if !(_bool) then {
		_name = format ["%1 %2", _first, _last];
		player setName _name;

		if (isNil {player getVariable "Identities"}) then {
			player setVariable ["Identities", [], true];
		};
		
		HRP_Identities = player getVariable "Identities";

		_count = count (HRP_Identities) + 1;

		_newIndentity = [_first, _last, _middle, _sex, _Eyecolour, _DoB, _previousResidency, _count];

		HRP_Identities pushBack _newIndentity;
		player setVariable ["Identities", HRP_Identities, true];

		closeDialog 0;
		[] call HRP_fnc_listIdentities;

		[] call HRP_fnc_syncSilent;
	};
	
};	
