/*
	Author: Ben Harris
	Description: Grows the Weed
*/

HRP_fnc_growWeed = {
	params["_plant", "_ct"];

	_plantStages = 8;

	_stageTime = (HRP_growTime * 60) / _plantStages;
	_pos = (getPosAtl _plant) select 2;
	for "_i" from 0 to _plantStages do {
			detach _plant;
			_pos = _pos + 0.1;
			_plant setPosAtl [(getPosAtl _plant) select 0, (getPosAtl _plant) select 1, _pos + 0.1];
			_plant attachTo [_ct];
			sleep _stageTime;
		};

	_plant setVariable ["grownWeed", true, true];
	_ct setVariable ["weedReady",true,true];
};
