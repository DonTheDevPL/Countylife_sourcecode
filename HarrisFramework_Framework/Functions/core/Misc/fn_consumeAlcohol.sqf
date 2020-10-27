/*
	Author: Ben Harris
	Description: Consumes Alcohol
*/

HRP_fnc_consumeAlcohol = {
	params["_value", "_type", "_id"];

	closeDialog 0;


	_bloodToxicity = player getVariable "bloodToxicity";
	if (_type isEqualTo 1) then {
		_bloodToxicity = _bloodToxicity + 1;
	} else {
		_bloodToxicity = _bloodToxicity - 1;
		if (_bloodToxicity < 0) then {
			_bloodToxicity - 0;
		};
	};
	player setVariable ["bloodToxicity", _bloodToxicity, true];

	if !(isNil "HRP_alcoholAffect") then {
		HRP_alcoholAffect ppEffectEnable true;
		HRP_alcoholAffect ppEffectAdjust [_bloodToxicity];
		HRP_alcoholAffect ppEffectCommit 5;
	} else {
		if (_bloodToxicity <= 0) then {
			ppEffectDestroy HRP_alcoholAffect;
		} else {
			0 = ["DynamicBlur", 999, [5]] spawn {
				params ["_name", "_priority", "_effect", "_handle"];
				HRP_alcoholAffect = _this select 3;
				HRP_alcoholAffect = ppEffectCreate [_name, _priority];
				HRP_alcoholAffect ppEffectEnable true;
				HRP_alcoholAffect ppEffectAdjust _effect;
				HRP_alcoholAffect ppEffectCommit 5;
			};
		};
	};

	sleep 1;
	player removeItem _id;
}; 