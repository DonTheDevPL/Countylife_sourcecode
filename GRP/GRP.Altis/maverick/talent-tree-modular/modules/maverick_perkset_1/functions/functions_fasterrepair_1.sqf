scriptName "functions_fasterrepair_1";
/*--------------------------------------------------------------------
	Author: DonTheDev
    File: functions_fasterrepair_1.sqf

	Countylife.pl
    Written by DonTheDev
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "functions_fasterrepair_1.sqf"

_ownsDependency1 = [life_currentExpPerks, "perk_fasterrepair_2"] call mav_ttm_fnc_hasPerk;
_ownsDependency2 = [life_currentExpPerks, "perk_fasterrepair_3"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency1 && !_ownsDependency2) then {
	mav_ttm_var_repairspeedMultiplier = 1.2;
};

