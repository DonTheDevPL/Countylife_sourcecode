params ["_array", "_bank"];


_insertstr = format ["updateHouseGear:%1:%2", _array, _bank];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;