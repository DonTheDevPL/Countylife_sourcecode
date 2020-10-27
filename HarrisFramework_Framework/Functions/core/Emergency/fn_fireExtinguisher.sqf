/*
	Author: Ben Harris
	Description: ECH to put fires out
*/

HRP_fnc_fireExtinguisher = {
	_weapon = _this select 1;
	_ct = cursorObject;
	
	if !(_weapon == "A3L_extinguisher") exitWith {};
	if (isNull _ct) exitWith {};	

	if !(_ct isEqualTo HRP_fireToExtinguish) then {
		{		
			if ((_x select 0) isEqualTo  _ct) then {
				HRP_activeFireEffects = _x select 1;
				HRP_fireToExtinguish = _x select 0;
			};
		} forEach (missionNamespace getVariable "fires");
	};

	if (_ct isEqualTo HRP_fireToExtinguish) then {

		HRP_fireLevel = HRP_fireLevel + 1;
		HRP_radiusLevel = 1;

		_effect1 = HRP_activeFireEffects select 0;
		_effect2 = HRP_activeFireEffects select 1;
		_effect3 = HRP_activeFireEffects select 2;
		_effect4 = HRP_activeFireEffects select 4;
		_effectA = [_effect1, _effect2, _effect3, _effect4];

		_sizeEffect = HRP_activeFireEffects select 3;

		if (HRP_fireLevel >= 20) then {
			HRP_fireLevel = 0;

			{
				deleteVehicle _x;
			} forEach _effectA;


			_activeFires = missionNamespace getVariable "fires";
			
			for "_i" from 0 to count _activeFires -1 do {
				if (isNull (_activeFires select _i)) then {
					_activeFires deleteAt _i;
				};
			};

			missionNamespace setVariable ["fires", _activeFires, true];

		} else {
			HRP_radiusLevel = HRP_radiusLevel - 0.05;
			_sizeEffect = _sizeEffect * HRP_radiusLevel;
			
			{
				_x setParticleCircle [_sizeEffect,[0.1,0.1,0.1]];
			} forEach [_effect1, _effect2];
		};
	};
};