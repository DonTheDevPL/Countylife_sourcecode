//pawulon
//Author: TheWolek
_type = _this select 0;
switch _type do {
	case 0: { 
		if(life_inv_pawulon < 1) exitWith {hint "You do not have any pawulon";}; 
 
		life_action_inUse = true; 
		player playMove "AinvPknlMstpSnonWnonDnon_medic_1"; 
		uiSleep 1.5; 
		waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"}; 
		life_action_inUse = false; 
		
		hint "you are starting to feel better."; 
		sleep 3; 
		[false,"pawulon",1] call life_fnc_handleInv; 
		"radialBlur" ppEffectEnable true; 
		enableCamShake true; 
		
		"radialBlur" ppEffectAdjust  [random 0.06,random 0.06,0.25,0.25]; 
		"radialBlur" ppEffectCommit 1; 
		addcamShake[random 3, 1, random 3]; 
		
		_chance = round(random 100); 
		player allowDamage false; 
		for [{_x=1},{_x<=10},{_x=_x+1}] do {  
			call SOCK_fnc_tazeRagdoll; 
			sleep 0.1; 
			if(animationState player == "unconscious") exitWith{}; 
		}; 
		player allowDamage true; 
		sleep 20; 
		player allowDamage false; 
		for [{_x=1},{_x<=10},{_x=_x+1}] do {  
			call SOCK_fnc_tazeRagdoll; 
			sleep 0.1; 
			if(animationState player == "unconscious") exitWith{}; 
		}; 
		player allowDamage true;
		if(_chance <= 30) then {player setDamage (_chance / 100);}; 

		"radialBlur" ppEffectAdjust  [0,0,0,0]; 
		"radialBlur" ppEffectCommit 5; 
		"radialBlur" ppEffectEnable false; 
		resetCamShake;		
	};
	case 1: {
		hint "you are starting to feel better."; 
		//sleep 5;  
		"radialBlur" ppEffectEnable true; 
		enableCamShake true; 
		
		"radialBlur" ppEffectAdjust  [random 0.06,random 0.06,0.25,0.25]; 
		"radialBlur" ppEffectCommit 1; 
		addcamShake[random 3, 1, random 3]; 
		
		_chance = round(random 100); 
		player allowDamage false; 
		sleep 0.1;
		for [{_x=1},{_x<=10},{_x=_x+1}] do {  
			call SOCK_fnc_tazeRagdoll; 
			sleep 0.1; 
			if(animationState player == "unconscious") exitWith{}; 
		}; 
		player allowDamage true; 
		sleep 20; 
		player allowDamage false; 
		sleep 0.1;
		for [{_x=1},{_x<=10},{_x=_x+1}] do {  
			call SOCK_fnc_tazeRagdoll; 
			sleep 0.1; 
			if(animationState player == "unconscious") exitWith{}; 
		}; 
		player allowDamage true;
		if(_chance <= 30) then {player setDamage (_chance / 100);};  

		"radialBlur" ppEffectAdjust  [0,0,0,0]; 
		"radialBlur" ppEffectCommit 5; 
		"radialBlur" ppEffectEnable false; 
		resetCamShake;	
	};
};

