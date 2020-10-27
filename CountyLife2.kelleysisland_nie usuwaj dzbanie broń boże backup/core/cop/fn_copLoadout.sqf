/*
    File: fn_copLoadout.sqf
    Author: Bryan "Tonic" Boardwine
    Edited: Itsyuka

    Description:
    Loads the cops out with the default gear.
*/
private ["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "cl_PD_PO1";
player addBackpack "D_EF_BLT_M1B";


/* ITEMS */
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemGPS";
player linkItem "tf_anprc152";
player linkItem "Mattaust_Keys";

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;
