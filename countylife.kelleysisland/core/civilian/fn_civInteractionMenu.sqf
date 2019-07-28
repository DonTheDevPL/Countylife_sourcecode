#include "..\..\script_macros.hpp"
/*
	File: fn_civInteractionMenu.sqf
	Author: jmuirhead(help from AlaskaVet)
	
	Description:
	Replaces the mass addactions for various cop actions towards another player.
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

private["_display","_curTarget","_seizeRank","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7", "_Btn8", "_Btn9"];

if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
if(!isPlayer _curTarget || player distance _curTarget > 7) exitWith {closeDialog 0;};
	
//if(!isPlayer _curTarget && side _curTarget == civilian) exitWith {closeDialog 0;}; //Bad side check?
//if(player distance _curTarget > 5 ) exitWith {closeDialog 0;}; // Prevents menu accessing from far distances.

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
life_pInact_curTarget = _curTarget;

	//Wiazanie
	_Btn1 ctrlSetText "Zwiaz";
	_Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_tieingAction; closeDialog 0;";
	//Rozwiazac
	_Btn2 ctrlSetText "Rozwiaz";
	_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_untie; closeDialog 0;";
	
	if( (animationState cursorTarget == "Incapacitated" || animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" ) ) then {
		_Btn1 ctrlEnable true;
		_Btn2 ctrlEnable false;	
	} else {
		_Btn1 ctrlEnable false;		
	};


	//worek in
	_Btn3 ctrlSetText "Zaloz worek";
	_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_tieingActionb; closeDialog 0;";

	//worek out
	_Btn4 ctrlSetText "Zdejmij worek";
	_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_untieb; closeDialog 0;";
	if ((_curTarget getVariable ["blindfolded", false])) then {
		_Btn4 ctrlEnable true;
		_Btn3 ctrlEnable false;	
	} else {
		_Btn4 ctrlEnable false;		
	};
	
	
	//do pojazdu
	_Btn5 ctrlSetText localize "STR_pInAct_PutInCar";
	_Btn5 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";
	
	//Escort
	if (player getVariable ["isEscorting",false]) then {
    	_Btn7 ctrlSetText localize "STR_pInAct_StopEscort";
    	_Btn7 buttonSetAction "[] call life_fnc_stopEscorting; closeDialog 0;";
	} else {
   		_Btn6 ctrlSetText localize "STR_pInAct_Escort";
    	_Btn6 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
	};

	//okradnij
	_Btn8 ctrlSetText "Okradnij";
	_Btn8 buttonSetAction "[life_pInact_curTarget] call life_fnc_robAction; closeDialog 0;";
	if (!(_curTarget getVariable["robbed", false]) && (_curTarget getVariable ["tied", false])) then {
		_Btn8 ctrlEnable true;
	} else {
		_Btn8 ctrlEnable false;		
	};

	//Patdown
	_Btn9 ctrlSetText "Patdown";
	_Btn9 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_seizePlayerAction; closeDialog 0;";

	if (( _curTarget getVariable["tied",false] || animationState _curTarget isEqualTo "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon")) then {
		_Btn9 ctrlEnable true;
	}else {
		_Btn9 ctrlEnable false;
	};

	if ((_curTarget getVariable ["tied", false])) then {
		_Btn2 ctrlEnable true;
		_Btn1 ctrlEnable false;
		_Btn3 ctrlEnable true;
		_Btn6 ctrlEnable true;
		_Btn7 ctrlEnable false;
		_Btn5 ctrlEnable true;
	} else {
		_Btn2 ctrlEnable false;	
		_Btn3 ctrlEnable false;
		_Btn6 ctrlEnable false;
		_Btn5 ctrlEnable false;	
	};

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


/*
OFF
//Set Escort Button

	if (player getVariable ["isEscorting",false]) then {
    	_Btn4 ctrlSetText localize "STR_pInAct_StopEscort";
    	_Btn4 buttonSetAction "[] call life_fnc_stopEscorting; closeDialog 0;";
	} else {
    	_Btn4 ctrlSetText localize "STR_pInAct_Escort";
    	_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
	};
	
	//_Btn2 ctrlSetText localize "STR_pInAct_Escort";
	//_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";

	//_Btn3 ctrlSetText localize "STR_pInAct_StopEscort";
	//_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_civInteractionMenu;";
	

	
	if (life_pInact_curTarget getVariable ["restrained",false]) then {
		_Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
		_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";
	}else {
		_Btn1 ctrlSetText localize "STR_pInAct_Restrain";
		_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_restrainAction; closeDialog 0;";
	};
	*/