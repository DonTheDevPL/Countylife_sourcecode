#include "..\..\script_macros.hpp"
/*
    File: fn_captureCasino.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Blah blah.
*/
//private _altisArray = ["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"];
//private _tanoaArray = ["Land_School_01_F","Land_Warehouse_03_F","Land_House_Small_02_F"];

//private _hideoutObjs = [[["Altis", _altisArray], ["Tanoa", _tanoaArray]]] call TON_fnc_terrainSort;

_group = kasyno;

if (license_civ_mafia || license_civ_kartel) then {
    if ((_group == "mafia" && license_civ_mafia) || (_group == "kartel" && license_civ_kartel)) exitWith {hint "Juz kontrolujesz kasyno"};
    //if ((kasyno getVariable ["inCapture",false])) exitWith {hint localize "STR_GNOTF_onePersonAtATime";};
    life_action_inUse = true;
    
    disableSerialization;
    "progressBar" cutRsc ["life_progress","PLAIN"];
    _ui = uiNamespace getVariable "life_progress";
    _progress = _ui displayCtrl 38201;
    _pgText = _ui displayCtrl 38202;
    _pgText ctrlSetText format ["Przejmuje (1%1)...","%"];
    _progress progressSetPosition 0.01;
    cP = 0.01;
    life_is_processing = true;
    
    while {true} do { 
        uiSleep  0.28; 
        cP = cP + 0.01; 
        _progress progressSetPosition cP; 
        _pgText ctrlSetText format ["Przejmuje (%1%2)...",round(cP * 100),"%"]; 
        if (cP >= 1) exitWith {};  
    }; 
     
    hint "kasyno przejete";
    if(license_civ_mafia) then {toPush = "mafia";}else{toPush = "kartel";}; 
    "progressBar" cutText ["","PLAIN"]; 
    missionNamespace setVariable["kasyno",toPush,true]; 
    life_is_processing = false; life_action_inUse = false; 
    //[]remoteExecCall ["TON_fnc_casinoUpdate",RSERV]; 
    [[0,1],"STR_GNOTF_CasinoCaptureSuccess",true,[name player]] remoteExecCall ["life_fnc_broadcast",RCLIENT];
}else{ 
    hint "Nie jestes czlonkiem mafi lub kartelu";
};

