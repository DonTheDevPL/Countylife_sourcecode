/*
    File: fn_civMarkers.sqf
    Author:

    Description:
    Add markers for civilians in groups.
*/
private ["_markers","_members"];
_markers = [];
_members = [];

for "_i" from 0 to 1 step 0 do {
    sleep 0.5;
    if (visibleMap) then
    {
        _members = units (group player);
        {
            if !(_x isEqualTo player) then {
                _marker = createMarkerLocal [format ["%1_marker",_x],visiblePosition _x];
                _marker setMarkerColorLocal "ColorCivilian";
                _marker setMarkerTypeLocal "Mil_dot";
                _marker setMarkerTextLocal format ["%1", _x getVariable ["realname",name _x]];
                _markers pushBack [_marker,_x];
            };
        } forEach _members;

        if(license_civ_mafia || license_civ_kartel) then {
            _dealer = createMarkerLocal ["Diler",(getMarkerPos "Dealer_1")];
            _dealer setMarkerColorLocal "ColorRed";
            _dealer setMarkerTypeLocal "mil_box";
            _dealer setMarkerTextLocal "diler Narkotyków";
        };

        if(license_civ_mafia) then {
            _mafia = createMarkerLocal ["mafiaM",(getMarkerPos "mafia")];
            _mafia setMarkerColorLocal "ColorBlack";
            _mafia setMarkerTypeLocal "mil_box";
            _mafia setMarkerTextLocal "Willa Mafii";
        };

        if(license_civ_kartel) then {
            _kartel = createMarkerLocal ["kartelM",(getMarkerPos "kartel")];
            _kartel setMarkerColorLocal "ColorBlack";
            _kartel setMarkerTypeLocal "mil_box";
            _kartel setMarkerTextLocal "Kryjówka kartelu";
        };

        while {visibleMap} do
        {
            {
                private ["_unit"];
                _unit = _x select 1;
                if (!isNil "_unit" && !isNull _unit) then {
                      (_x select 0) setMarkerPosLocal (visiblePosition _unit);
                };
            } forEach _markers;
            if (!visibleMap) exitWith {};
            sleep 0.02;
        };

        {deleteMarkerLocal (_x select 0);} forEach _markers;
        _markers = [];
        _members = [];
    };
};
