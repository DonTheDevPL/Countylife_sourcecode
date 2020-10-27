//alkoholUse
//Author: TheWolek
_type = _this select 0;
_promile = player getVariable ["promile",0];
closeDialog 0;
switch _type do {
	//piwo
	case 0: { 
		[false,"beer",1] call life_fnc_handleInv;
		stock = stock + 1;
		hint "Wujek Paweł radi...Preła na wszystko poradzi...";
		sleep 8;
		_toDeal = _promile + 1.25;
		player setVariable["promile",_toDeal,true];		
	};
	//whisky
	case 1: { 
		[false,"whiskey",1] call life_fnc_handleInv;
		stock = stock + 1;
		hint "aa..Zimne nie da sie na raz...";
		sleep 8;
		_toDeal = _promile + 2;
		player setVariable["promile",_toDeal,true];	
	};
	//bimber
	case 2: { 
		[false,"bimber",1] call life_fnc_handleInv;
		stock = stock + 1;
		hint "Kurła... prawie mnie z butów wysadziło";
		sleep 8;
		_toDeal = _promile + 3;
		player setVariable["promile",_toDeal,true];
	};
	//piwo w butli
	case 3: { 
		[false,"beer_b",1] call life_fnc_handleInv;
		stock = stock + 1;
		hint "Wujek Paweł radi...Preła na wszystko poradzi...";
		sleep 8;
		_toDeal = _promile + 0.3;
		player setVariable["promile",_toDeal,true];		
	};
	//whisky w butli
	case 4: { 
		[false,"whiskey_b",1] call life_fnc_handleInv;
		stock = stock + 1;
		hint "aa..Zimne nie da sie na raz...";
		sleep 8;
		_toDeal = _promile + 0.8;
		player setVariable["promile",_toDeal,true];	
	};
	//bimber w butli
	case 5: { 
		[false,"bimber_b",1] call life_fnc_handleInv;
		stock = stock + 1;
		hint "aa..Zimne nie da sie na raz...";
		sleep 8;
		_toDeal = _promile + 1.25;
		player setVariable["promile",_toDeal,true];
	};
};
if(stock >= 3 && _promile >= 2.5) then {
	"radialBlur" ppEffectEnable true;
	for "_i" from 0 to 10 do
	{  
		"radialBlur" ppEffectAdjust  [random 0.06,random 0.06,0.25,0.25];
		"radialBlur" ppEffectCommit 1;
		sleep 1;
		if(_promile >= 2) then {
			//playSound "bonus";
			sleep 5; 
			player allowDamage false; 
			for [{_x=1},{_x<=10},{_x=_x+1}] do {  
				call SOCK_fnc_tazeRagdoll; 
				sleep 0.1; 
				if(animationState player == "unconscious") exitWith{}; 
			}; 
			player allowDamage true; 
			sleep 30; 
		};
	};
	player setVariable ["promile",0,true];
	stock = 0;
	"radialBlur" ppEffectAdjust  [0,0,0,0]; 
	"radialBlur" ppEffectCommit 5; 
	"radialBlur" ppEffectEnable false;
};