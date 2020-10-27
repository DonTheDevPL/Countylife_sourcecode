#include "..\..\script_macros.hpp"
/*
	File: fn_playerTags.sqf
	
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.9

500 cutText["","PLAIN"];
if(visibleMap OR {dialog}) exitWith {
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects [player, ["Man"], 6];
_masks = LIFE_SETTINGS(getArray,"clothing_masks");

private _index = -1;
{
    private "_text";
    _idc = _ui displayCtrl (iconID + _forEachIndex);
    if (!(lineIntersects [eyePos player, eyePos _x, player, _x]) && alive _x) then {
        _pos =  [visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5];
        _sPos = worldToScreen _pos;
        _distance = _pos distance player;
        if (!((headgear _x) in _masks || (goggles _x) in _masks || (uniform _x) in _masks)) then {
            if (count _sPos > 1 && {_distance < 15}) then {
                _text = if (alive _x) then { getPlayerUID _x;};
                
                _idc ctrlSetStructuredText parseText _text;
                _idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
                _idc ctrlSetScale scale;
                _idc ctrlSetFade 0;
                _idc ctrlCommit 0;
                _idc ctrlShow true;
            } else {
                _idc ctrlShow false;
            };
        } else {
            _idc ctrlShow false;
        };
    } else {
        _idc ctrlShow false;
    };
    _index = _forEachIndex;
} forEach _units;
(_ui displayCtrl (iconID + _index + 1)) ctrlSetStructuredText parseText "";



/*
{
	private["_text"];
	_pos = [visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5];
	_sPos = worldToScreen _pos;
	_distance = _x distance player;
	//_name = _x getVariable ["realname", name _x];
	_name =  getplayeruid _x;
	_text = "";
	if(count _sPos > 1 && isPlayer _x && _distance < 14 &&  vehicle player isEqualTo player) then {
		if(_x isKindOf "Man") then {
			_text = format["%1",_name];
		};

		_idc = _ui displayCtrl (iconID + _forEachIndex);
		_idc ctrlSetStructuredText parseText _text;
		_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
		_idc ctrlSetScale scale;
		_idc ctrlSetFade 0;
		_idc ctrlCommit 0;
		_idc ctrlShow true;
	};
} foreach allPlayers;
*/