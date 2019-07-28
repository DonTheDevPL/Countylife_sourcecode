#include "..\..\script_macros.hpp"
/*
    File: fn_p_openMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Opens the players virtual inventory menu
*/
if (!alive player) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;
waitUntil { !isNull findDisplay 2001};

/*
switch (playerSide) do {
    case west: {
    };

    case civilian: {
        ctrlShow[1605,false];
        ctrlShow[4070,false]; //Barierki
    };

    case independent: {
        ctrlShow[1605,false];
        ctrlShow[4070,false]; //Barierki
    };
};

if (FETCH_CONST(life_adminlevel) < 1) then {
    ctrlShow[2021,false];
};
*/

//[] call life_fnc_p_updateMenu;
