scriptName "functions_processSpeed_2";
/*--------------------------------------------------------------------
	Author: Maverick (ofpectag: MAV)
    File: functions_processSpeed_2.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "functions_processSpeed_2.sqf"

_ownsDependency = [life_currentExpPerks, "perk_paycheck_3"] call HRP_fnc_hasPerk;

if (!_ownsDependency) then {
	HRP_var_processMultiplier = 1.15;
};