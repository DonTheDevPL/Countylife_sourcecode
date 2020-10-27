params ["_id"];

_checkstr = format ["deleteVehicle:%1", _id];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
