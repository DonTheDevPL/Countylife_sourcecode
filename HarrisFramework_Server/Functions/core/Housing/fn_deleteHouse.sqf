/*
	Author: Ben Harris
	Description: Deletes house from SQL Database
*/

params ["_id"];

_insertstr = format ["deleteHouse:%1", _id];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;