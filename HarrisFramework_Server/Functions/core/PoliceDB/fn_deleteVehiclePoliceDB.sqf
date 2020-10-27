/*
	Author: Ben Harris
	Description: Deletes Vehicle from Police Vehicle Database
*/

params ["_plate"];

_insertstr = format ["deleteVehiclePoliceDB:%1", _plate];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;