/*
	Author: Ben Harris
	Description: Sets Identity
*/
HRP_fnc_identitySelect = {
	[] call HRP_fnc_Configuration;

	_identity = lbData [1500, (lbCurSel 1500)];

	if (_identity isEqualTo "") exitWith { ["Error", "Musisz wybrać postać", true] spawn HRP_fnc_Notifications; };

	_identity = call compile _identity;
	_name = format ["%1 %2", _identity select 0, _identity select 1];

	player setVariable ["playerName", _name, true];

	player setVariable ["identity", _identity, true];

	closeDialog 0;

	_count = _identity select 7;

	player setVariable ["identityCount", _count, true];

	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["copOffDuty", _x select 0, true];
		};
	} forEach (player getVariable "copoffdutyToSelect");

	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["emsOffDuty", _x select 0, true];
		};
	} forEach (player getVariable "emsoffdutyToSelect");

	/*
	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["fdOffDuty", _x select 0, true];
		};
	} forEach (player getVariable "fdoffdutyToSelect");
	*/

	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["arrestTime", _x select 0, true];
		};
	} forEach (player getVariable "arrestTimeToSelect");

	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["arrestNotes", _x select 0, true];
		};
	} forEach (player getVariable "arrestNotesToSelect");

	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["arrestCrimes", _x select 0, true];
		};
	} forEach (player getVariable "arrestCrimesToSelect");

	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["yourNumber", _x select 0, true];
		};
	} forEach (player getVariable "yourNumberToSelect");

	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["contactList", _x select 0, true];
		};
	} forEach (player getVariable "contactListToSelect");

	{
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["reporter", _x select 0, true];
		};
	} forEach (player getVariable "reporterToSelect");

	{
		test = _x;
		if ((_x select 1) isEqualTo _count) then {
			player setVariable ["locker", _x select 0, true];
		};
	} forEach (player getVariable "lockerToSelect");
	{
		if ((_x select 1) isEqualTo _count) then {
			HRP_Items = _x select 0;
		};
	} forEach (player getVariable "itemsToSelect");

	{
		if ((_x select 1) isEqualTo _count) then {
			HRP_Clothes = _x select 0;
		};
	} forEach (player getVariable "clothesToSelect");

	{	
		if ((_x select 1) isEqualTo _count) then {
			HRP_Weapons = _x select 0;
		};
	} forEach (player getVariable "weaponsToSelect");

	if (player getVariable "weaponsToSelect" isEqualTo []) then {
		HRP_Weapons = [];
	};
	if (isNil "HRP_Weapons") then {
		HRP_Weapons = [];
	};
	if (player getVariable "clothesToSelect" isEqualTo []) then {
		HRP_Clothes = [];
	};
	if (player getVariable "itemsToSelect" isEqualTo []) then {
		HRP_Items = [];
	};

	[HRP_Items, HRP_Clothes, HRP_Weapons] call HRP_fnc_loadInventory;

	(findDisplay 46) displayAddEventHandler ["KeyDown","_this call HRP_fnc_keyHandler"];

	player setVariable ["loadedIn", true, true];

	player setVariable ["tf_unable_to_use_radio", false];
	player setVariable ["tf_voiceVolume", 1, true];
};