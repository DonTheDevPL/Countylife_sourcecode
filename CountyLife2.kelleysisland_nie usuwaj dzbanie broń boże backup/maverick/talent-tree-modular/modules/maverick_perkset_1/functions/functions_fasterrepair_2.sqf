scriptName "functions_fasterrepair_2";
/*--------------------------------------------------------------------
	Author: DonTheDev
    File: functions_fasterrepair_2.sqf

	Countylife.pl
    Written by DonTheDev
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "functions_fasterrepair_2.sqf"

_ownsDependency = [life_currentExpPerks, "perk_fasterrepair_3"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency) then {
	mav_ttm_var_repairspeedMultiplier = 1.3;
};