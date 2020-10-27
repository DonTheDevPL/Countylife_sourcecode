/*
	Author: Ben Harris
	Description: Initialises the Death Screen
*/

HRP_fnc_RespawnMenu = {
	params["_source"];

	[] spawn HRP_fnc_initDeath;

	if (isNull (findDisplay 5007)) then {
		createDialog "HRP_Death_Screen";
	};
	waituntil {!isNull (findDisplay 5007);};
	(findDisplay 5007) displaySetEventHandler ["KeyDown","if((_this select 1) isEqualTo 1) then {true}"];
	_crtl = (findDisplay 5007) displayCtrl 1718;
	HRP_Dead = true;
	_time = HRP_Time;
	HRP_initDeath = true;
	HRP_Revived = false;
	HRP_allowRespawn = false;
	player setVariable ["unconscious", true, true];
	player allowDamage false;
	ctrlSetText [1718, "Time Remaining: " + str _time];
	if (_source isKindOf "Man") then {
		ctrlSetText [1719, _source getVariable "playerName"];
	} else {
		if (_source isKindOf "Car") then {
			ctrlSetText [1719, "Vehicle"];
		} else {
			ctrlSetText [1719, "Unknown"];
		};
	};	

	death_cam  = "CAMERA" camCreate (getPos player);  
	showCinemaBorder true;                            
	death_cam camSetPos [(getpos player) select 0 , (getpos player) select 1,10];  
	death_cam camSetFOV 0.85;  
	death_cam camSettarget player;
	death_cam camCommit 2;

	ppEffect1 = ppEffectCreate ["colorCorrections", 1500]; 
	ppEffect1 ppEffectEnable true; 
	ppEffect1 ppEffectAdjust [1,1.1,-0.05,[0.4,0.2,0.3,-0.1],[0.5,0.5,0.5,0],[0.5,0.5,0.5,0],[0,0,0,0,0,0,4]]; 
	ppEffect1 ppEffectCommit 0;



	while {true} do
	{
		if (_time > 0) then {
			_time = _time - 1;
			_time2 = [_time,"MM:SS"] call BIS_fnc_secondsToString;
			ctrlSetText [1718, "Time Remaining: " + _time2];
			uiSleep 1;
		};
		if (_time <= 0) exitWith { _time3 = [0,"MM:SS"] call BIS_fnc_secondsToString; ctrlSetText [1718, "Time Remaining: " +  _time3]; HRP_allowRespawn = true; };
		if (HRP_Revived) exitWith { closeDialog 0; ["Revived", "You have been revived", true] spawn HRP_fnc_Notifications; HRP_Revived = false; _time = 0; player setVariable ["unconscious", false, true]; HRP_Dead = false; };
	};

};
