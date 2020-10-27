/*
	Author: Ben Harris
	Description: Opens the Settings Menu
*/

HRP_fnc_openSettingsMenu = {
	createDialog "HRP_Phone_settingsMenu";

	if (player getVariable "blockedCall") then {
		ctrlShow [16124, true];
		ctrlShow [1611, true];
		ctrlShow [2343, false];
		ctrlShow [1609, false];
	} else {
		ctrlShow [16124, false];
		ctrlShow [1611, false];
		ctrlShow [2343, true];
		ctrlShow [1609, true];
	};

	if (player getVariable "anonymousCalling") then {
		ctrlShow [51412, true];
		ctrlShow [123455, false];
		ctrlShow [1608, false];
		ctrlShow [1610, true]
	} else {
		ctrlShow [51412, false];
		ctrlShow [123455, true];
		ctrlShow [1608, true];
		ctrlShow [1610, false];
	};

	{
		_index = lbAdd [2100, _x select 0];
		lbSetData [2100, _index, _x select 1];

		HRP_noSound = true;
		if (_x select 1 isEqualTo (player getVariable "ringTone")) then {
			lbSetCurSel [2100, _index];
			HRP_noSound = false;
		};
	} forEach HRP_ringtones;
};