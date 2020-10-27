params["_player"];

_uid = getPlayerUID _player;

_fetchvehiclesstr = format ["garageVehicles:%1", _uid];
_vehicles = [_fetchvehiclesstr, 2] call ExternalS_fnc_ExtDBasync;

_player setVariable ["garageVehicles", _vehicles, true];