//ThreatAction
//Author: TheWolek
_curTarget = _this select 0;
_type = _this select 1;

switch (_type) do {
	//bandages
	case 0: { 
		player playMove "AinvPknlMstpSnonWnonDnon_medicUp3";
		[false,"bandages",1] call life_fnc_handleInv;
		sleep 6;
		[1]remoteExecCall["life_fnc_bandages",_curTarget];
	};
	//morphine
	case 1: {
		player playMove "AinvPknlMstpSnonWnonDnon_medicUp1";
		[false,"morphine",1] call life_fnc_handleInv;
		sleep 7;
		[1]remoteExecCall["life_fnc_morphine",_curTarget];
	};
	//pawulon
	case 2: {
		player playMove "AinvPknlMstpSnonWnonDnon_medicUp1";
		[false,"pawulon",1] call life_fnc_handleInv; 
		sleep 8;
		[1]remoteExecCall["life_fnc_prepawulon",_curTarget];
	};
	//medkit
	case 3: {
		player playMove "AinvPknlMstpSnonWnonDnon_medicUp1";
		sleep 5;
		[1]remoteExecCall["life_fnc_medkit",_curTarget];
	};
	default { };
};