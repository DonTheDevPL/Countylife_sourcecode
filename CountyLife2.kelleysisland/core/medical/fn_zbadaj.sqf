//File: fn_zbadaj.sqf
if(!alive cursorTarget) exitWith {};
hint "Badam pacjenta...";
if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteExecCall ["life_fnc_animSync",RCLIENT];
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
};
sleep 4;

_damage = damage player;
_headA = "";
_armsA = "";
_legsA = "";
_chestA = "";

_headS = ["Brak ran","Rany kłóte","Rany cięte","Poważne rany"];
_armsS = ["Brak ran","Rany kłóte","Rany cięte","Złamanie"];
_legsS = ["Brak ran","Rany kłóte","Rany cięte","Złamanie"];
_chestS = ["Brak ran","Rany kłóte","Rany cięte","Poważne rany"];

if(_damage <= 0.4) then {
	_headA = _headS select round random 1;
	_armsA = _armsS select round random 1;
	_legsA = _legsS select round random 1;
	_chestA = _chestS select round random 1;
} else {
	_headA = _headS select round random 2 + 1;
	_armsA = _armsS select round random 2 + 1;
	_legsA = _legsS select round random 2 + 1;
	_chestA = _chestS select round random 2 + 1;
};

hint parseText format["<t size='1.6'>Wynik badania:<br/>Głowa: <t color='#ff0000'>%1</t><br/>Ramiona: <t color='#ff0000'>%2</t><br/>Nogi: <t color='#ff0000'>%3</t><br/>Tors: <t color='#ff0000'>%4</t><br/></t>",_headA, _armsA, _legsA, _chestA];