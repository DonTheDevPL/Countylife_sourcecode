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
        if (license_civ_mafia) then {
           _markerMafia = createMarkerLocal ["mafia", mafia_marker];
            _markerMafia setMarkerColorLocal "ColorRed";
            _markerMafia setMarkerTypeLocal "mil_box";
            _markerMafia setMarkerTextLocal "Willa mafii";

            //POLA
            /*
            _weed = createMarkerLocal ["weed", weed_field];
            _weed setMarkerColorLocal "ColorBlack";
            _weed setMarkerTypeLocal "Mil_dot";
            _weed setMarkerTextLocal "Pole Marihuany";

            _heroin = createMarkerLocal ["heroin", heroin_field];
            _heroin setMarkerColorLocal "ColorBlack";
            _heroin setMarkerTypeLocal "Mil_dot";
            _heroin setMarkerTextLocal "Pole Heroiny";
            */

            _coke = createMarkerLocal ["coke", coke_field];
            _coke setMarkerColorLocal "ColorBlack";
            _coke setMarkerTypeLocal "Mil_dot";
            _coke setMarkerTextLocal "Pole Kokainy";


            //PRZEROBKI
            /*
            _weedP = createMarkerLocal ["weedP", weed_Process];
            _weedP setMarkerColorLocal "ColorRed";
            _weedP setMarkerTypeLocal "Mil_box";
            _weedP setMarkerTextLocal "Suszarnia Marihuany";
            */

            _heroinP = createMarkerLocal ["heroinP", heroin_Process];
            _heroinP setMarkerColorLocal "ColorRed";
            _heroinP setMarkerTypeLocal "Mil_box";
            _heroinP setMarkerTextLocal "Przeróbka Heroiny";

            _cokeP = createMarkerLocal ["cokeP", coke_process];
            _cokeP setMarkerColorLocal "ColorRed";
            _cokeP setMarkerTypeLocal "Mil_box";
            _cokeP setMarkerTextLocal "Oczyszczanie Kokainy";

            _amfa = createMarkerLocal ["amfa", amfa_process];
            _amfa setMarkerColorLocal "ColorRed";
            _amfa setMarkerTypeLocal "Mil_box";
            _amfa setMarkerTextLocal "Produkcja Amfetaminy";

            _meta = createMarkerLocal ["meta", meta_process];
            _meta setMarkerColorLocal "ColorRed";
            _meta setMarkerTypeLocal "Mil_box";
            _meta setMarkerTextLocal "Produkcja Metaamfetaminy";

            _MDMAP = createMarkerLocal ["MDMAP", MDMA_Process];
            _MDMAP setMarkerColorLocal "ColorRed";
            _MDMAP setMarkerTypeLocal "Mil_box";
            _MDMAP setMarkerTextLocal "Produkcja MDMA";
        };

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
        //deleteMarkerLocal _markerMafia;
        _markers = [];
        _members = []; 
    };
};
