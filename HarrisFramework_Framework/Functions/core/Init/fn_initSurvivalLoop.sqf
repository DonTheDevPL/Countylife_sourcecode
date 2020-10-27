/*
	Author: Ben Harris
	Description: Survival Loop
*/
HRP_fnc_initSurvivalLoop = {
	for "_i" from 0 to 1 step 0 do {
		sleep 240;
		HRP_Hunger = HRP_Hunger + 2;
		HRP_Thirst = HRP_Thirst + 4;
		switch (true) do
		{
			case (HRP_Hunger >= 100): 
			{
				player setDamage (round (damage player) + 0.2);
			};
			case (HRP_Thirst >= 100):
			 {
				player setDamage (round (damage player) + 0.2);
			};
			case ((player getVariable "bloodToxicity") >= 5):
			{
				player setDamage (round (damage player) + 0.3);
				for "_i" from 0 to 5 do {
					[42] spawn HRP_fnc_drunk;
				};
			};
		};

		_bloodToxicity = player getVariable "bloodToxicity";
		_bloodToxicity = _bloodToxicity - 2;
		if (_bloodToxicity < 0 ) then { _bloodToxicity = 0; };
		player setVariable ["bloodToxicity", _bloodToxicity, true];

		if (_bloodToxicity > 0) then {
			0 = ["DynamicBlur", 999, [5]] spawn {
				params ["_name", "_priority", "_effect", "_handle"];
				HRP_alcoholAffect = _this select 3;
				HRP_alcoholAffect = ppEffectCreate [_name, _priority];
				HRP_alcoholAffect ppEffectEnable true;
				HRP_alcoholAffect ppEffectAdjust _effect;
				HRP_alcoholAffect ppEffectCommit 5;
			};
			HRP_alcoholAffect ppEffectEnable true;
			HRP_alcoholAffect ppEffectAdjust _effect;
			HRP_alcoholAffect ppEffectCommit 5;
		} else {
			if !(isNil "HRP_alcoholAffect") then {
				ppEffectDestroy HRP_alcoholAffect;
			};
		};
	};
};