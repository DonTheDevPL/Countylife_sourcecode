/*
	Author: Ben Harris
	Description: Creates a fire
*/

HRP_fnc_createFire = {
	params["_object"];

	_pos = getPos _object;
	_size = (boundingBoxReal _object) select 1;

	_source = "#particlesource" createVehicle _pos;
	_randomSource = selectRandom ["ObjectDestructionFire1Smallx","ObjectDestructionFire2Smallx"];
	_source setParticleClass "ObjectDestructionFire1Smallx";
	_source setParticleCircle [(_size select 1) / 5,[0.1,0.1,0.1]];
	_source setParticleRandom [1.2, [0, 0, 0], [0, 0, 0], 0, 1.2, [0.8, 0, 0, 0.8], 0, 0];
	_source setParticleFire [4,4,4];
	_source attachto [_object,[0,0,0]];


	_smoke = "#particlesource" createVehicle getpos _object;
	_smoke setParticleCircle [0, [0, 0, 0]];
	_smoke setParticleRandom [0, [0.1, 0.1, 0.1], [random 0.5,random 0.5,random 0.5], 0.1, 0.1, [0, 0, 0, 0], 0.1, 0];
	_smoke setParticleParams[["\ca\Data\ParticleEffects\Universal\Universal",16,7,48,1], "", "Billboard", 25, 35, 
	[0,0,0],[0,0,0], 0, 1, 0.96, 1, [10,15,30,45], [[0.1, 0.1, 0.1, 1],[0.1, 0.1, 0.1, 1],[0.9, 0.9, 0.9, 1],[0.1,0.1,0.1,1]], [0.3], 0.2, 0.2,"", "", _object];
	_smoke setDropInterval 0.8;


	_source2 = "#particlesource" createVehicle _pos;
	_source2 setParticleClass "FireSparks";
	_source2 setParticleCircle [(_size select 1) / 5,[0,0,1]];
	_source2 attachto [_object,[0,0,0]];

	_li = "#lightpoint" createVehicle _pos;
	_li lightAttachObject [_object, [0,0,0]];

	_li setLightBrightness 8;
	_li setLightAmbient[1,0.5,0];
	_li setLightColor[1, 0.5, 0];
	_li setLightAttenuation [4,4,4,8];
	_li setLightDayLight true;

	_activeFires = missionNamespace getVariable "fires";
	_toPush = [_object, [_source, _source2, _li, (_size select 1) / 5, _smoke]];
	_activeFires pushBack _toPush;
	missionNamespace setVariable ["fires", _activeFires, true];
	HRP_burnObject = _object;

	[] spawn {
		for "_i" from 0 to 1 step 0 do {
			sleep 60;

			_cancel = true;
			{
				if (_x select 0 == HRP_burnObject) then {
					_cancel = false;
				};
			} forEach (missionNamespace getVariable 'fires');

			if (_cancel) exitWith { _i = 1; };

			[HRP_burnObject] remoteExecCall ["HRP_fnc_fireSpread", 2];
		};
	};
};