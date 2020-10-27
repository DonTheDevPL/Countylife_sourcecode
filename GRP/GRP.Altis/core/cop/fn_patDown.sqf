//patDown
//Author: TheWolek
_ct = _this select 0;
_type = _this select 1;

if(_type == 1) then {
	hint "Szukam...";
	player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	sleep 5;
	[]remoteExecCall ["life_fnc_pattedDown",_ct];
}else{
	hint "Szukam...";
	player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	sleep 5;
	[]remoteExecCall ["life_fnc_strippedDown",_ct];
};