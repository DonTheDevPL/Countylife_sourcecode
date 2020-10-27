/*
	Author: Ben Harris
	Description: Stat Save
*/

addMissionEventHandler ["HandleDisconnect",{ [_this select 0, _this select 1, _this select 2, _this select 3, true] call Server_fnc_statSave; deleteVehicle (_this select 0); }];
