/*
	Author: Ben Harris
	Description: Opens the Police Database 
*/

HRP_fnc_openPoliceDatabase = {
	createDialog "HRP_PoliceDB_mainScreen";
	
	ctrlSetText [1002, (missionNamespace getVariable "threatLevel")];

	_count = 0;
	_count2 = 0;
	{
		if (_x getVariable "cop" > 0) then {
			_count = _count + 1;
		};
		if (_x getVariable "arrestTime" > 0 ) then {
			_count2 = _count2 + 1
		}
	} forEach allPlayers;

	ctrlSetText [1000, str _count];

	ctrlSetText [1001, str _count2];

	ctrlSetText [1002, (missionNamespace getVariable "threatLevel")];

	ctrlSetText [1003, str (missionNamespace getVariable "wantedFelons")];

	if (player getVariable "cop" < 5) then {
		ctrlShow [123123, false];
	};
};