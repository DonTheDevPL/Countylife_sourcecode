_fetchhousesstr = format ["fetchHouses"];
_houses = [_fetchhousesstr, 2] call ExternalS_fnc_ExtDBasync;


[_houses] remoteExecCall ["HRP_fnc_LoadHouses", 0, true];