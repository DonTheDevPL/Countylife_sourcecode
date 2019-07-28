#include "..\..\script_macros.hpp"
/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various vehicle actions
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn11 37460
#define Btn12 37461
#define Btn13 37462
#define Btn14 37463
#define Btn15 37464
#define Btn16 37465
#define Btn17 37466
#define Btn18 37467
#define Btn19 37468
#define Btn20 37469
#define Btn21 37470
#define Title 37401
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_dlcVehicles"];
if(!dialog) then {
	createDialog "vInteraction_Menu";
};
disableSerialization;

_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn11 = _display displayCtrl Btn11;
_Btn12 = _display displayCtrl Btn12;
_Btn13 = _display displayCtrl Btn13;
_Btn14 = _display displayCtrl Btn14;
_Btn15 = _display displayCtrl Btn15;
_Btn16 = _display displayCtrl Btn16;
_Btn17 = _display displayCtrl Btn17;
_Btn18 = _display displayCtrl Btn18;
_Btn19 = _display displayCtrl Btn19;
_Btn20 = _display displayCtrl Btn20;
_Btn21 = _display displayCtrl Btn21;
life_vInact_curTarget = _curTarget;
_dlcVehicles = ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F","B_Heli_Transport_03_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F","O_Heli_Transport_04_ammo_F","O_Heli_Transport_04_bench_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_medevac_F","O_Heli_Transport_04_repair_F"];

//Set Repair Action
_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_repairTruck; closeDialog 0;";

if ((life_inv_toolkit >= 1) && {alive life_vInact_curTarget} && {([life_vInact_curTarget] call life_fnc_isDamaged)}) then {_Btn1 ctrlEnable true;} else {_Btn1 ctrlEnable false;};

_Btn2 ctrlSetText localize "STR_vInAct_PushBoat";
_Btn2 buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
if (crew _curTarget isEqualTo []) then { _Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};

_Btn3 ctrlSetText localize "STR_vInAct_Unflip";
_Btn3 buttonSetAction "life_vInact_curTarget setPos [getPos life_vInact_curTarget select 0, getPos life_vInact_curTarget select 1, (getPos life_vInact_curTarget select 2)+0.5]; closeDialog 0;";
if (alive _curTarget && {crew _curTarget isEqualTo []} && {canMove _curTarget}) then { _Btn3 ctrlEnable false;} else {_Btn3 ctrlEnable true;};

if (playerSide isEqualTo west) then {

    _Btn4 ctrlSetText localize "STR_vInAct_Registration";
    _Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_searchVehAction; closeDialog 0;";

    _Btn5 ctrlSetText localize "STR_vInAct_SearchVehicle";
    _Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_vehInvSearch; closeDialog 0;";

    _Btn6 ctrlSetText localize "STR_vInAct_PullOut";
    _Btn6 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction; closeDialog 0;";
    if (crew _curTarget isEqualTo []) then {_Btn6 ctrlEnable false;};

    _Btn7 ctrlSetText localize "STR_vInAct_Impound";
    _Btn7 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction; closeDialog 0;";

    //_Btn8 ctrlSetText localize "STR_vInAct_Crush";
    //_Btn8 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_crushAction; closeDialog 0;";
    
    //if ((player distance (getMarkerPos "cop_spawn_1") < 20)) exitWith { _Btn8 ctrlEnable false;};

    _Btn8 ctrlShow false;
    _Btn9 ctrlShow false;
    _Btn10 ctrlShow false;
    _Btn11 ctrlShow false;
    _Btn12 ctrlShow false;
	_Btn13 ctrlShow false;
	_Btn14 ctrlShow false;
	_Btn15 ctrlShow false;
	_Btn16 ctrlShow false;
	_Btn17 ctrlShow false;
	_Btn18 ctrlShow false;
	_Btn19 ctrlShow false;
	_Btn20 ctrlShow false;
	_Btn21 ctrlShow false;
};
if (playerSide isEqualTo independent) then {

    _Btn4 ctrlSetText localize "STR_vInAct_PullOut";
    _Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction; closeDialog 0;";
    if (crew _curTarget isEqualTo []) then {_Btn4 ctrlEnable false;};

    _Btn5 ctrlSetText localize "STR_vInAct_Impound";
    _Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction; closeDialog 0;";

    if(typeOf _curTarget == "brancardch")then{
        _Btn6 ctrlSetText localize "STR_vInAct_stretcher";
        _Btn6 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_packupStretcher; closeDialog 0;";
    }else{
        _btn6 ctrlEnable false;
    };


    _Btn7 ctrlShow false;
    _Btn8 ctrlShow false;
    _Btn9 ctrlShow false;
    _Btn10 ctrlShow false;
    _Btn11 ctrlShow false;
    _Btn12 ctrlShow false;
	_Btn13 ctrlShow false;
	_Btn14 ctrlShow false;
	_Btn15 ctrlShow false;
	_Btn16 ctrlShow false;
	_Btn17 ctrlShow false;
	_Btn18 ctrlShow false;
	_Btn19 ctrlShow false;
	_Btn20 ctrlShow false;
	_Btn21 ctrlShow false;
};
if (playerSide isEqualTo civilian) then {

    _Btn4 ctrlSetText localize "STR_vInAct_PullOut";
    _Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction; closeDialog 0;";
    if (crew _curTarget isEqualTo []) then {_Btn4 ctrlEnable false;};

    if (typeOf _curTarget == "O_Truck_03_device_F") then {
        _Btn5 ctrlSetText localize "STR_vInAct_DeviceMine";
        _Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deviceMine";
        if (!isNil {(_curTarget getVariable "mining")} || !local _curTarget && {_curTarget in life_vehicles}) then {
            _Btn5 ctrlEnable false;
        } else {
            _Btn5 ctrlEnable true;
        };
    } else {
        _Btn5 ctrlShow false;
    };


    _Btn6 ctrlShow false;
    _Btn7 ctrlShow false;
    _Btn8 ctrlShow false;
    _Btn9 ctrlShow false;
    _Btn10 ctrlShow false;
    _Btn11 ctrlShow false;
    _Btn12 ctrlShow false;
	_Btn13 ctrlShow false;
	_Btn14 ctrlShow false;
	_Btn15 ctrlShow false;
	_Btn16 ctrlShow false;
	_Btn17 ctrlShow false;
	_Btn18 ctrlShow false;
	_Btn19 ctrlShow false;
	_Btn20 ctrlShow false;
	_Btn21 ctrlShow false;
};