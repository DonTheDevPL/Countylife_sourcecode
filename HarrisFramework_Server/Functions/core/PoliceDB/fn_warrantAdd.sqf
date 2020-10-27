/*
	Author: Ben Harris
	Description: Sends Police DB Entries to SQL
*/

params ["_Name", "_Priority", "_Crimes", "_Description", "_submittingOfficer"];

_insertstr = format ["insertWarrant:%1:%2:%3:%4:%5", _Name, _Priority, _Crimes, _Description, _submittingOfficer];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;