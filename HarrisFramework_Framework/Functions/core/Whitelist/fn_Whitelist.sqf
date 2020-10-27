/*
	Author: Ben Harris
	Description: Whitelists cop while ingame
*/

HRP_fnc_whitelist = {
	
	_level = parseNumber (lbText [ 2100, ( lbCurSel 2100 ) ]);	
	test = _level;

	_arrHandle = HRP_toWhitelist getVariable "copoffdutyToSelect";

	_count = 0;

	_countLevel = player getVariable "identityCount";
	{
		if ((_x select 1) isEqualTo _countLevel) then {
			_arrHandle deleteAt _count;
		};
		_count = _count + 1;
	} forEach _arrHandle;

	_arrHandle pushBack [_level, player getVariable 'identityCount'];

	HRP_toWhitelist setVariable ["copoffdutyToSelect", _arrHandle, true];

	if (HRP_toWhitelist getVariable "cop" > 0) then {
		HRP_toWhitelist setVariable ["cop", _level, true];
	} else {
		HRP_toWhitelist setVariable ["copOffDuty", _level, true];
	};
	
	_uid = getPlayerUID HRP_toWhitelist;
	[_arrHandle, _uid] remoteExecCall ["Server_fnc_copUpdate", 2];
};
