/*
	Author: Ben Harris
	Description: Impounds the Car
*/

params ["_class", "_hit", "_caruid"];
	
_uid = _caruid;

_insertstr = format ["insertVehicle:%1:%2:%3", _class, _uid, _hit];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;