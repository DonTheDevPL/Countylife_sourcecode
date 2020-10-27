//recivbadge
//Author: TheWolek, Kappa
params ["_imie"];
cutRsc ["player_show_badge", "PLAIN", 0 ,true];
waitUntil {!isNull (findDisplay 1310)};
ctrlSetText[1301,_imie];