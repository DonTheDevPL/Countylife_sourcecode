/*
	Author: Ben Harris
	Description: Lists Identities
*/

// HRP_Identities = [["Ben", "Harris", "I", "M", "Blue", "26/04/1999", "Jackson County"]]; player setVariable ["Identities", HRP_Identities];
HRP_fnc_listIdentities = {

	createDialog "HRP_immigrationPapersSelect";
	HRP_Identities = player getVariable ["Identities", []];

	(findDisplay 5041) displaySetEventHandler ["KeyDown","if((_this select 1) isEqualTo 1) then {true}"];

	_ctrl = [77777, 77778, 77779, 77780, 77781, 77782,71324,71328,71325,71329,71327,71326,1202];

	if (count HRP_Identities >= 2) then {
		ctrlShow [1601, false];
		ctrlShow [1201, false];
	};

	{
		ctrlShow [_x, false];
	} forEach _ctrl;

	{
		_name = format ["%1 %2. %3", (_x select 0), (_x select 2), (_x select 1)];
		_index = lbAdd [1500, _name];
		lbSetData [1500, _index, str _x];
	} forEach HRP_Identities;
};