//File: fn_vaultOpen.sqf
if (bank animationPhase "d_o_Anim" isEqualTo 0 && bank animationPhase "d_l_Anim" isEqualTo 1) then {
	hint "Otwieram sejf.";
	uiSleep 5;
	bank animate ["d_o_Anim",1];
} else {
	hint "Sejf wyglada na zablokowany/zamkniety..";
};