//File: fn_lockvault.sqf
if (side player isEqualTo west && bank animationPhase "d_l_Anim" isEqualTo 1) then {
	hint "Zamykasz sejf.";
	uiSleep 5;
	bank animate ["d_o_Anim",0];
	bank animate ["d_l_Anim",0];
	bank setVariable["hacked", nil, true];
	hint "Sejf zamkniety.";
} else {
	hint "Nie masz kluczy do tego sejfu.";
};