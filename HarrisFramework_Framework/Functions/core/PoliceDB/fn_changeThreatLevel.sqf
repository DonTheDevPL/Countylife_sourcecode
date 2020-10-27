/*
	Author: Ben Harris
	Description: Changes threat level
*/

HRP_fnc_changeThreatLevel = {
	params["_level"];

	missionNamespace setVariable ["threatLevel", _level, true];

	ctrlSetText [1000, _level];

	_msg = format ["Threat level changed to %1", _level];
	for "_i" from 1 to 3 do {
		[_msg] remoteExecCall ["HRP_fnc_serverMsg", 0];
	};	
};