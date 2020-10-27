/*
	Author: Ben Harris
	Description: Stops Escort on Player
*/
HRP_fnc_escortStop = {
	{
		detach _x;
		if (!(_x isKindOf 'Man') && !(isNil {HRP_curAttachedMass})) then {
			_x setMass HRP_curAttachedMass;
			HRP_curAttachedMass = nil;
		};
		if (_x isKindOf 'Man') then {
			[] remoteExecCall ["HRP_fnc_unescorted", _x];
		};
	} forEach attachedObjects player;
};