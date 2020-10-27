/*
	Author: Ben Harris
	Description: Inserts News;

*/

params ["_news"];

_title = _news select 0;
_desc = _news select 1;
_name = _news select 2;
_lspo = _news select 3;

_insertstr = format ["insertNews:%1:%2:%3:%4", _title, _name, _desc, _lspo];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;