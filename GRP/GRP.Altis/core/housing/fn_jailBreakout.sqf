//jailBreakOut
//Author: TheWolek
if(typeOf cursorObject in ["Land_MainSection","Land_Gate_C"]) then {

	life_action_inUse = true;

	player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	sleep 6;
	waitUntil { animationState player != "AinvPknlMstpSnonWnonDnon_medic_1" };
	player playActionNow "stop";
	titleText["Masz 4 sekundy na otwarcie drzwi, albo zamek sie zatrzasnie!", "PLAIN"];

	[[0,1],"STR_NOTF_jailBreakout",true,[]] remoteExecCall ["life_fnc_broadcast",west];
	player setVariable ["coplevel",1,true];
	["jailBrake"] spawn mav_ttm_fnc_addExp;
	sleep 4;
	player setVariable ["coplevel",nil,true];
	life_action_inUse = false; 
} else {
	hint "możesz użyć łomu tylko na więzieniu!";
};
